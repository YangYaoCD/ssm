package com.yangyao.backoffice.service.impl;

import com.yangyao.backoffice.mapper.CarparkingdataMapper;
import com.yangyao.backoffice.model.Carparkingdata;
import com.yangyao.backoffice.service.CarparkingdataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CarparkingdataServiceImpl implements CarparkingdataService {
    @Autowired
    private CarparkingdataMapper carparkingdataMapper;
    @Override
    public List<Carparkingdata> findAllCarparkingdata() {
        List<Carparkingdata> result=carparkingdataMapper.findCarparkingdataList();
        return result;
    }

    @Override
    public int saveOrUpdate(Carparkingdata carparkingdata) {
        int result=0;
        String did=carparkingdata.getDevid();
        if (carparkingdataMapper.finDataByDevid(did)==null){
            result=carparkingdataMapper.insert(carparkingdata);
        }else {
            result=carparkingdataMapper.updateByPrimaryKey(carparkingdata);
        }
        return result;
    }

    @Override
    public int deleteByID(Integer devid) {
        int result=0;
        return result=carparkingdataMapper.deleteByDevid(devid);
    }

    @Override
    public Carparkingdata findByDevid(String devid) {
        Carparkingdata result=carparkingdataMapper.finDataByDevid(devid);
        return result;
    }
}
