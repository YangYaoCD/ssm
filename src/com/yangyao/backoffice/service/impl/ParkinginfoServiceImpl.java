package com.yangyao.backoffice.service.impl;

import com.yangyao.backoffice.mapper.ParkinginfoMapper;
import com.yangyao.backoffice.model.Parkinginfo;
import com.yangyao.backoffice.service.ParkinginfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ParkinginfoServiceImpl implements ParkinginfoService {
    @Autowired
    private ParkinginfoMapper parkinginfoMapper;

    @Override
    public Parkinginfo finByCarparkId(String carparkId) {
        Parkinginfo result=parkinginfoMapper.findByCarparkId(Long.parseLong(carparkId));
        return result;
    }

    @Override
    public List<Parkinginfo> findAllParkinginfo() {
        List<Parkinginfo> result=parkinginfoMapper.findParkinginfoList();
        return result;
    }

    @Override
    public int saveOrUpdate(Parkinginfo parkinginfo) {
        int result=0;
        long carparkId=parkinginfo.getCarparkId();
        Parkinginfo parkinginfo1=parkinginfoMapper.findByCarparkId(carparkId);
        if(parkinginfo1==null){
            result=parkinginfoMapper.insert(parkinginfo);
        }else {
            result=parkinginfoMapper.updateByPrimaryKey(parkinginfo);
        }
        return result;
    }

    @Override
    public int deleteByCarparkId(Long carparkId) {
        int result=0;
        result=parkinginfoMapper.delete(carparkId);
        return result;
    }
}
