package com.kbstar.item;

import com.kbstar.dto.Item;
import com.kbstar.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@Slf4j
@SpringBootTest
class SelectTest {
    @Autowired
    ItemService service;
    @Test
    void contextLoads() {
        try {
            List<Item> list = service.get();
            log.info(list.toString());

        } catch (Exception e) {
            e.printStackTrace();
            log.info("에러..");
        }
    }

}
