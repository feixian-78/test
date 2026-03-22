package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.KehuEntity;
import com.cl.entity.view.KehuView;

import com.cl.service.KehuService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 客户
 * 后端接口
 * @author 
 * @email 
 * @date 2025-02-19 14:42:18
 */
@RestController
@RequestMapping("/kehu")
public class KehuController {
    @Autowired
    private KehuService kehuService;







    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,KehuEntity kehu,
                                                                    HttpServletRequest request){
                                    QueryWrapper<KehuEntity> ew = new QueryWrapper<KehuEntity>();
                                                                                                
        
        
        PageUtils page = kehuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, kehu), params), params));
        return R.ok().put("data", page);
    }
    
    
    
    
    
    
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,KehuEntity kehu, 
		HttpServletRequest request){
        QueryWrapper<KehuEntity> ew = new QueryWrapper<KehuEntity>();

		PageUtils page = kehuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, kehu), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( KehuEntity kehu){
       	QueryWrapper<KehuEntity> ew = new QueryWrapper<KehuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( kehu, "kehu")); 
        return R.ok().put("data", kehuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(KehuEntity kehu){
        QueryWrapper< KehuEntity> ew = new QueryWrapper< KehuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( kehu, "kehu")); 
		KehuView kehuView =  kehuService.selectView(ew);
		return R.ok("查询客户成功").put("data", kehuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        KehuEntity kehu = kehuService.getById(id);
		kehu = kehuService.selectView(new QueryWrapper<KehuEntity>().eq("id", id));
        return R.ok().put("data", kehu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        KehuEntity kehu = kehuService.getById(id);
		kehu = kehuService.selectView(new QueryWrapper<KehuEntity>().eq("id", id));
        return R.ok().put("data", kehu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody KehuEntity kehu, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(kehu);
        kehuService.save(kehu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody KehuEntity kehu, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(kehu);
        kehuService.save(kehu);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody KehuEntity kehu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(kehu);
        kehuService.updateById(kehu);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        kehuService.removeBatchByIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
