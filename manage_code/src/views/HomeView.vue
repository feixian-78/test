<template>
  <div class="home_view">
    <div class="projectTitle">欢迎使用 {{projectName}}</div>
    <div class="count_list">
      <el-card v-if="btnAuth('shangpinxinxi','首页总数')" class="count_card">
        <div class="count_item">
          <div class="count_title">商品信息总数</div>
          <div class="count_num">{{shangpinxinxiCount}}</div>
        </div>
      </el-card>

      <el-card v-if="btnAuth('caigoudingdan','首页总数')" class="count_card">
        <div class="count_item">
          <div class="count_title">采购订单总数</div>
          <div class="count_num">{{caigoudingdanCount}}</div>
        </div>
      </el-card>

      <el-card v-if="btnAuth('xiaoshoudingdan','首页总数')" class="count_card">
        <div class="count_item">
          <div class="count_title">销售订单总数</div>
          <div class="count_num">{{xiaoshoudingdanCount}}</div>
        </div>
      </el-card>
    </div>
    <div class="card_list">
      <el-collapse-transition v-if="btnAuth('shangpinxinxi','首页统计')">
        <el-card v-show="cardTypeList.closeshangpinxinxiChartType1" class="card_view">
          <template #header>
            <div class="index_card_head">
              <div class="card_head_title">
                商品信息
              </div>
              <div class="card_head_right">
                <el-icon @click="cardTypeClick('hiddenshangpinxinxiChartType1')" class="showIcons"
                         :class="cardTypeList.hiddenshangpinxinxiChartType1?'showIcons1':''">
                  <ArrowUpBold />
                </el-icon>
                <el-icon @click="cardTypeClick('closeshangpinxinxiChartType1')" class="closeIcons">
                  <CloseBold />
                </el-icon>
              </div>
            </div>
          </template>
          <el-collapse-transition>
            <div class="card_item" v-show="cardTypeList.hiddenshangpinxinxiChartType1">
              <div id="shangpinxinxishuliangEchart1" class="Echart" style="width: 100%;height: 400px;"></div>
            </div>
          </el-collapse-transition>
        </el-card>
      </el-collapse-transition>
      <el-collapse-transition v-if="btnAuth('caigoudingdan','首页统计')">
        <el-card v-show="cardTypeList.closecaigoudingdanChartType1" class="card_view">
          <template #header>
            <div class="index_card_head">
              <div class="card_head_title">
                采购订单
              </div>
              <div class="card_head_right">
                <el-icon @click="cardTypeClick('hiddencaigoudingdanChartType1')" class="showIcons"
                         :class="cardTypeList.hiddencaigoudingdanChartType1?'showIcons1':''">
                  <ArrowUpBold />
                </el-icon>
                <el-icon @click="cardTypeClick('closecaigoudingdanChartType1')" class="closeIcons">
                  <CloseBold />
                </el-icon>
              </div>
            </div>
          </template>
          <el-collapse-transition>
            <div class="card_item" v-show="cardTypeList.hiddencaigoudingdanChartType1">
              <div id="caigoudingdancaigoushuliangEchart1" class="Echart" style="width: 100%;height: 400px;"></div>
            </div>
          </el-collapse-transition>
        </el-card>
      </el-collapse-transition>
      <el-collapse-transition v-if="btnAuth('xiaoshoudingdan','首页统计')">
        <el-card v-show="cardTypeList.closexiaoshoudingdanChartType1" class="card_view">
          <template #header>
            <div class="index_card_head">
              <div class="card_head_title">
                销售订单
              </div>
              <div class="card_head_right">
                <el-icon @click="cardTypeClick('hiddenxiaoshoudingdanChartType1')" class="showIcons"
                         :class="cardTypeList.hiddenxiaoshoudingdanChartType1?'showIcons1':''">
                  <ArrowUpBold />
                </el-icon>
                <el-icon @click="cardTypeClick('closexiaoshoudingdanChartType1')" class="closeIcons">
                  <CloseBold />
                </el-icon>
              </div>
            </div>
          </template>
          <el-collapse-transition>
            <div class="card_item" v-show="cardTypeList.hiddenxiaoshoudingdanChartType1">
              <div id="xiaoshoudingdanshuliangEchart1" class="Echart" style="width: 100%;height: 400px;"></div>
            </div>
          </el-collapse-transition>
        </el-card>
      </el-collapse-transition>
    </div>
  </div>
</template>

<script setup>
import {
  inject,
  nextTick,
  ref,
  getCurrentInstance
} from 'vue';
const context = getCurrentInstance()?.appContext.config.globalProperties;
const projectName = context.$project.projectName

