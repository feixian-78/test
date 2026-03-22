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

import com.cl.entity.GongyingshangEntity;
import com.cl.entity.view.GongyingshangView;

import com.cl.service.GongyingshangService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 供应商
 * 后端接口
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
@RestController
@RequestMapping("/gongyingshang")
public class GongyingshangController {
    @Autowired
    private GongyingshangService gongyingshangService;







    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,GongyingshangEntity gongyingshang,
                                                                    HttpServletRequest request){
                                    QueryWrapper<GongyingshangEntity> ew = new QueryWrapper<GongyingshangEntity>();
                                                                                                
        
        
        PageUtils page = gongyingshangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, gongyingshang), params), params));
        return R.ok().put("data", page);
    }
    
    
    
    
    
    
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,GongyingshangEntity gongyingshang, 
		HttpServletRequest request){
        QueryWrapper<GongyingshangEntity> ew = new QueryWrapper<GongyingshangEntity>();

		PageUtils page = gongyingshangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, gongyingshang), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( GongyingshangEntity gongyingshang){
       	QueryWrapper<GongyingshangEntity> ew = new QueryWrapper<GongyingshangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( gongyingshang, "gongyingshang")); 
        return R.ok().put("data", gongyingshangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(GongyingshangEntity gongyingshang){
        QueryWrapper< GongyingshangEntity> ew = new QueryWrapper< GongyingshangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( gongyingshang, "gongyingshang")); 
		GongyingshangView gongyingshangView =  gongyingshangService.selectView(ew);
		return R.ok("查询供应商成功").put("data", gongyingshangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        GongyingshangEntity gongyingshang = gongyingshangService.getById(id);
		gongyingshang = gongyingshangService.selectView(new QueryWrapper<GongyingshangEntity>().eq("id", id));
        return R.ok().put("data", gongyingshang);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        GongyingshangEntity gongyingshang = gongyingshangService.getById(id);
		gongyingshang = gongyingshangService.selectView(new QueryWrapper<GongyingshangEntity>().eq("id", id));
        return R.ok().put("data", gongyingshang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody GongyingshangEntity gongyingshang, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(gongyingshang);
        gongyingshangService.save(gongyingshang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody GongyingshangEntity gongyingshang, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(gongyingshang);
        gongyingshangService.save(gongyingshang);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody GongyingshangEntity gongyingshang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(gongyingshang);
        gongyingshangService.updateById(gongyingshang);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        gongyingshangService.removeBatchByIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
