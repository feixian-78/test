package com.cl.entity.view;

import com.cl.entity.CaigourenyuanEntity;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 采购人员
 * 后端返回视图实体辅助类
 */
@TableName("caigourenyuan")
public class CaigourenyuanView  extends CaigourenyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public CaigourenyuanView(){
	}
 
 	public CaigourenyuanView(CaigourenyuanEntity caigourenyuanEntity){
 	try {
			BeanUtils.copyProperties(this, caigourenyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
