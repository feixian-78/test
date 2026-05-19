package com.cl.entity.view;

import com.cl.entity.ChukuxinxiEntity;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 出库信息
 * 后端返回视图实体辅助类
 */
@TableName("chukuxinxi")
public class ChukuxinxiView  extends ChukuxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ChukuxinxiView(){
	}
 
 	public ChukuxinxiView(ChukuxinxiEntity chukuxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, chukuxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
