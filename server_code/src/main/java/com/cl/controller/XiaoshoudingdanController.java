package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.cl.entity.CangguanyuanEntity;
import com.cl.entity.ChukuxinxiEntity;
import com.cl.entity.ShangpinxinxiEntity;
import com.cl.service.*;
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

import com.cl.entity.XiaoshoudingdanEntity;
import com.cl.entity.view.XiaoshoudingdanView;

import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 销售订单
 * 后端接口
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
@RestController
@RequestMapping("/xiaoshoudingdan")
public class XiaoshoudingdanController {
    @Autowired
    private XiaoshoudingdanService xiaoshoudingdanService;


    @Autowired
    private ChukuxinxiService chukuxinxiService;

    @Autowired
    private CangguanyuanService cangguanyuanService;

    @Autowired
    private ShangpinxinxiService shangpinxinxiService;





    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XiaoshoudingdanEntity xiaoshoudingdan,
                                                                                                                            @RequestParam(required = false) Double shuliangstart,
                    @RequestParam(required = false) Double shuliangend,
                                                                                                                                HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                                                                                                                                                                                                    if(tableName.equals("xiaoshourenyuan")) {
                    xiaoshoudingdan.setXiaoshouzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                    QueryWrapper<XiaoshoudingdanEntity> ew = new QueryWrapper<XiaoshoudingdanEntity>();
                                                                                                                                                                                        if(shuliangstart!=null) ew.ge("shuliang", shuliangstart);
                    if(shuliangend!=null) ew.le("shuliang", shuliangend);
                                                                                                                                                                                                    
        
        
        PageUtils page = xiaoshoudingdanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xiaoshoudingdan), params), params));
        return R.ok().put("data", page);
    }
    
    
    
    
    
    
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XiaoshoudingdanEntity xiaoshoudingdan, 
                @RequestParam(required = false) Double shuliangstart,
                @RequestParam(required = false) Double shuliangend,
		HttpServletRequest request){
        QueryWrapper<XiaoshoudingdanEntity> ew = new QueryWrapper<XiaoshoudingdanEntity>();
                if(shuliangstart!=null) ew.ge("shuliang", shuliangstart);
                if(shuliangend!=null) ew.le("shuliang", shuliangend);

		PageUtils page = xiaoshoudingdanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xiaoshoudingdan), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XiaoshoudingdanEntity xiaoshoudingdan){
       	QueryWrapper<XiaoshoudingdanEntity> ew = new QueryWrapper<XiaoshoudingdanEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xiaoshoudingdan, "xiaoshoudingdan")); 
        return R.ok().put("data", xiaoshoudingdanService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XiaoshoudingdanEntity xiaoshoudingdan){
        QueryWrapper< XiaoshoudingdanEntity> ew = new QueryWrapper< XiaoshoudingdanEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xiaoshoudingdan, "xiaoshoudingdan")); 
		XiaoshoudingdanView xiaoshoudingdanView =  xiaoshoudingdanService.selectView(ew);
		return R.ok("查询销售订单成功").put("data", xiaoshoudingdanView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XiaoshoudingdanEntity xiaoshoudingdan = xiaoshoudingdanService.getById(id);
		xiaoshoudingdan = xiaoshoudingdanService.selectView(new QueryWrapper<XiaoshoudingdanEntity>().eq("id", id));
        return R.ok().put("data", xiaoshoudingdan);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XiaoshoudingdanEntity xiaoshoudingdan = xiaoshoudingdanService.getById(id);
		xiaoshoudingdan = xiaoshoudingdanService.selectView(new QueryWrapper<XiaoshoudingdanEntity>().eq("id", id));
        return R.ok().put("data", xiaoshoudingdan);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XiaoshoudingdanEntity xiaoshoudingdan, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(xiaoshoudingdan);
        xiaoshoudingdanService.save(xiaoshoudingdan);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XiaoshoudingdanEntity xiaoshoudingdan, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(xiaoshoudingdan);
        xiaoshoudingdanService.save(xiaoshoudingdan);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody XiaoshoudingdanEntity xiaoshoudingdan, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xiaoshoudingdan);

        // 获取原始记录以检查审核状态变化
        XiaoshoudingdanEntity original = xiaoshoudingdanService.getById(xiaoshoudingdan.getId());

        // 更新记录
        xiaoshoudingdanService.updateById(xiaoshoudingdan);

        // 检查是否是从未审核变为已审核状态
        if(original != null && !"是".equals(original.getSfsh()) && "是".equals(xiaoshoudingdan.getSfsh())) {
            // 检查是否已存在对应的出库记录
            QueryWrapper<ChukuxinxiEntity> wrapper = new QueryWrapper<>();
            wrapper.eq("dingdanbianhao", xiaoshoudingdan.getXiaoshoudingdan());
            int count = (int) chukuxinxiService.count(wrapper);

            if(count > 0) {
                // 已存在出库记录，返回错误消息
                return R.error("该销售订单已出库，不能重复出库");
            }

            // 创建出库记录
            ChukuxinxiEntity chukuxinxi = new ChukuxinxiEntity();
            chukuxinxi.setDingdanbianhao(xiaoshoudingdan.getXiaoshoudingdan());
            chukuxinxi.setShangpinmingcheng(xiaoshoudingdan.getShangpinmingcheng());
            chukuxinxi.setShangpinfenlei(xiaoshoudingdan.getShangpinfenlei());
            chukuxinxi.setGuige(xiaoshoudingdan.getGuige());
            chukuxinxi.setShuliang(xiaoshoudingdan.getShuliang());
            chukuxinxi.setKehumingcheng(xiaoshoudingdan.getKehumingcheng());
            chukuxinxi.setShoujihaoma(xiaoshoudingdan.getShoujihaoma());
            chukuxinxi.setChukuriqi(new Date());

            // 获取仓管员信息
            Long userId = (Long) request.getSession().getAttribute("userId");
            if(userId != null) {
                CangguanyuanEntity cangguanyuan = cangguanyuanService.getById(userId);
                if(cangguanyuan != null) {
                    chukuxinxi.setCangguanyuanzhanghao(cangguanyuan.getCangguanyuanzhanghao());
                    chukuxinxi.setCangguanyuanxingming(cangguanyuan.getCangguanyuanxingming());
                }
            }

            // 保存出库记录
            chukuxinxiService.save(chukuxinxi);

            // 同步更新商品信息中的库存数量（减少库存）
            QueryWrapper<ShangpinxinxiEntity> spWrapper = new QueryWrapper<>();
            spWrapper.eq("shangpinmingcheng", xiaoshoudingdan.getShangpinmingcheng());
            ShangpinxinxiEntity shangpinxinxi = shangpinxinxiService.getOne(spWrapper);

            if(shangpinxinxi != null) {
                // 减少库存数量
                Integer currentKucun = shangpinxinxi.getShuliang() != null ? shangpinxinxi.getShuliang() : 0;
                Integer chukuShuliang = xiaoshoudingdan.getShuliang() != null ? xiaoshoudingdan.getShuliang() : 0;
                // 确保库存不会变成负数
                int newKucun = Math.max(0, currentKucun - chukuShuliang);
                shangpinxinxi.setShuliang(newKucun);

                // 更新商品信息
                shangpinxinxiService.updateById(shangpinxinxi);
            }
        }

        return R.ok();
    }



    /**
     * 审核
     */
    @RequestMapping("/shBatch")
    @Transactional
    public R update(@RequestBody Long[] ids, @RequestParam String sfsh, @RequestParam String shhf){
        List<XiaoshoudingdanEntity> list = new ArrayList<XiaoshoudingdanEntity>();
        for(Long id : ids) {
            XiaoshoudingdanEntity xiaoshoudingdan = xiaoshoudingdanService.getById(id);
            xiaoshoudingdan.setSfsh(sfsh);
            xiaoshoudingdan.setShhf(shhf);
            list.add(xiaoshoudingdan);
        }
        xiaoshoudingdanService.updateBatchById(list);
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xiaoshoudingdanService.removeBatchByIds(Arrays.asList(ids));
        return R.ok();
    }
    
	





    /**
     * （按值统计）
     */
    @RequestMapping("/value/{xColumnName}/{yColumnName}")
    public R value(@PathVariable("yColumnName") String yColumnName, @PathVariable("xColumnName") String xColumnName,HttpServletRequest request) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", MPUtil.camelToSnake(xColumnName));
        params.put("yColumn", MPUtil.camelToSnake(yColumnName));
        QueryWrapper<XiaoshoudingdanEntity> ew = new QueryWrapper<XiaoshoudingdanEntity>();
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xiaoshourenyuan")) {
            ew.eq("xiaoshouzhanghao", (String)request.getSession().getAttribute("username"));
		}
        List<Map<String, Object>> result = MPUtil.snakeListToCamel(xiaoshoudingdanService.selectValue(params, ew));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for(Map<String, Object> m : result) {
            for(String k : m.keySet()) {
                if(m.get(k) instanceof Date) {
                    m.put(k, sdf.format((Date)m.get(k)));
                }
            }
        }
        return R.ok().put("data", result);
    }

    /**
     * （按值统计(多)）
     */
    @RequestMapping("/valueMul/{xColumnName}")
    public R valueMul(@PathVariable("xColumnName") String xColumnName,@RequestParam String yColumnNameMul, HttpServletRequest request) {
        String[] yColumnNames = MPUtil.camelToSnake(yColumnNameMul).split(",");
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", MPUtil.camelToSnake(xColumnName));
        List<List<Map<String, Object>>> result2 = new ArrayList<List<Map<String,Object>>>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        QueryWrapper<XiaoshoudingdanEntity> ew = new QueryWrapper<XiaoshoudingdanEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("xiaoshourenyuan")) {
            ew.eq("xiaoshouzhanghao", (String)request.getSession().getAttribute("username"));
        }
        for(int i=0;i<yColumnNames.length;i++) {
            params.put("yColumn", yColumnNames[i]);
            List<Map<String, Object>> result = MPUtil.snakeListToCamel(xiaoshoudingdanService.selectValue(params, ew));
            for(Map<String, Object> m : result) {
                for(String k : m.keySet()) {
                    if(m.get(k) instanceof Date) {
                        m.put(k, sdf.format((Date)m.get(k)));
                    }
                }
            }
            result2.add(result);
        }
        return R.ok().put("data", result2);
    }

    /**
     * （按值统计）时间统计类型
     */
    @RequestMapping("/value/{xColumnName}/{yColumnName}/{timeStatType}")
    public R valueDay(@PathVariable("yColumnName") String yColumnName, @PathVariable("xColumnName") String xColumnName, @PathVariable("timeStatType") String timeStatType,HttpServletRequest request) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", MPUtil.camelToSnake(xColumnName));
        params.put("yColumn", MPUtil.camelToSnake(yColumnName));
        params.put("timeStatType", timeStatType);
        QueryWrapper<XiaoshoudingdanEntity> ew = new QueryWrapper<XiaoshoudingdanEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("xiaoshourenyuan")) {
            ew.eq("xiaoshouzhanghao", (String)request.getSession().getAttribute("username"));
        }
        List<Map<String, Object>> result = MPUtil.snakeListToCamel(xiaoshoudingdanService.selectTimeStatValue(params, ew));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for(Map<String, Object> m : result) {
            for(String k : m.keySet()) {
                if(m.get(k) instanceof Date) {
                    m.put(k, sdf.format((Date)m.get(k)));
                }
            }
        }
        return R.ok().put("data", result);
    }

    /**
     * （按值统计）时间统计类型(多)
     */
    @RequestMapping("/valueMul/{xColumnName}/{timeStatType}")
    public R valueMulDay(@PathVariable("xColumnName") String xColumnName, @PathVariable("timeStatType") String timeStatType,@RequestParam String yColumnNameMul,HttpServletRequest request) {
        String[] yColumnNames = MPUtil.camelToSnake(yColumnNameMul).split(",");
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", xColumnName);
        params.put("timeStatType", timeStatType);
        List<List<Map<String, Object>>> result2 = new ArrayList<List<Map<String,Object>>>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        QueryWrapper<XiaoshoudingdanEntity> ew = new QueryWrapper<XiaoshoudingdanEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("xiaoshourenyuan")) {
            ew.eq("xiaoshouzhanghao", (String)request.getSession().getAttribute("username"));
        }
        for(int i=0;i<yColumnNames.length;i++) {
            params.put("yColumn", yColumnNames[i]);
            List<Map<String, Object>> result = MPUtil.snakeListToCamel(xiaoshoudingdanService.selectTimeStatValue(params, ew));
            for(Map<String, Object> m : result) {
                for(String k : m.keySet()) {
                    if(m.get(k) instanceof Date) {
                        m.put(k, sdf.format((Date)m.get(k)));
                    }
                }
            }
            result2.add(result);
        }
        return R.ok().put("data", result2);
    }

    /**
     * 分组统计
     */
    @RequestMapping("/group/{columnName}")
    public R group(@PathVariable("columnName") String columnName,HttpServletRequest request) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("column", MPUtil.camelToSnake(columnName));
        QueryWrapper<XiaoshoudingdanEntity> ew = new QueryWrapper<XiaoshoudingdanEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("xiaoshourenyuan")) {
            ew.eq("xiaoshouzhanghao", (String)request.getSession().getAttribute("username"));
        }
        List<Map<String, Object>> result = MPUtil.snakeListToCamel(xiaoshoudingdanService.selectGroup(params, ew));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for(Map<String, Object> m : result) {
            for(String k : m.keySet()) {
                if(m.get(k) instanceof Date) {
                    m.put(k, sdf.format((Date)m.get(k)));
                }
            }
        }
        return R.ok().put("data", result);
    }




    /**
     * 总数量
     */
    @RequestMapping("/count")
    public R count(@RequestParam Map<String, Object> params,XiaoshoudingdanEntity xiaoshoudingdan, HttpServletRequest request){
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("xiaoshourenyuan")) {
            xiaoshoudingdan.setXiaoshouzhanghao((String)request.getSession().getAttribute("username"));
        }
        QueryWrapper<XiaoshoudingdanEntity> ew = new QueryWrapper<XiaoshoudingdanEntity>();
        int count = (int) xiaoshoudingdanService.count(MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xiaoshoudingdan), params), params));
        return R.ok().put("data", count);
    }



}
