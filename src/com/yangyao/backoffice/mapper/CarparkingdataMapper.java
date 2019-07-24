package com.yangyao.backoffice.mapper;

import com.yangyao.backoffice.model.Carparkingdata;

import java.util.List;

public interface CarparkingdataMapper {
    List<Carparkingdata> findCarparkingdataList();

    int insert(Carparkingdata carparkingdata);

    int updateByPrimaryKey(Carparkingdata carparkingdata);

    Carparkingdata finDataByDevid(String devid);

    int deleteByDevid(Integer devid);
}
