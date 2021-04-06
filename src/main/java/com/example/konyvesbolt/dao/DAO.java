package com.example.konyvesbolt.dao;

import java.util.List;

public interface DAO<T> {

    List<T> listaz();
    T keres (int id);
    void frissit(T t);
    void torol (int id);
    void beszur(T t);

}
