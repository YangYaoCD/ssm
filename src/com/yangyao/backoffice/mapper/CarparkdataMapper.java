package com.yangyao.backoffice.mapper;import com.yangyao.backoffice.model.Carparkdata;import java.util.List;public interface CarparkdataMapper {    List<Carparkdata> findCarparkdataList();    int insert(Carparkdata carparkdata);    int updateByPrimaryKey(Carparkdata carparkdata);}