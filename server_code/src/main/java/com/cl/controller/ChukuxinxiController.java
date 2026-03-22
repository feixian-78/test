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

import com.cl.entity.ChukuxinxiEntity;
import com.cl.entity.view.ChukuxinxiView;

import com.cl.service.ChukuxinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 出库信息
 * 后端接口
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
@RestController
@RequestMapping("/chukuxinxi")
public class ChukuxinxiController {
    @Autowired
    private ChukuxinxiService chukuxinxiService;







    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ChukuxinxiEntity chukuxinxi,
                                                                                                                @RequestParam(required = false) Double shuliangstart,
                    @RequestParam(required = false) Double shuliangend,
                                                                                                        HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                                                                                                                                            if(tableName.equals("cangguanyuan")) {
                    chukuxinxi.setCangguanyuanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                        QueryWrapper<ChukuxinxiEntity> ew = new QueryWrapper<ChukuxinxiEntity>();
                                                                                                                                                                    if(shuliangstart!=null) ew.ge("shuliang", shuliangstart);
                    if(shuliangend!=null) ew.le("shuliang", shuliangend);
                                                                                                                                                            
        
        
        PageUtils page = chukuxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chukuxinxi), params), params));
        return R.ok().put("data", page);
    }
    
    
    
    
    
    
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ChukuxinxiEntity chukuxinxi, 
                @RequestParam(required = false) Double shuliangstart,
                @RequestParam(required = false) Double shuliangend,
		HttpServletRequest request){
        QueryWrapper<ChukuxinxiEntity> ew = new QueryWrapper<ChukuxinxiEntity>();
                if(shuliangstart!=null) ew.ge("shuliang", shuliangstart);
                if(shuliangend!=null) ew.le("shuliang", shuliangend);

		PageUtils page = chukuxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chukuxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ChukuxinxiEntity chukuxinxi){
       	QueryWrapper<ChukuxinxiEntity> ew = new QueryWrapper<ChukuxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( chukuxinxi, "chukuxinxi")); 
        return R.ok().put("data", chukuxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ChukuxinxiEntity chukuxinxi){
        QueryWrapper< ChukuxinxiEntity> ew = new QueryWrapper< ChukuxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( chukuxinxi, "chukuxinxi")); 
		ChukuxinxiView chukuxinxiView =  chukuxinxiService.selectView(ew);
		return R.ok("查询出库信息成功").put("data", chukuxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ChukuxinxiEntity chukuxinxi = chukuxinxiService.getById(id);
		chukuxinxi = chukuxinxiService.selectView(new QueryWrapper<ChukuxinxiEntity>().eq("id", id));
        return R.ok().put("data", chukuxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ChukuxinxiEntity chukuxinxi = chukuxinxiService.getById(id);
		chukuxinxi = chukuxinxiService.selectView(new QueryWrapper<ChukuxinxiEntity>().eq("id", id));
        return R.ok().put("data", chukuxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ChukuxinxiEntity chukuxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(chukuxinxi);
        chukuxinxiService.save(chukuxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ChukuxinxiEntity chukuxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(chukuxinxi);
        chukuxinxiService.save(chukuxinxi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ChukuxinxiEntity chukuxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(chukuxinxi);
        chukuxinxiService.updateById(chukuxinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        chukuxinxiService.removeBatchByIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
