(window.webpackJsonp=window.webpackJsonp||[]).push([[64],{"8mvC":function(t,e,a){"use strict";a.d(e,"a",(function(){return r})),a.d(e,"b",(function(){return c}));var r=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("Card",{attrs:{header:"验证码配置"}}),t._v(" "),a("Card",{attrs:{header:"CaptchaAppId："}},[a("CardRow",{attrs:{description:"腾讯云帐号 - 验证码 - CaptchaAppId列表中，详情基础配置中的CaptchaAppId"},scopedSlots:t._u([{key:"tail",fn:function(){return[a("a",{attrs:{href:"https://cloud.tencent.com/product/captcha",target:"_blank"}},[t._v("未申请？点此申请")])]},proxy:!0}])},[a("el-input",{attrs:{clearable:""},model:{value:t.appId,callback:function(e){t.appId=e},expression:"appId"}})],1)],1),t._v(" "),a("Card",{attrs:{header:"AppSecretKey："}},[a("CardRow",{attrs:{description:"腾讯云帐号 - 验证码 - CaptchaAppId列表中，详情基础配置中的AppSecretKey"}},[a("el-input",{attrs:{clearable:""},model:{value:t.secretId,callback:function(e){t.secretId=e},expression:"secretId"}})],1)],1),t._v(" "),a("Card",{staticClass:"footer-btn"},[a("el-button",{attrs:{type:"primary",size:"medium",id:"TencentCaptcha","data-appid":"appId"},on:{click:t.Submission}},[t._v("提交")])],1)],1)},c=[]},ZDik:function(t,e,a){"use strict";a.r(e);var r=a("8mvC"),c=a("jnTs");for(var s in c)["default"].indexOf(s)<0&&function(t){a.d(e,t,(function(){return c[t]}))}(s);var n=a("KHd+"),d=Object(n.a)(c.default,r.a,r.b,!1,null,null,null);e.default=d.exports},jnTs:function(t,e,a){"use strict";a.r(e);var r=a("lWnw"),c=a.n(r);for(var s in r)["default"].indexOf(s)<0&&function(t){a.d(e,t,(function(){return r[t]}))}(s);e.default=c.a},lWnw:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var r=s(a("QbLZ"));a("lpfh");var c=s(a("xaox"));function s(t){return t&&t.__esModule?t:{default:t}}e.default=(0,r.default)({name:"tencent-cloud-config-code-view"},c.default)},xaox:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var r=s(a("4gYi")),c=s(a("pNQN"));function s(t){return t&&t.__esModule?t:{default:t}}e.default={data:function(){return{appId:"",secretId:"",appID:"",captcha:null,captcha_ticket:"",captcha_rand_str:""}},created:function(){var t=this.$route.query.type;this.type=t,this.tencentCloudCode()},methods:{tencentCloudCode:function(){var t=this;this.appFetch({url:"forum_get_v3",method:"get",data:{}}).then((function(e){if(e.errors)t.$message.error(e.errors[0].code);else{if(0!==e.Code)return void t.$message.error(e.Message);var a=e.Data;t.appId=a.qcloud.qcloudCaptchaAppId,t.secretId=a.qcloud.qcloudCaptchaSecretKey}}))},Submission:function(){var t=this;""!=this.appId&&""!=this.secretId?(this.captcha=new TencentCaptcha(this.appId,(function(e){0===e.ret&&(t.captcha_ticket=e.ticket,t.captcha_rand_str=e.randstr,t.setting())})),this.captcha.show()):this.$message({message:"请先填写配置项"})},setting:function(){var t=this;this.appFetch({url:"settings_post_v3",method:"post",data:{data:[{key:"qcloud_captcha",value:1,tag:"qcloud"},{key:"qcloud_captcha_app_id",value:this.appId,tag:"qcloud"},{key:"qcloud_captcha_secret_key",value:this.secretId,tag:"qcloud"},{key:"qcloud_captcha_ticket",value:this.captcha_ticket,tag:"qcloud"},{key:"qcloud_captcha_randstr",value:this.captcha_rand_str,tag:"qcloud"}]}}).then((function(e){if(e.errors)e.errors[0].detail?t.$message.error(e.errors[0].code+"\n"+e.errors[0].detail[0]):t.$message.error(e.errors[0].code);else{if(0!==e.Code)return void t.$message.error(e.Message);t.$message({message:"提交成功",type:"success"})}}))}},beforeRouteLeave:function(t,e,a){this.captcha&&this.captcha.destroy(),a()},components:{Card:r.default,CardRow:c.default}}}}]);