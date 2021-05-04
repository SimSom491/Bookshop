package com.example.konyvesbolt.dao;

import com.example.konyvesbolt.model.Film;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FilmDAO implements DAO<Film>{
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Film> listaz() {
        List<Film> filmek = jdbcTemplate.query(
                "SELECT * FROM MULTIMEDIA, FILM WHERE MULTIMEDIA.ID = FILM.MULTIMEDIA_ID",
                 (rs, rowNum) -> new Film(
                         rs.getInt("id"),
                         rs.getString("cim"),
                         rs.getInt("ar"),
                         rs.getString("eleresiUt"),
                         rs.getInt("ev"),
                         rs.getInt("hossz")
                 )
        );
        return filmek;
    }

    @Override
    public Film keres(int id) {
        return null;
    }

    @Override
    public void frissit(Film film) {

    }

    @Override
    public void torol(int id) {
        String sql = "DELETE FROM MULTIMEDIA WHERE id=" + id;
        jdbcTemplate.update(sql);
    }

    @Override
    public void beszur(Film film) {
        String multisql = "INSERT INTO MULTIMEDIA(CIM, AR, ELERESIUT) VALUES(?,?,?)";
        jdbcTemplate.update(multisql,
                film.getCim(),
                film.getAr(),
                film.getEleresiUt());

        idkeres();
        film.setId(idkeres());
        System.out.println(idkeres());
        String sql = "INSERT INTO FILM( MULTIMEDIA_ID,EV, HOSSZ) VALUES(?,?,?)";
        jdbcTemplate.update(sql,
                film.getId(),
                film.getEv(),
                film.getHossz());
    }
    private int idkeres(){
        String idkeressql = "SELECT * FROM(SELECT ID FROM MULTIMEDIA ORDER BY ID DESC ) WHERE ROWNUM = 1 ";
        List<Integer> id = jdbcTemplate.query(idkeressql,
                (rs, rowNum) ->
                        rs.getInt("id")
        );
        return id.get(0);
    }


}
