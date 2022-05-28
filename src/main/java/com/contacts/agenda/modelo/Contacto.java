package com.contacts.agenda.modelo;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

/**
 * Clase para la creacion del contacto con sus respectivos atributos
 * version 1.0
 * since 20/05/22
 *
 * @author Daniela Montano
 */

@Entity
@Table(name = "contact")
public class Contacto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank(message = "Debe ingresar su nombre")
    private String nombre;

    @NotEmpty(message = "Debe ingresar su correo")
    @Email
    private String correo;

    @NotBlank(message = "Debe ingresar su telefono")
    private String telefono;

    @DateTimeFormat(iso = ISO.DATE)
    @Past
    @NotNull(message = "Debe ingresar su fecha de nacimiento")
    private LocalDate fecha_nacimiento;

    private Date deleted_at;

    /**
     * Atributos
     *
     * @param id
     * @param nombre
     * @param correo
     * @param telefono
     * @param fecha_nacimiento
     */

    // constructor
    public Contacto(int id, String nombre, String correo, String telefono, LocalDate fecha_nacimiento) {
        super();
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
        this.telefono = telefono;
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public Contacto() {
        super();
    }

    // getter and setter
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public LocalDate getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(LocalDate fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public Date getDeleted_at() {
        return deleted_at;
    }

    public void setDeleted_at(Date deleted_at) {
        this.deleted_at = deleted_at;
    }
}