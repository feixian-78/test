package com.cl.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.CaigourenyuanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.CaigourenyuanView;


/**
 * 采购人员
 *
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
public interface CaigourenyuanService extends IService<CaigourenyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CaigourenyuanView> selectListView(Wrapper<CaigourenyuanEntity> wrapper);
   	
   	CaigourenyuanView selectView(@Param("ew") Wrapper<CaigourenyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CaigourenyuanEntity> wrapper);
   	
   
}

