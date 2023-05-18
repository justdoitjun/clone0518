package com.kbstar.controller;

import com.github.pagehelper.PageInfo;
import com.kbstar.dto.Cart;
import com.kbstar.dto.Item;
import com.kbstar.dto.ItemSearch;
import com.kbstar.dto.Review;
import com.kbstar.service.CartService;
import com.kbstar.service.ItemService;
import com.kbstar.service.ReviewService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Slf4j
@RequestMapping("/item")
public class ItemController {
    @Autowired
    ItemService itemService;
    @Autowired
    CartService cartService;
    @Autowired
    ReviewService reviewService;
    String dir= "item/";

    @RequestMapping("/get")
    public String get(Model model, Integer id) throws Exception {
        Item item = null;
        item = itemService.get(id);
        List<Review> list = null;
        list = reviewService.get();
        model.addAttribute("review",list);
        model.addAttribute("gitem",item);
        model.addAttribute("center",dir+"get");
        return "index";
    }

    @RequestMapping("/check")
    public String check(Model model, Integer id, String cid) throws Exception{
        Item item = null;
        item = itemService.get(id);
//        List<Cart> list = null;
//        list = cartService.getMyCart(cid);
//        model.addAttribute("allcart",list);
        model.addAttribute("check",item);
        model.addAttribute("center", dir+"check");
        return "index";
    }
    @RequestMapping("/checkimpl")
    public String checkimpl(Model model, String cid) throws Exception {
        List<Cart> list = null;
        list = cartService.getMyCart(cid);
        log.info("-----------------------------------------------");
        log.info(cid);
        log.info(list.toString());
        model.addAttribute("allcart",list);
        model.addAttribute("center",dir+"checkCart");
        return "index";
    }

    @RequestMapping("/cart")
    public String cart(Model model, String id) throws Exception{
        List<Cart> list = null;
        list = cartService.getMyCart(id);
        model.addAttribute("allcart",list);
        model.addAttribute("center", dir+"cart");
        return "index";
    }

    @RequestMapping("/addcart")
    public String addcart(Model model, Cart cart) throws Exception {
        cartService.register(cart);
        return "redirect:/item/get?id="+cart.getItem_id();
    }
//        return "redirect:/item/get?id="+cart.getCust_id();


    @RequestMapping("/addcheck")
    public String addcheck(Model model, Cart cart) throws Exception {
        return "redirect:/item/check?id="+cart.getItem_id();
    }


    @RequestMapping("/search")
    public String search(Model model, ItemSearch ms) throws Exception {
        List<Item> list = null;
        list = itemService.search(ms);
        model.addAttribute("ms", ms);
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir+"all");
        return "index";
    }
    @RequestMapping("/men")
    public String allpage(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Item> p;
        try {
            p = new PageInfo<>(itemService.getPage(pageNo), 5); // 5:하단 네비게이션 개수
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0001");
        }
        model.addAttribute("target","item");
        model.addAttribute("allitem",p);
        model.addAttribute("center","men");
        return "index";
    }

    @RequestMapping("/women")
    public String allpagew(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Item> p;
        try {
            p = new PageInfo<>(itemService.getPageW(pageNo), 5); // 5:하단 네비게이션 개수
        } catch (Exception e) {
            throw new Exception("시스템 장애: ER0001");
        }
        model.addAttribute("target","item");
        model.addAttribute("allitem",p);
        model.addAttribute("center","women");
        return "index";
    }
}
