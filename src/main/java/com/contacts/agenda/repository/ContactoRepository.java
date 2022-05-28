package com.contacts.agenda.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.contacts.agenda.modelo.Contacto;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;


public interface ContactoRepository extends JpaRepository<Contacto, Integer> {
//    @Modifying
//    @Query(
//            value = "UPDATE contacto SET deleted_at = TIMESTAMP() WHERE id = ?1", nativeQuery = true
//    )
//    void deleteByIdSoft(Integer id);
//
//    @Query(
//            value = "SELECT * FROM contacto WHERE id = ?1", nativeQuery = true
//    )
//    Contacto getContactoBy(Integer id);


}