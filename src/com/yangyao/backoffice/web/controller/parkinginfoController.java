package com.yangyao.backoffice.web.controller;

import com.yangyao.backoffice.model.Parkinginfo;
import com.yangyao.backoffice.service.ParkinginfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "parkinginfo")
public class parkinginfoController {
    @Autowired
    private ParkinginfoService parkinginfoService;

    @RequestMapping(value = "list")
    public String list(Model model){
        List<Parkinginfo> list=parkinginfoService.findAllParkinginfo();
        model.addAttribute("list",list);
        return "parkinginfo/list";
    }

    @RequestMapping(value = "delete")
    public String delete(Model model,@RequestParam(value = "carparkId",required =true ) String carparkId){
        int result=parkinginfoService.deleteByCarparkId(Long.parseLong(carparkId));
        return "redirect:list";
    }

    @RequestMapping(value = "toAdd")
    public String toAdd(Model model){
        List<Parkinginfo> list=parkinginfoService.findAllParkinginfo();
        model.addAttribute("list",list);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = sdf.format(new Date());
        model.addAttribute("rectime",date.toString());
        return "parkinginfo/add";
    }

    @RequestMapping(value = "toModify")
    public String toModify(Model model,@RequestParam(value = "carparkId",required =true ) String carparkId){
        Parkinginfo parkinginfo=parkinginfoService.finByCarparkId(carparkId);
        model.addAttribute("data",parkinginfo);
        return "parkinginfo/modify";
    }

    @RequestMapping(value = "addOrModify")
    public String add(Model model,Parkinginfo parkinginfo,String tm) throws Exception {
        parkinginfo.setTime(tm);
        int result=parkinginfoService.saveOrUpdate(parkinginfo);
        return "redirect:list.do";
    }
}
