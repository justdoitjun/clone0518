package com.kbstar.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.kbstar.dto.Cart;
import com.kbstar.dto.Item;
import com.kbstar.dto.ItemSearch;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.ItemMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j  //log
@Service
public class ItemService implements KBService<Integer, Item> {
    @Autowired
    ItemMapper mapper;
    @Override
    public void register(Item item) throws Exception {
        mapper.insert(item);
        log.info("Send Mail..."+item.getId());
    }
    @Override
    public void remove(Integer i) throws Exception {
        mapper.delete(i);
    }
    @Override
    public void modify(Item item) throws Exception {
        mapper.update(item);
    }
    @Override
    public Item get(Integer i) throws Exception {
        return mapper.select(i);
    }
    @Override
    public List<Item> get() throws Exception {
        return mapper.selectall();
    }
    public List<Item> search(ItemSearch ms) throws Exception{
        return mapper.search(ms);
    }
    public Page<Item> getPage(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 8); // 3: 한화면에 출력되는 개수
        return mapper.getpage();
    }

    public Page<Item> getPageW(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 6); // 3: 한화면에 출력되는 개수
        return mapper.getpage();
    }

    public List<Item> getMyItem(Integer id) throws Exception {
        return mapper.getmyitem(id);
    }

}