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

import com.cl.entity.ShangpinrukuEntity;
import com.cl.entity.view.ShangpinrukuView;

import com.cl.service.ShangpinrukuService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 商品入库
 * 后端接口
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
@RestController
@RequestMapping("/shangpinruku")
public class ShangpinrukuController {
    @Autowired
    private ShangpinrukuService shangpinrukuService;







    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShangpinrukuEntity shangpinruku,
                                                                                                                @RequestParam(required = false) Double shuliangstart,
                    @RequestParam(required = false) Double shuliangend,
                                                                                                        HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                                                                                                                                            if(tableName.equals("cangguanyuan")) {
                    shangpinruku.setCangguanyuanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                        QueryWrapper<ShangpinrukuEntity> ew = new QueryWrapper<ShangpinrukuEntity>();
                                                                                                                                                                    if(shuliangstart!=null) ew.ge("shuliang", shuliangstart);
                    if(shuliangend!=null) ew.le("shuliang", shuliangend);
                                                                                                                                                            
        
        
        PageUtils page = shangpinrukuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shangpinruku), params), params));
        return R.ok().put("data", page);
    }
    
    
    
    
    
    
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShangpinrukuEntity shangpinruku, 
                @RequestParam(required = false) Double shuliangstart,
                @RequestParam(required = false) Double shuliangend,
		HttpServletRequest request){
        QueryWrapper<ShangpinrukuEntity> ew = new QueryWrapper<ShangpinrukuEntity>();
                if(shuliangstart!=null) ew.ge("shuliang", shuliangstart);
                if(shuliangend!=null) ew.le("shuliang", shuliangend);

		PageUtils page = shangpinrukuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shangpinruku), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShangpinrukuEntity shangpinruku){
       	QueryWrapper<ShangpinrukuEntity> ew = new QueryWrapper<ShangpinrukuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shangpinruku, "shangpinruku")); 
        return R.ok().put("data", shangpinrukuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShangpinrukuEntity shangpinruku){
        QueryWrapper< ShangpinrukuEntity> ew = new QueryWrapper< ShangpinrukuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shangpinruku, "shangpinruku")); 
		ShangpinrukuView shangpinrukuView =  shangpinrukuService.selectView(ew);
		return R.ok("查询商品入库成功").put("data", shangpinrukuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShangpinrukuEntity shangpinruku = shangpinrukuService.getById(id);
		shangpinruku = shangpinrukuService.selectView(new QueryWrapper<ShangpinrukuEntity>().eq("id", id));
        return R.ok().put("data", shangpinruku);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShangpinrukuEntity shangpinruku = shangpinrukuService.getById(id);
		shangpinruku = shangpinrukuService.selectView(new QueryWrapper<ShangpinrukuEntity>().eq("id", id));
        return R.ok().put("data", shangpinruku);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShangpinrukuEntity shangpinruku, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(shangpinruku);
        shangpinrukuService.save(shangpinruku);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShangpinrukuEntity shangpinruku, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(shangpinruku);
        shangpinrukuService.save(shangpinruku);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ShangpinrukuEntity shangpinruku, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shangpinruku);
        shangpinrukuService.updateById(shangpinruku);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shangpinrukuService.removeBatchByIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
