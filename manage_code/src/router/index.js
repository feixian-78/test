	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import gongyingshang from '@/views/gongyingshang/list'
	import xiaoshourenyuan from '@/views/xiaoshourenyuan/list'
	import xiaoshoudingdan from '@/views/xiaoshoudingdan/list'
	import shangpinxinxi from '@/views/shangpinxinxi/list'
	import shangpinruku from '@/views/shangpinruku/list'
	import cangguanyuan from '@/views/cangguanyuan/list'
	import users from '@/views/users/list'
	import caigourenyuan from '@/views/caigourenyuan/list'
	import caigoudingdan from '@/views/caigoudingdan/list'
	import kehu from '@/views/kehu/list'
	import shangpinfenlei from '@/views/shangpinfenlei/list'
	import cangku from '@/views/cangku/list'
	import chukuxinxi from '@/views/chukuxinxi/list'
	import cangguanyuanRegister from '@/views/cangguanyuan/register'
	import cangguanyuanCenter from '@/views/cangguanyuan/center'
	import xiaoshourenyuanRegister from '@/views/xiaoshourenyuan/register'
	import xiaoshourenyuanCenter from '@/views/xiaoshourenyuan/center'
	import caigourenyuanRegister from '@/views/caigourenyuan/register'
	import caigourenyuanCenter from '@/views/caigourenyuan/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/cangguanyuanCenter',
			name: '仓管员个人中心',
			component: cangguanyuanCenter
		}
		,{
			path: '/xiaoshourenyuanCenter',
			name: '销售人员个人中心',
			component: xiaoshourenyuanCenter
		}
		,{
			path: '/caigourenyuanCenter',
			name: '采购人员个人中心',
			component: caigourenyuanCenter
		}
		,{
			path: '/gongyingshang',
			name: '供应商',
			component: gongyingshang
		}
		,{
			path: '/xiaoshourenyuan',
			name: '销售人员',
			component: xiaoshourenyuan
		}
		,{
			path: '/xiaoshoudingdan',
			name: '销售订单',
			component: xiaoshoudingdan
		}
		,{
			path: '/shangpinxinxi',
			name: '商品信息',
			component: shangpinxinxi
		}
		,{
			path: '/shangpinruku',
			name: '商品入库',
			component: shangpinruku
		}
		,{
			path: '/cangguanyuan',
			name: '仓管员',
			component: cangguanyuan
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/caigourenyuan',
			name: '采购人员',
			component: caigourenyuan
		}
		,{
			path: '/caigoudingdan',
			name: '采购订单',
			component: caigoudingdan
		}
		,{
			path: '/kehu',
			name: '客户',
			component: kehu
		}
		,{
			path: '/shangpinfenlei',
			name: '商品分类',
			component: shangpinfenlei
		}
		,{
			path: '/cangku',
			name: '仓库',
			component: cangku
		}
		,{
			path: '/chukuxinxi',
			name: '出库信息',
			component: chukuxinxi
		}
		]
	},
	{
		path: '/cangguanyuanRegister',
		name: '仓管员注册',
		component: cangguanyuanRegister
	},
	{
		path: '/xiaoshourenyuanRegister',
		name: '销售人员注册',
		component: xiaoshourenyuanRegister
	},
	{
		path: '/caigourenyuanRegister',
		name: '采购人员注册',
		component: caigourenyuanRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
