package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Item;
import com.kbstar.service.CustService;
import com.kbstar.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@Slf4j
public class MainController {

    @Autowired
    CustService custService;
    @Autowired
    ItemService itemService;

    @Autowired
    private BCryptPasswordEncoder encoder;
    @RequestMapping("/")
    public String main(Model model) throws Exception {
        List<Item> list = null;
        try {
            list = itemService.get();
        } catch (Exception e) {
            throw new Exception(e);
        }
        model.addAttribute("allitem",list);
        model.addAttribute("center", "center");
        return "index";
    }

    @RequestMapping("/men")
    public String mens(Model model) throws Exception {
        List<Item> list = null;
        try {
            list = itemService.get();
        } catch (Exception e) {
            throw new Exception(e);
        }
        model.addAttribute("allitem",list);
        model.addAttribute("center", "men");
        return "index";
    }

    @RequestMapping("/women")
    public String womens(Model model) throws Exception {
        List<Item> list = null;
        try {
            list = itemService.get();
        } catch (Exception e) {
            throw new Exception(e);
        }
        model.addAttribute("allitem",list);
        model.addAttribute("center", "women");
        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model){
        model.addAttribute("center", "about");
        return "index";
    }

    @RequestMapping("/contact")
    public String contact(Model model){
        model.addAttribute("center", "contact");
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model){
        model.addAttribute("center", "login");
        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center", "register");
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String id, String pwd, HttpSession session) throws Exception {
        Cust cust = null;
        String nextPage ="loginfail";
        try {
            cust = custService.get(id);
            //&&가 2개면, 앞에꺼 실패하면 뒤에껀 안 함
            if(cust != null && encoder.matches(pwd, cust.getPwd())){
                nextPage ="center";
                //session에 담은것도 jsp파일에서 $ 로 꺼낼 수 있다
                session.setMaxInactiveInterval(100000);
                session.setAttribute("logincust", cust);
            }
        } catch (Exception e) {
            throw new Exception("시스템장애 잠시후 다시 로그인 하세요!");
        }
        List<Item> list = null;
        try {
            list = itemService.get();
        } catch (Exception e) {
            throw new Exception(e);
        }
        model.addAttribute("allitem",list);
        model.addAttribute("center", nextPage);
        return "index";
    }
    @RequestMapping("/registerimpl")
    public String registerimpl(Model model, Cust cust, HttpSession session) throws Exception {
        try {
            cust.setPwd(encoder.encode(cust.getPwd()));
            custService.register(cust);
            session.setAttribute("logincust", cust);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("가입 오류");
        }
        model.addAttribute("rcust", cust);
        model.addAttribute("center", "registerok");
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(Model model, HttpSession session){
        if(session != null){
            session.invalidate();
        }
        return "index";
    }

    @RequestMapping("/ordercom")
    public String ordercom(Model model){
        model.addAttribute("center","ordercom");
        return "index";
    }
}
