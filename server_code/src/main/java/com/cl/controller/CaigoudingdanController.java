package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.cl.entity.CangguanyuanEntity;
import com.cl.entity.ShangpinrukuEntity;
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

import com.cl.entity.CaigoudingdanEntity;
import com.cl.entity.view.CaigoudingdanView;

import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 采购订单
 * 后端接口
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
@RestController
@RequestMapping("/caigoudingdan")
public class CaigoudingdanController {
    @Autowired
    private CaigoudingdanService caigoudingdanService;

    @Autowired
    private ShangpinrukuService shangpinrukuService;

    @Autowired
    private CangguanyuanService cangguanyuanService;

    @Autowired
    private ShangpinxinxiService shangpinxinxiService;





    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,CaigoudingdanEntity caigoudingdan,
                                                                                                                @RequestParam(required = false) Double caigoushuliangstart,
                    @RequestParam(required = false) Double caigoushuliangend,
                                                                                                                                            HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                                                                                                                                                                                                    if(tableName.equals("caigourenyuan")) {
                    caigoudingdan.setCaigouzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                    QueryWrapper<CaigoudingdanEntity> ew = new QueryWrapper<CaigoudingdanEntity>();
                                                                                                                                                                    if(caigoushuliangstart!=null) ew.ge("caigoushuliang", caigoushuliangstart);
                    if(caigoushuliangend!=null) ew.le("caigoushuliang", caigoushuliangend);



        PageUtils page = caigoudingdanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, caigoudingdan), params), params));
        return R.ok().put("data", page);
    }
    
    
    
    
    
    
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,CaigoudingdanEntity caigoudingdan, 
                @RequestParam(required = false) Double caigoushuliangstart,
                @RequestParam(required = false) Double caigoushuliangend,
		HttpServletRequest request){
        QueryWrapper<CaigoudingdanEntity> ew = new QueryWrapper<CaigoudingdanEntity>();
                if(caigoushuliangstart!=null) ew.ge("caigoushuliang", caigoushuliangstart);
                if(caigoushuliangend!=null) ew.le("caigoushuliang", caigoushuliangend);

		PageUtils page = caigoudingdanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, caigoudingdan), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( CaigoudingdanEntity caigoudingdan){
       	QueryWrapper<CaigoudingdanEntity> ew = new QueryWrapper<CaigoudingdanEntity>();
      	ew.allEq(MPUtil.allEQMapPre( caigoudingdan, "caigoudingdan")); 
        return R.ok().put("data", caigoudingdanService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(CaigoudingdanEntity caigoudingdan){
        QueryWrapper< CaigoudingdanEntity> ew = new QueryWrapper< CaigoudingdanEntity>();
 		ew.allEq(MPUtil.allEQMapPre( caigoudingdan, "caigoudingdan")); 
		CaigoudingdanView caigoudingdanView =  caigoudingdanService.selectView(ew);
		return R.ok("查询采购订单成功").put("data", caigoudingdanView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        CaigoudingdanEntity caigoudingdan = caigoudingdanService.getById(id);
		caigoudingdan = caigoudingdanService.selectView(new QueryWrapper<CaigoudingdanEntity>().eq("id", id));
        return R.ok().put("data", caigoudingdan);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        CaigoudingdanEntity caigoudingdan = caigoudingdanService.getById(id);
		caigoudingdan = caigoudingdanService.selectView(new QueryWrapper<CaigoudingdanEntity>().eq("id", id));
        return R.ok().put("data", caigoudingdan);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody CaigoudingdanEntity caigoudingdan, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(caigoudingdan);
        caigoudingdanService.save(caigoudingdan);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody CaigoudingdanEntity caigoudingdan, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(caigoudingdan);
        caigoudingdanService.save(caigoudingdan);
        return R.ok();
    }



    /**
     * 修改
     */

    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody CaigoudingdanEntity caigoudingdan, HttpServletRequest request){
        //ValidatorUtils.validateEntity(caigoudingdan);

        // 获取原始记录以检查审核状态变化
        CaigoudingdanEntity original = caigoudingdanService.getById(caigoudingdan.getId());

        // 更新记录
        caigoudingdanService.updateById(caigoudingdan);

        // 检查是否是从未审核变为已审核状态
        if(original != null && !"是".equals(original.getSfsh()) && "是".equals(caigoudingdan.getSfsh())) {
            // 检查是否已存在对应的入库记录
            QueryWrapper<ShangpinrukuEntity> wrapper = new QueryWrapper<>();
            wrapper.eq("dingdanbianhao", caigoudingdan.getCaigoubianhao());
            int count = (int) shangpinrukuService.count(wrapper);

            if(count > 0) {
                // 已存在入库记录，返回错误消息
                return R.error("该采购订单已入库，不能重复入库");
            }

            // 创建入库记录
            ShangpinrukuEntity shangpinruku = new ShangpinrukuEntity();
            shangpinruku.setDingdanbianhao(caigoudingdan.getCaigoubianhao());
            shangpinruku.setShangpinmingcheng(caigoudingdan.getShangpinmingcheng());
            shangpinruku.setShangpinfenlei(caigoudingdan.getShangpinfenlei());
            shangpinruku.setGuige(caigoudingdan.getGuige());
            shangpinruku.setShuliang(caigoudingdan.getCaigoushuliang());
            shangpinruku.setGongyingshangmingcheng(caigoudingdan.getGongyingshangmingcheng());
            shangpinruku.setShoujihaoma(caigoudingdan.getShoujihaoma());
            shangpinruku.setRukuriqi(new Date());

            // 获取仓管员信息
            Long userId = (Long) request.getSession().getAttribute("userId");
            if(userId != null) {
                CangguanyuanEntity cangguanyuan = cangguanyuanService.getById(userId);
                if(cangguanyuan != null) {
                    shangpinruku.setCangguanyuanzhanghao(cangguanyuan.getCangguanyuanzhanghao());
                    shangpinruku.setCangguanyuanxingming(cangguanyuan.getCangguanyuanxingming());
                }
            }

            // 保存入库记录
            shangpinrukuService.save(shangpinruku);

            // 同步更新商品信息中的库存数量
            QueryWrapper<ShangpinxinxiEntity> spWrapper = new QueryWrapper<>();
            spWrapper.eq("shangpinmingcheng", caigoudingdan.getShangpinmingcheng());
            ShangpinxinxiEntity shangpinxinxi = shangpinxinxiService.getOne(spWrapper);

            if(shangpinxinxi != null) {
                // 累加库存数量
                Integer currentKucun = shangpinxinxi.getShuliang() != null ? shangpinxinxi.getShuliang() : 0;
                Integer rukuShuliang = caigoudingdan.getCaigoushuliang() != null ? caigoudingdan.getCaigoushuliang() : 0;
                shangpinxinxi.setShuliang(currentKucun + rukuShuliang);

                // 更新商品信息
                shangpinxinxiService.updateById(shangpinxinxi);
            }
        }

        return R.ok();
    }




    /**
     * 审核
     */
    /**
     * 审核
     */
    @RequestMapping("/shBatch")
    @Transactional
    public R update(@RequestBody Long[] ids, @RequestParam String sfsh, @RequestParam String shhf,
                    HttpServletRequest request){
        List<CaigoudingdanEntity> list = new ArrayList<CaigoudingdanEntity>();
        for(Long id : ids) {
            CaigoudingdanEntity caigoudingdan = caigoudingdanService.getById(id);
            caigoudingdan.setSfsh(sfsh);
            caigoudingdan.setShhf(shhf);
            list.add(caigoudingdan);

            // 如果审核通过，则自动创建入库记录
            if("是".equals(sfsh)) {
                System.out.println(13);
                // 创建入库记录
                ShangpinrukuEntity shangpinruku = new ShangpinrukuEntity();
                shangpinruku.setDingdanbianhao(caigoudingdan.getCaigoubianhao());
                shangpinruku.setShangpinmingcheng(caigoudingdan.getShangpinmingcheng());
                shangpinruku.setShangpinfenlei(caigoudingdan.getShangpinfenlei());
                shangpinruku.setGuige(caigoudingdan.getGuige());
                shangpinruku.setShuliang(caigoudingdan.getCaigoushuliang());
                shangpinruku.setGongyingshangmingcheng(caigoudingdan.getGongyingshangmingcheng());
                shangpinruku.setShoujihaoma(caigoudingdan.getShoujihaoma());
                shangpinruku.setRukuriqi(new Date());

                // 获取仓管员信息
                Long userId = (Long) request.getSession().getAttribute("userId");
                if(userId != null) {
                    CangguanyuanEntity cangguanyuan = cangguanyuanService.getById(userId);
                    if(cangguanyuan != null) {
                        shangpinruku.setCangguanyuanzhanghao(cangguanyuan.getCangguanyuanzhanghao());
                        shangpinruku.setCangguanyuanxingming(cangguanyuan.getCangguanyuanxingming());
                    }
                }

                // 保存入库记录
                shangpinrukuService.save(shangpinruku);
            }
        }
        caigoudingdanService.updateBatchById(list);
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        caigoudingdanService.removeBatchByIds(Arrays.asList(ids));
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
        QueryWrapper<CaigoudingdanEntity> ew = new QueryWrapper<CaigoudingdanEntity>();
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("caigourenyuan")) {
            ew.eq("caigouzhanghao", (String)request.getSession().getAttribute("username"));
		}
        List<Map<String, Object>> result = MPUtil.snakeListToCamel(caigoudingdanService.selectValue(params, ew));
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
        QueryWrapper<CaigoudingdanEntity> ew = new QueryWrapper<CaigoudingdanEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("caigourenyuan")) {
            ew.eq("caigouzhanghao", (String)request.getSession().getAttribute("username"));
        }
        for(int i=0;i<yColumnNames.length;i++) {
            params.put("yColumn", yColumnNames[i]);
            List<Map<String, Object>> result = MPUtil.snakeListToCamel(caigoudingdanService.selectValue(params, ew));
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
        QueryWrapper<CaigoudingdanEntity> ew = new QueryWrapper<CaigoudingdanEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("caigourenyuan")) {
            ew.eq("caigouzhanghao", (String)request.getSession().getAttribute("username"));
        }
        List<Map<String, Object>> result = MPUtil.snakeListToCamel(caigoudingdanService.selectTimeStatValue(params, ew));
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
        QueryWrapper<CaigoudingdanEntity> ew = new QueryWrapper<CaigoudingdanEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("caigourenyuan")) {
            ew.eq("caigouzhanghao", (String)request.getSession().getAttribute("username"));
        }
        for(int i=0;i<yColumnNames.length;i++) {
            params.put("yColumn", yColumnNames[i]);
            List<Map<String, Object>> result = MPUtil.snakeListToCamel(caigoudingdanService.selectTimeStatValue(params, ew));
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
        QueryWrapper<CaigoudingdanEntity> ew = new QueryWrapper<CaigoudingdanEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("caigourenyuan")) {
            ew.eq("caigouzhanghao", (String)request.getSession().getAttribute("username"));
        }
        List<Map<String, Object>> result = MPUtil.snakeListToCamel(caigoudingdanService.selectGroup(params, ew));
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
    public R count(@RequestParam Map<String, Object> params,CaigoudingdanEntity caigoudingdan, HttpServletRequest request){
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("caigourenyuan")) {
            caigoudingdan.setCaigouzhanghao((String)request.getSession().getAttribute("username"));
        }
        QueryWrapper<CaigoudingdanEntity> ew = new QueryWrapper<CaigoudingdanEntity>();
        int count = (int) caigoudingdanService.count(MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, caigoudingdan), params), params));
        return R.ok().put("data", count);
    }



}
