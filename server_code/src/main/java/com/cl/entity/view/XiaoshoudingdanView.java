package com.cl.entity.view;

import com.cl.entity.XiaoshoudingdanEntity;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 销售订单
 * 后端返回视图实体辅助类
 */
@TableName("xiaoshoudingdan")
public class XiaoshoudingdanView  extends XiaoshoudingdanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XiaoshoudingdanView(){
	}
 
 	public XiaoshoudingdanView(XiaoshoudingdanEntity xiaoshoudingdanEntity){
 	try {
			BeanUtils.copyProperties(this, xiaoshoudingdanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
