package com.cl.entity.view;

import com.cl.entity.GongyingshangEntity;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 供应商
 * 后端返回视图实体辅助类
 */
@TableName("gongyingshang")
public class GongyingshangView  extends GongyingshangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public GongyingshangView(){
	}
 
 	public GongyingshangView(GongyingshangEntity gongyingshangEntity){
 	try {
			BeanUtils.copyProperties(this, gongyingshangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
