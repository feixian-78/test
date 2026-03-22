<template>
	<div>
		<el-dialog modal-class="edit_form_modal" custom-class="edit_form" v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="12">
						<el-form-item label="销售订单" prop="xiaoshoudingdan">
							<el-input class="list_inp" v-model="form.xiaoshoudingdan" :readonly="true" placeholder="销售订单" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="商品名称" prop="shangpinmingcheng">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.shangpinmingcheng?true:false"
								v-model="form.shangpinmingcheng"
								placeholder="请选择商品名称"
								@change="shangpinmingchengChange">
								<el-option v-for="(item,index) in shangpinmingchengLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="商品分类" prop="shangpinfenlei">
							<el-input class="list_inp" v-model="form.shangpinfenlei" placeholder="商品分类"
								 type="text" 								:readonly="!isAdd||disabledForm.shangpinfenlei?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="规格" prop="guige">
							<el-input class="list_inp" v-model="form.guige" placeholder="规格"
								 type="text" 								:readonly="!isAdd||disabledForm.guige?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="价格" prop="jiage">
							<el-input class="list_inp" v-model.number="form.jiage" placeholder="价格"
								 type="number" 								:readonly="!isAdd||disabledForm.jiage?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="数量" prop="shuliang">
							<el-input class="list_inp" v-model.number="form.shuliang" placeholder="数量"
								 type="text" 								:readonly="!isAdd||disabledForm.shuliang?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="商品总价" prop="shangpinzongjia">
							<el-input class="list_inp" v-model="shangpinzongjia" :readonly="true" placeholder="商品总价" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="客户名称" prop="kehumingcheng">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.kehumingcheng?true:false"
								v-model="form.kehumingcheng"
								placeholder="请选择客户名称"
								@change="kehumingchengChange">
								<el-option v-for="(item,index) in kehumingchengLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="手机号码" prop="shoujihaoma">
							<el-input class="list_inp" v-model="form.shoujihaoma" placeholder="手机号码"
								 type="text" 								:readonly="!isAdd||disabledForm.shoujihaoma?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="销售日期" prop="xiaoshouriqi">
							<el-date-picker
								class="list_date"
								v-model="form.xiaoshouriqi"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.xiaoshouriqi?true:false"
								placeholder="请选择销售日期" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="销售账号" prop="xiaoshouzhanghao">
							<el-input class="list_inp" v-model="form.xiaoshouzhanghao" placeholder="销售账号"
								 type="text" 								:readonly="!isAdd||disabledForm.xiaoshouzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="销售姓名" prop="xiaoshouxingming">
							<el-input class="list_inp" v-model="form.xiaoshouxingming" placeholder="销售姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.xiaoshouxingming?true:false" />
						</el-form-item>
					</el-col>

				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'xiaoshoudingdan'
	const formName = '销售订单'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		xiaoshoudingdan : false,
		shangpinmingcheng : false,
		shangpinfenlei : false,
		guige : false,
		jiage : false,
		shuliang : false,
		shangpinzongjia : false,
		kehumingcheng : false,
		shoujihaoma : false,
		xiaoshouriqi : false,
		xiaoshouzhanghao : false,
		xiaoshouxingming : false,
		sfsh : false,
		shhf : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		xiaoshoudingdan: [
		],
		shangpinmingcheng: [
		],
		shangpinfenlei: [
		],
		guige: [
		],
		jiage: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		shuliang: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		shangpinzongjia: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		kehumingcheng: [
		],
		shoujihaoma: [
			{ validator: validateMobile, trigger: 'blur' },
		],
		xiaoshouriqi: [
		],
		xiaoshouzhanghao: [
		],
		xiaoshouxingming: [
		],
		sfsh: [
		],
		shhf: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//商品名称列表
	const shangpinmingchengLists = ref([])
	//客户名称列表
	const kehumingchengLists = ref([])
	const shangpinzongjia =computed(()=>{
		let c = form.value
		let a = c.jiage*c.shuliang
		form.value.shangpinzongjia = a?a.toFixed(2) : 0
		return a?a.toFixed(2) : 0
	})
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			xiaoshoudingdan: getUUID(),
			shangpinmingcheng: '',
			shangpinfenlei: '',
			guige: '',
			jiage: '',
			shuliang: '',
			shangpinzongjia: '',
			kehumingcheng: '',
			shoujihaoma: '',
			xiaoshouriqi: '',
			xiaoshouzhanghao: '',
			xiaoshouxingming: '',
			sfsh: '待审核',
			shhf: '',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.xiaoshouriqi = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='xiaoshoudingdan'){
					form.value.xiaoshoudingdan = row[x];
					disabledForm.value.xiaoshoudingdan = true;
					continue;
				}
				if(x=='shangpinmingcheng'){
					form.value.shangpinmingcheng = row[x];
					disabledForm.value.shangpinmingcheng = true;
					continue;
				}
				if(x=='shangpinfenlei'){
					form.value.shangpinfenlei = row[x];
					disabledForm.value.shangpinfenlei = true;
					continue;
				}
				if(x=='guige'){
					form.value.guige = row[x];
					disabledForm.value.guige = true;
					continue;
				}
				if(x=='jiage'){
					form.value.jiage = row[x];
					disabledForm.value.jiage = true;
					continue;
				}
				if(x=='shuliang'){
					form.value.shuliang = row[x];
					disabledForm.value.shuliang = true;
					continue;
				}
				if(x=='shangpinzongjia'){
					form.value.shangpinzongjia = row[x];
					disabledForm.value.shangpinzongjia = true;
					continue;
				}
				if(x=='kehumingcheng'){
					form.value.kehumingcheng = row[x];
					disabledForm.value.kehumingcheng = true;
					continue;
				}
				if(x=='shoujihaoma'){
					form.value.shoujihaoma = row[x];
					disabledForm.value.shoujihaoma = true;
					continue;
				}
				if(x=='xiaoshouriqi'){
					form.value.xiaoshouriqi = row[x];
					disabledForm.value.xiaoshouriqi = true;
					continue;
				}
				if(x=='xiaoshouzhanghao'){
					form.value.xiaoshouzhanghao = row[x];
					disabledForm.value.xiaoshouzhanghao = true;
					continue;
				}
				if(x=='xiaoshouxingming'){
					form.value.xiaoshouxingming = row[x];
					disabledForm.value.xiaoshouxingming = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.sfsh='待审核'
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('xiaoshouzhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.xiaoshouzhanghao = json.xiaoshouzhanghao
				disabledForm.value.xiaoshouzhanghao = true;
			}
			if(json.hasOwnProperty('xiaoshouxingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.xiaoshouxingming = json.xiaoshouxingming
				disabledForm.value.xiaoshouxingming = true;
			}
		})
		context?.$http({
			url: `option/shangpinxinxi/shangpinmingcheng`,
			method: 'get'
		}).then(res=>{
			shangpinmingchengLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.shangpinfenlei = true;
		//由上级字段带出不可改
		disabledForm.value.guige = true;
		//由上级字段带出不可改
		disabledForm.value.jiage = true;
		context?.$http({
			url: `option/kehu/kehumingcheng`,
			method: 'get'
		}).then(res=>{
			kehumingchengLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.shoujihaoma = true;
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	const shangpinmingchengChange=()=>{
		context?.$http({
			url: `follow/shangpinxinxi/shangpinmingcheng?columnValue=` + form.value.shangpinmingcheng,
			method: 'get'
		}).then(res=>{
			if(res.data.data.shangpinfenlei){
				form.value.shangpinfenlei = res.data.data.shangpinfenlei
			}
			if(res.data.data.guige){
				form.value.guige = res.data.data.guige
			}
			if(res.data.data.jiage){
				form.value.jiage = res.data.data.jiage
			}
			if(res.data.data.shoujihaoma){
				form.value.shoujihaoma = res.data.data.shoujihaoma
			}
		})
	}
	const kehumingchengChange=()=>{
		context?.$http({
			url: `follow/kehu/kehumingcheng?columnValue=` + form.value.kehumingcheng,
			method: 'get'
		}).then(res=>{
			if(res.data.data.shangpinfenlei){
				form.value.shangpinfenlei = res.data.data.shangpinfenlei
			}
			if(res.data.data.guige){
				form.value.guige = res.data.data.guige
			}
			if(res.data.data.jiage){
				form.value.jiage = res.data.data.jiage
			}
			if(res.data.data.shoujihaoma){
				form.value.shoujihaoma = res.data.data.shoujihaoma
			}
		})
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								emit('formModelChange')
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						emit('formModelChange')
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border: 0px solid #ddd;
		border-radius: 4px;
		padding: 30px;
		margin: 0;
		background: #fff;
		// form item
		:deep(.el-form-item) {
			margin: 0 150px 20px 0;
			background: none;
			display: flex;
			//label
			.el-form-item__label {
			 background: none;
			 font-weight: 500;
			 display: block;
			 width: 150px;
			 min-width: 150px;
			 text-align: right;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 1px solid #139666;
					border-radius: 0px;
					padding: 0 10px;
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 350px;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border: 1px solid #139666;
					border-radius: 0px;
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 350px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border: 1px solid #139666;
					border-radius: 0px;
					padding: 0 10px;
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 350px;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 0px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: #999;
			width: auto;
			font-size: 14px;
			min-width: 100px;
			height: 36px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 0px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: #139666;
			width: auto;
			font-size: 14px;
			min-width: 100px;
			height: 36px;
		}
		.formModel_confirm:hover {
		}
	}
</style>
