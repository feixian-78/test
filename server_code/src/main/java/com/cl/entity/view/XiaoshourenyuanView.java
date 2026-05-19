package com.cl.entity.view;

import com.cl.entity.XiaoshourenyuanEntity;

import com.baomidou.mybatisplus.annotation.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 销售人员
 */
@TableName("xiaoshourenyuan")
public class XiaoshourenyuanView  extends XiaoshourenyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XiaoshourenyuanView(){
	}
 
 	public XiaoshourenyuanView(XiaoshourenyuanEntity xiaoshourenyuanEntity){
 	try {
			BeanUtils.copyProperties(this, xiaoshourenyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
