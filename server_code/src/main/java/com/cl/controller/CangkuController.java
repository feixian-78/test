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

import com.cl.entity.CangkuEntity;
import com.cl.entity.view.CangkuView;

import com.cl.service.CangkuService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 仓库
 * 后端接口
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
@RestController
@RequestMapping("/cangku")
public class CangkuController {
    @Autowired
    private CangkuService cangkuService;







    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,CangkuEntity cangku,
                                            HttpServletRequest request){
                                    QueryWrapper<CangkuEntity> ew = new QueryWrapper<CangkuEntity>();
                                                        
        
        
        PageUtils page = cangkuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, cangku), params), params));
        return R.ok().put("data", page);
    }
    
    
    
    
    
    
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,CangkuEntity cangku, 
		HttpServletRequest request){
        QueryWrapper<CangkuEntity> ew = new QueryWrapper<CangkuEntity>();

		PageUtils page = cangkuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, cangku), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( CangkuEntity cangku){
       	QueryWrapper<CangkuEntity> ew = new QueryWrapper<CangkuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( cangku, "cangku")); 
        return R.ok().put("data", cangkuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(CangkuEntity cangku){
        QueryWrapper< CangkuEntity> ew = new QueryWrapper< CangkuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( cangku, "cangku")); 
		CangkuView cangkuView =  cangkuService.selectView(ew);
		return R.ok("查询仓库成功").put("data", cangkuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        CangkuEntity cangku = cangkuService.getById(id);
		cangku = cangkuService.selectView(new QueryWrapper<CangkuEntity>().eq("id", id));
        return R.ok().put("data", cangku);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        CangkuEntity cangku = cangkuService.getById(id);
		cangku = cangkuService.selectView(new QueryWrapper<CangkuEntity>().eq("id", id));
        return R.ok().put("data", cangku);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody CangkuEntity cangku, HttpServletRequest request){
        if(cangkuService.count(new QueryWrapper<CangkuEntity>().eq("cangku", cangku.getCangku()))>0) {
            return R.error("仓库已存在");
        }
    	//ValidatorUtils.validateEntity(cangku);
        cangkuService.save(cangku);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody CangkuEntity cangku, HttpServletRequest request){
        if(cangkuService.count(new QueryWrapper<CangkuEntity>().eq("cangku", cangku.getCangku()))>0) {
            return R.error("仓库已存在");
        }
    	//ValidatorUtils.validateEntity(cangku);
        cangkuService.save(cangku);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody CangkuEntity cangku, HttpServletRequest request){
        //ValidatorUtils.validateEntity(cangku);
        cangkuService.updateById(cangku);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        cangkuService.removeBatchByIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
