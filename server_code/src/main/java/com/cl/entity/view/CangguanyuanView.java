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
