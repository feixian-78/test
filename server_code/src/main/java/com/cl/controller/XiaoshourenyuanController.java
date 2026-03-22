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

import com.cl.entity.XiaoshourenyuanEntity;
import com.cl.entity.view.XiaoshourenyuanView;

import com.cl.service.XiaoshourenyuanService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 销售人员
 * 后端接口
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
@RestController
@RequestMapping("/xiaoshourenyuan")
public class XiaoshourenyuanController {
    @Autowired
    private XiaoshourenyuanService xiaoshourenyuanService;



	@Autowired
	private TokenService tokenService;
	
	/**
	 * 登录
	 */
	@IgnoreAuth
	@RequestMapping(value = "/login")
	public R login(String username, String password, String captcha, HttpServletRequest request) {
		XiaoshourenyuanEntity u = xiaoshourenyuanService.getOne(new QueryWrapper<XiaoshourenyuanEntity>().eq("xiaoshouzhanghao", username));
        if(u==null || !u.getMima().equals(EncryptUtil.sha256(password))) {
            return R.error("账号或密码不正确");
        }
        if(!"是".equals(u.getSfsh())) return R.error("账号已锁定，请联系管理员审核。");
		String token = tokenService.generateToken(u.getId(), username,"xiaoshourenyuan",  "销售人员" );
		return R.ok().put("token", token);
	}


	
	/**
     * 注册
     */
	@IgnoreAuth
    @RequestMapping("/register")
    public R register(@RequestBody XiaoshourenyuanEntity xiaoshourenyuan){
    	//ValidatorUtils.validateEntity(xiaoshourenyuan);
                            XiaoshourenyuanEntity u = xiaoshourenyuanService.getOne(new QueryWrapper<XiaoshourenyuanEntity>().eq("xiaoshouzhanghao", xiaoshourenyuan.getXiaoshouzhanghao()));
                                                                                                		if(u!=null) {
			return R.error("注册用户已存在");
		}
		Long uId = new Date().getTime();
		xiaoshourenyuan.setId(uId);
        xiaoshourenyuan.setMima(EncryptUtil.sha256(xiaoshourenyuan.getMima()));
        xiaoshourenyuanService.save(xiaoshourenyuan);
        return R.ok();
    }

	
	/**
	 * 退出
	 */
	@RequestMapping("/logout")
	public R logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return R.ok("退出成功");
	}
	
	/**
     * 获取用户的session用户信息
     */
    @RequestMapping("/session")
    public R getCurrUser(HttpServletRequest request){
    	Long id = (Long)request.getSession().getAttribute("userId");
        return R.ok().put("data", xiaoshourenyuanService.selectView(new QueryWrapper<XiaoshourenyuanEntity>().eq("id", id)));
    }
    
    /**
     * 密码重置
     */
    @IgnoreAuth
	@RequestMapping(value = "/resetPass")
    public R resetPass(String username, HttpServletRequest request){
    	XiaoshourenyuanEntity u = xiaoshourenyuanService.getOne(new QueryWrapper<XiaoshourenyuanEntity>().eq("xiaoshouzhanghao", username));
    	if(u==null) {
    		return R.error("账号不存在");
    	}
        u.setMima(EncryptUtil.sha256("123456"));
        xiaoshourenyuanService.updateById(u);
        return R.ok("密码已重置为：123456");
    }




    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XiaoshourenyuanEntity xiaoshourenyuan,
                                                                                                                                HttpServletRequest request){
                                    QueryWrapper<XiaoshourenyuanEntity> ew = new QueryWrapper<XiaoshourenyuanEntity>();
                                                                                                                                                                                                    
        
        
        PageUtils page = xiaoshourenyuanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xiaoshourenyuan), params), params));
        return R.ok().put("data", page);
    }
    
    
    
    
    
    
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XiaoshourenyuanEntity xiaoshourenyuan, 
		HttpServletRequest request){
        QueryWrapper<XiaoshourenyuanEntity> ew = new QueryWrapper<XiaoshourenyuanEntity>();

		PageUtils page = xiaoshourenyuanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xiaoshourenyuan), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XiaoshourenyuanEntity xiaoshourenyuan){
       	QueryWrapper<XiaoshourenyuanEntity> ew = new QueryWrapper<XiaoshourenyuanEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xiaoshourenyuan, "xiaoshourenyuan")); 
        return R.ok().put("data", xiaoshourenyuanService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XiaoshourenyuanEntity xiaoshourenyuan){
        QueryWrapper< XiaoshourenyuanEntity> ew = new QueryWrapper< XiaoshourenyuanEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xiaoshourenyuan, "xiaoshourenyuan")); 
		XiaoshourenyuanView xiaoshourenyuanView =  xiaoshourenyuanService.selectView(ew);
		return R.ok("查询销售人员成功").put("data", xiaoshourenyuanView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XiaoshourenyuanEntity xiaoshourenyuan = xiaoshourenyuanService.getById(id);
		xiaoshourenyuan = xiaoshourenyuanService.selectView(new QueryWrapper<XiaoshourenyuanEntity>().eq("id", id));
        return R.ok().put("data", xiaoshourenyuan);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XiaoshourenyuanEntity xiaoshourenyuan = xiaoshourenyuanService.getById(id);
		xiaoshourenyuan = xiaoshourenyuanService.selectView(new QueryWrapper<XiaoshourenyuanEntity>().eq("id", id));
        return R.ok().put("data", xiaoshourenyuan);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XiaoshourenyuanEntity xiaoshourenyuan, HttpServletRequest request){
        if(xiaoshourenyuanService.count(new QueryWrapper<XiaoshourenyuanEntity>().eq("xiaoshouzhanghao", xiaoshourenyuan.getXiaoshouzhanghao()))>0) {
            return R.error("销售账号已存在");
        }
    	xiaoshourenyuan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xiaoshourenyuan);
        XiaoshourenyuanEntity u = xiaoshourenyuanService.getOne(new QueryWrapper<XiaoshourenyuanEntity>().eq("xiaoshouzhanghao", xiaoshourenyuan.getXiaoshouzhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		xiaoshourenyuan.setId(new Date().getTime());
        xiaoshourenyuan.setMima(EncryptUtil.sha256(xiaoshourenyuan.getMima()));
        xiaoshourenyuanService.save(xiaoshourenyuan);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XiaoshourenyuanEntity xiaoshourenyuan, HttpServletRequest request){
        if(xiaoshourenyuanService.count(new QueryWrapper<XiaoshourenyuanEntity>().eq("xiaoshouzhanghao", xiaoshourenyuan.getXiaoshouzhanghao()))>0) {
            return R.error("销售账号已存在");
        }
    	xiaoshourenyuan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xiaoshourenyuan);
        XiaoshourenyuanEntity u = xiaoshourenyuanService.getOne(new QueryWrapper<XiaoshourenyuanEntity>().eq("xiaoshouzhanghao", xiaoshourenyuan.getXiaoshouzhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		xiaoshourenyuan.setId(new Date().getTime());
        xiaoshourenyuan.setMima(EncryptUtil.sha256(xiaoshourenyuan.getMima()));
        xiaoshourenyuanService.save(xiaoshourenyuan);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody XiaoshourenyuanEntity xiaoshourenyuan, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xiaoshourenyuan);
        XiaoshourenyuanEntity xiaoshourenyuanEntity = xiaoshourenyuanService.getById(xiaoshourenyuan.getId());
        if(StringUtils.isNotBlank(xiaoshourenyuan.getMima()) && !xiaoshourenyuan.getMima().equals(xiaoshourenyuanEntity.getMima())) {
            xiaoshourenyuan.setMima(EncryptUtil.sha256(xiaoshourenyuan.getMima()));
        }
        xiaoshourenyuanService.updateById(xiaoshourenyuan);//全部更新
        return R.ok();
    }

    /**
     * 审核
     */
    @RequestMapping("/shBatch")
    @Transactional
    public R update(@RequestBody Long[] ids, @RequestParam String sfsh, @RequestParam String shhf){
        List<XiaoshourenyuanEntity> list = new ArrayList<XiaoshourenyuanEntity>();
        for(Long id : ids) {
            XiaoshourenyuanEntity xiaoshourenyuan = xiaoshourenyuanService.getById(id);
            xiaoshourenyuan.setSfsh(sfsh);
            xiaoshourenyuan.setShhf(shhf);
            list.add(xiaoshourenyuan);
        }
        xiaoshourenyuanService.updateBatchById(list);
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xiaoshourenyuanService.removeBatchByIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
