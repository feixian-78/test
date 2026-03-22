package com.cl.entity.view;

import com.cl.entity.CangguanyuanEntity;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 仓管员
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2025-02-19 14:42:17
 */
@TableName("cangguanyuan")
public class CangguanyuanView  extends CangguanyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public CangguanyuanView(){
	}
 
 	public CangguanyuanView(CangguanyuanEntity cangguanyuanEntity){
 	try {
			BeanUtils.copyProperties(this, cangguanyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
