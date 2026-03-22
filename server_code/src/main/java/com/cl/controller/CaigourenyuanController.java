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

import com.cl.entity.CaigourenyuanEntity;
import com.cl.entity.view.CaigourenyuanView;

import com.cl.service.CaigourenyuanService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 采购人员
 * 后端接口
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
@RestController
@RequestMapping("/caigourenyuan")
public class CaigourenyuanController {
    @Autowired
    private CaigourenyuanService caigourenyuanService;



	@Autowired
	private TokenService tokenService;
	
	/**
	 * 登录
	 */
	@IgnoreAuth
	@RequestMapping(value = "/login")
	public R login(String username, String password, String captcha, HttpServletRequest request) {
		CaigourenyuanEntity u = caigourenyuanService.getOne(new QueryWrapper<CaigourenyuanEntity>().eq("caigouzhanghao", username));
        if(u==null || !u.getMima().equals(EncryptUtil.sha256(password))) {
            return R.error("账号或密码不正确");
        }
        if(!"是".equals(u.getSfsh())) return R.error("账号已锁定，请联系管理员审核。");
		String token = tokenService.generateToken(u.getId(), username,"caigourenyuan",  "采购人员" );
		return R.ok().put("token", token);
	}


	
	/**
     * 注册
     */
	@IgnoreAuth
    @RequestMapping("/register")
    public R register(@RequestBody CaigourenyuanEntity caigourenyuan){
    	//ValidatorUtils.validateEntity(caigourenyuan);
                            CaigourenyuanEntity u = caigourenyuanService.getOne(new QueryWrapper<CaigourenyuanEntity>().eq("caigouzhanghao", caigourenyuan.getCaigouzhanghao()));
                                                                                                		if(u!=null) {
			return R.error("注册用户已存在");
		}
		Long uId = new Date().getTime();
		caigourenyuan.setId(uId);
        caigourenyuan.setMima(EncryptUtil.sha256(caigourenyuan.getMima()));
        caigourenyuanService.save(caigourenyuan);
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
        return R.ok().put("data", caigourenyuanService.selectView(new QueryWrapper<CaigourenyuanEntity>().eq("id", id)));
    }
    
    /**
     * 密码重置
     */
    @IgnoreAuth
	@RequestMapping(value = "/resetPass")
    public R resetPass(String username, HttpServletRequest request){
    	CaigourenyuanEntity u = caigourenyuanService.getOne(new QueryWrapper<CaigourenyuanEntity>().eq("caigouzhanghao", username));
    	if(u==null) {
    		return R.error("账号不存在");
    	}
        u.setMima(EncryptUtil.sha256("123456"));
        caigourenyuanService.updateById(u);
        return R.ok("密码已重置为：123456");
    }




    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,CaigourenyuanEntity caigourenyuan,
                                                                                                                                HttpServletRequest request){
                                    QueryWrapper<CaigourenyuanEntity> ew = new QueryWrapper<CaigourenyuanEntity>();
                                                                                                                                                                                                    
        
        
        PageUtils page = caigourenyuanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, caigourenyuan), params), params));
        return R.ok().put("data", page);
    }
    
    
    
    
    
    
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,CaigourenyuanEntity caigourenyuan, 
		HttpServletRequest request){
        QueryWrapper<CaigourenyuanEntity> ew = new QueryWrapper<CaigourenyuanEntity>();

		PageUtils page = caigourenyuanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, caigourenyuan), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( CaigourenyuanEntity caigourenyuan){
       	QueryWrapper<CaigourenyuanEntity> ew = new QueryWrapper<CaigourenyuanEntity>();
      	ew.allEq(MPUtil.allEQMapPre( caigourenyuan, "caigourenyuan")); 
        return R.ok().put("data", caigourenyuanService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(CaigourenyuanEntity caigourenyuan){
        QueryWrapper< CaigourenyuanEntity> ew = new QueryWrapper< CaigourenyuanEntity>();
 		ew.allEq(MPUtil.allEQMapPre( caigourenyuan, "caigourenyuan")); 
		CaigourenyuanView caigourenyuanView =  caigourenyuanService.selectView(ew);
		return R.ok("查询采购人员成功").put("data", caigourenyuanView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        CaigourenyuanEntity caigourenyuan = caigourenyuanService.getById(id);
		caigourenyuan = caigourenyuanService.selectView(new QueryWrapper<CaigourenyuanEntity>().eq("id", id));
        return R.ok().put("data", caigourenyuan);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        CaigourenyuanEntity caigourenyuan = caigourenyuanService.getById(id);
		caigourenyuan = caigourenyuanService.selectView(new QueryWrapper<CaigourenyuanEntity>().eq("id", id));
        return R.ok().put("data", caigourenyuan);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody CaigourenyuanEntity caigourenyuan, HttpServletRequest request){
        if(caigourenyuanService.count(new QueryWrapper<CaigourenyuanEntity>().eq("caigouzhanghao", caigourenyuan.getCaigouzhanghao()))>0) {
            return R.error("采购账号已存在");
        }
    	caigourenyuan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(caigourenyuan);
        CaigourenyuanEntity u = caigourenyuanService.getOne(new QueryWrapper<CaigourenyuanEntity>().eq("caigouzhanghao", caigourenyuan.getCaigouzhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		caigourenyuan.setId(new Date().getTime());
        caigourenyuan.setMima(EncryptUtil.sha256(caigourenyuan.getMima()));
        caigourenyuanService.save(caigourenyuan);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody CaigourenyuanEntity caigourenyuan, HttpServletRequest request){
        if(caigourenyuanService.count(new QueryWrapper<CaigourenyuanEntity>().eq("caigouzhanghao", caigourenyuan.getCaigouzhanghao()))>0) {
            return R.error("采购账号已存在");
        }
    	caigourenyuan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(caigourenyuan);
        CaigourenyuanEntity u = caigourenyuanService.getOne(new QueryWrapper<CaigourenyuanEntity>().eq("caigouzhanghao", caigourenyuan.getCaigouzhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		caigourenyuan.setId(new Date().getTime());
        caigourenyuan.setMima(EncryptUtil.sha256(caigourenyuan.getMima()));
        caigourenyuanService.save(caigourenyuan);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody CaigourenyuanEntity caigourenyuan, HttpServletRequest request){
        //ValidatorUtils.validateEntity(caigourenyuan);
        CaigourenyuanEntity caigourenyuanEntity = caigourenyuanService.getById(caigourenyuan.getId());
        if(StringUtils.isNotBlank(caigourenyuan.getMima()) && !caigourenyuan.getMima().equals(caigourenyuanEntity.getMima())) {
            caigourenyuan.setMima(EncryptUtil.sha256(caigourenyuan.getMima()));
        }
        caigourenyuanService.updateById(caigourenyuan);//全部更新
        return R.ok();
    }

    /**
     * 审核
     */
    @RequestMapping("/shBatch")
    @Transactional
    public R update(@RequestBody Long[] ids, @RequestParam String sfsh, @RequestParam String shhf){
        List<CaigourenyuanEntity> list = new ArrayList<CaigourenyuanEntity>();
        for(Long id : ids) {
            CaigourenyuanEntity caigourenyuan = caigourenyuanService.getById(id);
            caigourenyuan.setSfsh(sfsh);
            caigourenyuan.setShhf(shhf);
            list.add(caigourenyuan);
        }
        caigourenyuanService.updateBatchById(list);
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        caigourenyuanService.removeBatchByIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
