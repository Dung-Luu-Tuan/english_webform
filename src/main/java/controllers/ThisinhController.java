package controllers;

import dao.*;
import models.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.data.repository.query.Param;

import java.lang.String;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class ThisinhController {
    @RequestMapping("/")
    public String newThisinh(Map<String, Object> model) {
        thisinh thisinh = new thisinh();
        model.put("thisinhAdd", thisinh);
        return "/dangkythisinh";
    }

    @RequestMapping(value = "/saveNewThiSinh", method = RequestMethod.POST)
    public String saveNewThisinh(@ModelAttribute("thisinhAdd") thisinh thisinh) {
        thisinhDAO.insert(thisinh);
        thisinh_phongthi thisinh_phongthi = new thisinh_phongthi();
        thisinh thisinh1 = thisinhDAO.listthisinh().get(thisinhDAO.listthisinh().size()-1);
        List<phongthi> phongthiList = phongthiDAO.listphongthi();
        List<thisinh_phongthi> thisinh_phongthiList = new ArrayList<>();

        thisinh_phongthi.setId_thisinh(thisinh1.getId());
        for(phongthi phongthi : phongthiList) {
            if(phongthi.getName().contains(thisinh.getTrinhdo())){
                thisinh_phongthi.setId_phongthi(phongthi.getId());
                thisinh_phongthiList = phongthiDAO.getDetail(phongthi).getThisinh_phongthiList();
                int size = thisinh_phongthiList.size()+1;
                String size2 = size < 10 ? "0" + size : String.valueOf(size);
                thisinh_phongthi.setSbd(thisinh.getTrinhdo() + size2);
                break;
            }
        }
        thisinh_phongthi.setDiemnghe(0);
        thisinh_phongthi.setDiemnoi(0);
        thisinh_phongthi.setDiemdoc(0);
        thisinh_phongthi.setDiemviet(0);
        thisinhphongthiDAO.insert(thisinh_phongthi);
        return "/dangkythisinh";
    }

    @RequestMapping("/timkiem")
    public String listThiSinh(Model model, @Param("name") String name, @Param("sdt") String sdt) {

        List<thisinh_phongthi> data_search = new ArrayList<>();
        List<thisinh> thisinhList = new ArrayList<>();
        if(name == null || sdt == null){
            data_search = null;
        } else {
            thisinhList = thisinhphongthiDAO.get(name, sdt);
            if(thisinhList.size() == 0){
                model.addAttribute("notice", "Không tìm thấy thí sinh này");
            } else {
                for (thisinh t : thisinhList) {
                    data_search = t.getThisinh_phongthiList();
                }
            }
        }
        model.addAttribute("datas", data_search);
        return "/search_data";
    }

    @RequestMapping("/chungchi")
    public String editTour(Model model, @Param("sbd") String sbd) {
        List<thisinh_phongthi> thisinhPhongthi = thisinhphongthiDAO.getBySbd(sbd);
        if(thisinhPhongthi.size() > 0) {
            model.addAttribute("datas", thisinhPhongthi);
        } else {
            model.addAttribute("notice", "Không tìm thấy thí sinh này");
        }
        return "chungnhan";
    }

}
