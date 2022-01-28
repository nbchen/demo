package com.nbchen.demo_freemark.controller;

import com.nbchen.demo_freemark.entity.User;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @description:
 * @author: nbchen
 * @date: 2022/1/26
 */
@Controller
@Slf4j
public class HelloFreemarker {

    @RequestMapping(value = "/f_001")
    public ModelAndView f_001(ModelAndView mv) {
        log.info("====>>跳转freemarker页面");
        mv.addObject("name", "nbchen");
        mv.setViewName("f_001");
        return mv;
    }

    @RequestMapping(value = "/f_002")
    public ModelAndView f_002(ModelAndView mv) {
        log.info("====>>设置boolean值");
        mv.addObject("isGood", true);
        mv.setViewName("f_002_boolean");
        return mv;
    }

    @RequestMapping(value = "/f_003")
    public ModelAndView f_003(ModelAndView mv) {
        log.info("====>>设置日期类型值");
        mv.addObject("time", new Date());
        mv.setViewName("f_003_date");
        return mv;
    }
    @RequestMapping(value = "/f_004")
    public ModelAndView f_004(ModelAndView mv) {
        log.info("====>>设置数值类型值");
        mv.addObject("age", 10);
        mv.addObject("num", 20);
        mv.addObject("avg", 30.123232);
        mv.setViewName("f_004_int");
        return mv;
    }

    @RequestMapping(value = "/f_005")
    public ModelAndView f_005(ModelAndView mv) {
        log.info("====>>设置字符串类型值");
        mv.addObject("msg1", "hello");
        mv.addObject("msg2", "freemark");
        mv.setViewName("f_005_string");
        return mv;
    }
    @RequestMapping(value = "/f_006")
    public ModelAndView f_006(ModelAndView mv) {
        log.info("====>>设置null类型值");
        mv.setViewName("f_006_null");
        return mv;
    }

    @RequestMapping(value = "/f_007")
    public ModelAndView f_007(ModelAndView mv) {
        log.info("====>>设置数组类型值");
        String[] strings = {"张三", "李四", "王五"};
        mv.addObject("msg", strings);
        List<String> list = new ArrayList<>();
        list.add("赵六");
        list.add("孙琦");
        mv.addObject("msg2", list);
        List<User> userList = new ArrayList<>();
        User user1 = User.builder().id(1).name("美女1").age(18).build();
        User user2 = User.builder().id(2).name("美女3").age(33).build();
        User user3 = User.builder().id(2).name("美女2").age(19).build();
        userList.add(user1);
        userList.add(user2);
        userList.add(user3);
        mv.addObject("msg3", userList);
        Map<String,Object> map = new HashMap<>();
        map.put("item1","a");
        map.put("item2","b");
        map.put("item3","c");
        mv.addObject("msg4", map);
        mv.setViewName("f_007_array_list_obj_map");
        return mv;
    }

    @RequestMapping(value = "/f_008")
    public ModelAndView f_008(ModelAndView mv) {
        log.info("====>>设置常用指令类型值");
        mv.setViewName("f_008_常用指令");
        return mv;
    }

    @RequestMapping(value = "/f_macro")
    public ModelAndView f_macro(ModelAndView mv) {
        log.info("====>>高级用法");
        mv.setViewName("f_macro_base");
        return mv;
    }
}