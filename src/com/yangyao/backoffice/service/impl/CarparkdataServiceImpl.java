package com.yangyao.backoffice.service.impl;

import com.yangyao.backoffice.mapper.CarparkdataMapper;
import com.yangyao.backoffice.model.Carparkdata;
import com.yangyao.backoffice.service.CarparkdataService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CarparkdataServiceImpl implements CarparkdataService {
    @Autowired
    private CarparkdataMapper carparkdataMapper;

    @Override
    public List<Carparkdata> findAllCarparkdata() {

        return carparkdataMapper.findCarparkdataList();
    }

    @Override
    public Carparkdata findByID(Integer devid) {
        return null;
    }

    @Override
    public int saveOrUpdate(Carparkdata carparkdata) {
        int result=0;
        if (carparkdata.getDevid()==null){
            result=carparkdataMapper.insert(carparkdata);
        }else {
            result=carparkdataMapper.updateByPrimaryKey(carparkdata);
        }
        return result;
    }

    @Override
    public void deleteByID(Integer devid) {

    }
}