const shangpinxinxiCount = ref(0)
const getshangpinxinxiCount = () => {
  context?.$http({
    url:'shangpinxinxi/count',
    method: 'get'
  }).then(res=>{
    shangpinxinxiCount.value = res.data.data
  })
}
const caigoudingdanCount = ref(0)
const getcaigoudingdanCount = () => {
  context?.$http({
    url:'caigoudingdan/count',
    method: 'get'
  }).then(res=>{
    caigoudingdanCount.value = res.data.data
  })
}
const xiaoshoudingdanCount = ref(0)
const getxiaoshoudingdanCount = () => {
  context?.$http({
    url:'xiaoshoudingdan/count',
    method: 'get'
  }).then(res=>{
    xiaoshoudingdanCount.value = res.data.data
  })
}

const init=()=>{
  getCountList()
  getCardList()
}

const getCountList=()=>{
  if(btnAuth('shangpinxinxi','首页总数')){
    getshangpinxinxiCount()
  }
  if(btnAuth('caigoudingdan','首页总数')){
    getcaigoudingdanCount()
  }
  if(btnAuth('xiaoshoudingdan','首页总数')){
    getxiaoshoudingdanCount()
  }
}

//权限验证
const btnAuth = (e,a)=>{
  return context?.$toolUtil.isAuth(e,a)
}
let echarts = inject("echarts")
const cardTypeClick = (e) =>{
  cardTypeList.value[e] = !cardTypeList.value[e]
  setTimeout(()=>{
    getCardList()
  },1000)
}
const cardTypeList = ref({
  closeshangpinxinxiChartType1: true,
  hiddenshangpinxinxiChartType1: true,
  closecaigoudingdanChartType1: true,
  hiddencaigoudingdanChartType1: true,
  closexiaoshoudingdanChartType1: true,
  hiddenxiaoshoudingdanChartType1: true,
})
const getCardList = () => {
  if(btnAuth('shangpinxinxi','首页统计')){
    getshangpinxinxiChart1()
  }
  if(btnAuth('caigoudingdan','首页统计')){
    getcaigoudingdanChart1()
  }
  if(btnAuth('xiaoshoudingdan','首页统计')){
    getxiaoshoudingdanChart1()
  }
}
const getshangpinxinxiChart1 = () => {
  nextTick(()=>{
    var shuliangEchart1 = echarts.init(document.getElementById("shangpinxinxishuliangEchart1"), null);
    context?.$http({
      url: `shangpinxinxi/value/shangpinmingcheng/shuliang`,
      method: "get",
    }).then(obj=>{
      let res = obj.data.data
      let xAxis = [];
      let yAxis = [];
      let dataList = []
      for(let i=0;i<res.length;i++){
        xAxis.push(res[i].shangpinmingcheng);
        yAxis.push(parseFloat((res[i].total)));
        dataList.push({
          value: parseFloat((res[i].total)),
          name: res[i].shangpinmingcheng
        })
      }
      var option = {};
      option = {
        title: {
          text: '库存统计',
          left: 'center'
        },
        tooltip: {
          trigger: 'item',
          formatter: '{b} : {c}'
        },
        xAxis: {
          type: 'category',
          data: xAxis,
          axisLabel: {
            rotate: 40
          }
        },
        yAxis: {
          type: 'value'
        },
        series: [{
          data: yAxis,
          type: 'bar'
        }]
      };

      shuliangEchart1.clear()
      // 使用刚指定的配置项和数据显示图表。
      shuliangEchart1.setOption(option);
      //根据窗口的大小变动图表
      shuliangEchart1.resize();
    })
  })
}
const getcaigoudingdanChart1 = () => {
  nextTick(()=>{
    var caigoushuliangEchart1 = echarts.init(document.getElementById("caigoudingdancaigoushuliangEchart1"), null);
    context?.$http({
      url: `caigoudingdan/value/shangpinmingcheng/caigoushuliang`,
      method: "get",
    }).then(obj=>{
      let res = obj.data.data
      let xAxis = [];
      let yAxis = [];
      let dataList = []
      for(let i=0;i<res.length;i++){
        xAxis.push(res[i].shangpinmingcheng);
        yAxis.push(parseFloat((res[i].total)));
        dataList.push({
          value: parseFloat((res[i].total)),
          name: res[i].shangpinmingcheng
        })
      }
      var option = {};
      option = {
        title: {
          text: '采购量统计',
          left: 'center'
        },
        tooltip: {
          trigger: 'item',
          formatter: '{b} : {c}'
        },
        xAxis: {
          type: 'category',
          boundaryGap: false,
          data: xAxis
        },
        yAxis: {
          type: 'value'
        },
        series: [{
          data: yAxis,
          type: 'line',
        }]
      };

      caigoushuliangEchart1.clear()
      // 使用刚指定的配置项和数据显示图表。
      caigoushuliangEchart1.setOption(option);
      //根据窗口的大小变动图表
      caigoushuliangEchart1.resize();
    })
  })
}
const getxiaoshoudingdanChart1 = () => {
  nextTick(()=>{
    var shuliangEchart1 = echarts.init(document.getElementById("xiaoshoudingdanshuliangEchart1"), null);
    context?.$http({
      url: `xiaoshoudingdan/value/shangpinmingcheng/shuliang`,
      method: "get",
    }).then(obj=>{
      let res = obj.data.data
      let xAxis = [];
      let yAxis = [];
      let dataList = []
      for(let i=0;i<res.length;i++){
        xAxis.push(res[i].shangpinmingcheng);
        yAxis.push(parseFloat((res[i].total)));
        dataList.push({
          value: parseFloat((res[i].total)),
          name: res[i].shangpinmingcheng
        })
      }
      var option = {};
      option = {
        title: {
          text: '销售量统计',
          left: 'center'
        },
        tooltip: {
          trigger: 'item',
          formatter: '{b} : {c}'
        },
        xAxis: {
          type: 'category',
          boundaryGap: false,
          data: xAxis
        },
        yAxis: {
          type: 'value'
        },
        series: [{
          data: yAxis,
          type: 'line',
          areaStyle: {},
          smooth: true
        }]
      };

      shuliangEchart1.clear()
      // 使用刚指定的配置项和数据显示图表。
      shuliangEchart1.setOption(option);
      //根据窗口的大小变动图表
      shuliangEchart1.resize();
    })
  })
}

