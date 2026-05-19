package com.cl.entity.view;

import com.cl.entity.CaigoudingdanEntity;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 采购订单
 * 后端返回视图实体辅助类
 */
@TableName("caigoudingdan")
public class CaigoudingdanView  extends CaigoudingdanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public CaigoudingdanView(){
	}
 
 	public CaigoudingdanView(CaigoudingdanEntity caigoudingdanEntity){
 	try {
			BeanUtils.copyProperties(this, caigoudingdanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
