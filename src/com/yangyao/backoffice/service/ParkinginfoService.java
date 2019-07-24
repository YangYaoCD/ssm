package com.yangyao.backoffice.service;

import com.yangyao.backoffice.model.Parkinginfo;

import java.util.List;

public interface ParkinginfoService {
    public List<Parkinginfo> findAllParkinginfo();
    public int saveOrUpdate(Parkinginfo parkinginfo);
    public int deleteByCarparkId(Long carparkId);

    Parkinginfo finByCarparkId(String carparkId);
}
