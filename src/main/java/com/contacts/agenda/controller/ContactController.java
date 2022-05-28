package com.contacts.agenda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.contacts.agenda.modelo.Contacto;
import com.contacts.agenda.repository.ContactoRepository;
import com.contacts.agenda.utility.Response;

import java.sql.SQLException;

/**
 * Clase para la creacion del CRUD con spring boot
 * version 1.0
 * since 20/05/22
 *
 * @author Daniela Montano
 */

@Controller
@CrossOrigin(origins = "*")
public class ContactController {

    private Response response = new Response();
    private HttpStatus httpStatus = HttpStatus.OK;


    @Autowired
    private ContactoRepository contactoRepositorio;

    /**
     * Metodo para obtener todos los contactos
     *
     * @return List<Contacto>
     */
    @GetMapping(path = "/api/contacts")
    public ResponseEntity<Response> getAllContacts(
                                                  ) {
        response.restart();

        try {
            response.data = contactoRepositorio.findAll();
            httpStatus = HttpStatus.OK;
        }
        catch (Exception exception) {
            getErrorMessageInternal(exception);
        }
        return new ResponseEntity(response, httpStatus);
    }

    /**
     * Método para crear un contacto
     *
     * @param contacto
     * @return ResponseEntity<Response> Contacto creado
     */
    @PostMapping(path = "/api/contacts/new")
    public ResponseEntity<Response> createContact(@RequestBody Contacto contacto) {
        response.restart();

        try {
            response.data = contactoRepositorio.save(contacto);
            httpStatus = HttpStatus.OK;
        }
        catch (Exception exception) {
            getErrorMessageInternal(exception);
        }
        return new ResponseEntity(response, httpStatus);
    }

    /**
     * Metodo para actualizar un contacto
     *
     * @param contacto
     * @return ResponseEntity<Response> Contacto actualizado
     */
    @PutMapping(path = "/api/contacts/update")
    public ResponseEntity<Response> updateContact(@RequestBody Contacto contacto) {
        response.restart();

        try {
            response.data = contactoRepositorio.save(contacto);
            httpStatus = HttpStatus.OK;
        }
        catch (Exception exception) {
            getErrorMessageInternal(exception);
        }
        return new ResponseEntity(response, httpStatus);
    }

    @PatchMapping(path = "/api/contacts/delete/soft")
    public ResponseEntity<Response> deleteContactSoft(@RequestBody Contacto contacto) {
        response.restart();

        try {
            Contacto c = contactoRepositorio.findById(contacto.getId()).get();

            if(c.equals(contacto)){
                response.data = contactoRepositorio.save(contacto);
            }else {
                c.setDeleted_at(contacto.getDeleted_at());
                contactoRepositorio.save(c);
            }

            httpStatus = HttpStatus.OK;
        }
        catch (DataAccessException exception) {
            getErrorMessageForResponse(exception);
        }
        catch (Exception exception) {
            getErrorMessageInternal(exception);
        }
        return new ResponseEntity(response, httpStatus);
    }

    /**
     * Metodo para eliminar un contacto
     *
     * @param id
     * @return ResponseEntity<Response> Contacto eliminado
     */
    @DeleteMapping(path = "/api/contacts/delete/{id}")
    public ResponseEntity<Response> deleteContact(@PathVariable("id") Integer id) {
        response.restart();

        try {
            contactoRepositorio.deleteById(id);
            httpStatus = HttpStatus.OK;
        }
        catch (Exception exception) {
            getErrorMessageInternal(exception);
        }
        return new ResponseEntity(response, httpStatus);
    }

    private void getErrorMessageInternal(Exception exception) {
        response.error = true;
        response.message = exception.getMessage();
        response.data = exception.getCause();
        httpStatus = HttpStatus.INTERNAL_SERVER_ERROR;
    }

    private void getErrorMessageForResponse(DataAccessException exception) {
        response.error = true;
        if (exception.getRootCause() instanceof SQLException) {
            SQLException sqlEx = (SQLException) exception.getRootCause();
            var sqlErrorCode = sqlEx.getErrorCode();
            switch (sqlErrorCode) {
                case 1062:
                    response.message = "El dato ya está registrado";
                    break;
                case 1452:
                    response.message = "El usuario indicado no existe";
                    break;
                default:
                    response.message = exception.getMessage();
                    response.data = exception.getCause();
            }
            httpStatus = HttpStatus.BAD_REQUEST;
        }
        else {
            response.message = exception.getMessage();
            response.data = exception.getCause();
            httpStatus = HttpStatus.INTERNAL_SERVER_ERROR;
        }
    }
}