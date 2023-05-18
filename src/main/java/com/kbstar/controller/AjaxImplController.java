package com.kbstar.controller;

import com.kbstar.dto.Cart;
import com.kbstar.dto.Cust;
import com.kbstar.dto.Item;
import com.kbstar.service.CartService;
import com.kbstar.service.CustService;
import com.kbstar.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Slf4j
public class AjaxImplController {
    @Autowired
    CustService custService;
    @Autowired
    ItemService itemService;
    @Autowired
    CartService cartService;

    @RequestMapping("/checkid")
    public Object checkid(String id) throws Exception {
        int result = 0;
        Cust cust = null;
        cust = custService.get(id);
        if(cust != null){
            result=1;
        }
        return result;
    }
    @RequestMapping("/chart")
    public Object chart() throws Exception{
        List<Item> list = null;
        list = itemService.get();

        JSONObject jo = new JSONObject();

        JSONArray jaId = new JSONArray();
        for(int i = 0 ; i<list.size();i++ ){
            String id = String.valueOf(list.get(i).getId());
            jaId.add(id);
        }
        JSONArray jaPrice = new JSONArray();
        for(int i = 0 ; i<list.size();i++ ){
            int price = list.get(i).getPrice();
            jaPrice.add(price);
        }
        jo.put("id",jaId);
        jo.put("price",jaPrice);
        return jo;
    }

}
