package com.kbstar.controller;

import com.kbstar.dto.Review;
import com.kbstar.service.ReviewService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Slf4j
public class ReviewController {
    @Autowired
    ReviewService reviewService;
    @RequestMapping("/reviewimpl")
    public String get(Model model, Review review, String id) throws Exception {
        reviewService.register(review);
        List<Review> list = null;
        list = reviewService.get();
        log.info(list.toString());
        model.addAttribute("review",list);
        model.addAttribute("center","item/get");
        return "redirect:/item/get?id="+id;
    }
}
