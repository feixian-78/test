package com.cl.entity.view;

import com.cl.entity.CangkuEntity;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 仓库
 * 后端返回视图实体辅助类
 */
@TableName("cangku")
public class CangkuView  extends CangkuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public CangkuView(){
	}
 
 	public CangkuView(CangkuEntity cangkuEntity){
 	try {
			BeanUtils.copyProperties(this, cangkuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
