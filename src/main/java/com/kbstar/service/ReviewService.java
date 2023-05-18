package com.kbstar.service;

import com.kbstar.dto.Review;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.ReviewMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewService implements KBService<String, Review> {
    /**
     * 등록 및 가입 진행
     * argument : Object
     * return: null
     *
     * @param review
     */
    @Autowired
    ReviewMapper mapper;
    @Override
    public void register(Review review) throws Exception {
        mapper.insert(review);
    }

    @Override
    public void remove(String s) throws Exception {
        mapper.delete(s);
    }

    @Override
    public void modify(Review review) throws Exception {
        mapper.update(review);
    }

    @Override
    public Review get(String s) throws Exception {
        return mapper.select(s);
    }

    @Override
    public List<Review> get() throws Exception {
        return mapper.selectall();
    }
}