init()
</script>
<style lang="scss">
.home_view .projectTitle{
  padding: 20px 0;
  margin: 20px 0 20px;
  font-weight: bold;
  display: flex;
  width: 100%;
  font-size: 24px;
  justify-content: center;
  align-items: center;
  height: auto;
}

.showIcons {
  transition: transform 0.3s;
  margin-right: 10px;
}

.showIcons1 {
  transform: rotate(-180deg);
}

// 总数盒子
.count_list{
  padding: 0 0 20px;
  display: flex;
  width: 100%;
  justify-content: center;
  align-items: flex-start;
  flex-wrap: nowrap;
  gap: 20px;

  // 总数card
  .count_card {
    border: 1px solid #19a97b30;
    border-radius: 8px;
    box-shadow: 0px 0px 12px rgba(0,0,0,.12);
    flex: 1;
    max-width: 300px;
    box-sizing: border-box;
    height: auto;

    // card头部
    .el-card__header {
      border: 0px solid #19a97b30;
      background: #19a97b10;
      width: 100%;
      border-width: 0 0 1px;
    }

    // body
    .el-card__body {
      padding: 0;
      // body盒子
      .count_item{
        padding: 30px;
        text-align: center;
        // 总数标题
        .count_title{
          color: #333;
          font-size: 16px;
          line-height: 2;
        }
        // 总数数字
        .count_num{
          color: #c00;
          font-size: 30px;
          line-height: 2;
        }
      }
    }
  }
}
// 首页盒子
.home_view {
  padding: 0px 20px;
  margin: 0;
  background: url(http://clfile.zggen.cn/20240203/09a98f4852104a599055d47953ef0a23.png) no-repeat center top / 100% 100% !important;
  width: 100%;
  min-height: 100vh;
  height: auto;
}
// 统计图盒子
.card_list {
  padding: 0 0 20px;
  display: flex;
  width: 100%;
  justify-content: space-between;
  align-items: flex-start;
  flex-wrap: wrap;
  // 统计图card
  .card_view {
    border: 1px solid #19a97b30;
    border-radius: 0;
    box-shadow: 0px 0px 0px rgba(0,0,0,.12);
    margin: 0 1% 30px;
    width: 100%;
    box-sizing: border-box;
    height: auto;
    // 头部
    .el-card__header {
      border: 0px solid #19a97b30;
      background: #19a97b10;
      width: 100%;
      border-width: 0 0 1px;
      // 头部盒子
      .index_card_head {
        display: flex;
        width: 100%;
        justify-content: space-between;
        align-items: center;
        height: 10px;
        // 标题
        .card_head_title {
          color: #f00;
          font-size: 14px;
        }
        // 按钮盒子
        .card_head_right {
          display: flex;
          align-items: center;
          // 按钮
          .el-icon{
            cursor: pointer;
            color: #aaa;
            font-size: 20px;
          }
        }
      }
    }
    // body
    .el-card__body {
      padding: 0;
      // body盒子
      .card_item{
        padding: 30px;
        text-align: center;
      }
    }
  }
}
</style>
<style>

</style>
