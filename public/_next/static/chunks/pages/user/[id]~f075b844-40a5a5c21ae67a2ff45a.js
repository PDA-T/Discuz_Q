_N_E=(window.webpackJsonp_N_E=window.webpackJsonp_N_E||[]).push([[61],{"/0+H":function(e,t,r){"use strict";t.__esModule=!0,t.isInAmpMode=o,t.useAmp=function(){return o(a.default.useContext(s.AmpStateContext))};var n,a=(n=r("q1tI"))&&n.__esModule?n:{default:n},s=r("lwAK");function o(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},t=e.ampFirst,r=void 0!==t&&t,n=e.hybrid,a=void 0!==n&&n,s=e.hasQuery,o=void 0!==s&&s;return r||a&&o}},"4xcg":function(e,t,r){"use strict";r("pNMO"),r("4Brf"),r("ma9I");var n,a=r("nKUr"),s=r("lwsE"),o=r.n(s),i=r("W8MJ"),c=r.n(i),u=r("7W2i"),d=r.n(u),l=r("a1gu"),f=r.n(l),p=r("Nsbk"),h=r.n(p),v=r("q1tI"),g=r.n(v),m=r("yuBF"),y=r("+3IH"),b=r("g4pe"),j=r.n(b),x=(r("yXV3"),r("rB9j"),function(e,t,r,n){var a=w(e+t),s=[],o=[];if(r||!k(a,s)){r&&document.getElementById(a)&&document.getElementById(a).parentNode.removeChild(document.getElementById(a)),s.push(a);var i=document.createElement("script");i.type="text/javascript",i.id=a;try{e?(i.src=e,i.onloadDone=!1,i.onload=function(){i.onloadDone=!0,o[e]=1},i.onreadystatechange=function(){"loaded"!==i.readyState&&"complete"!==i.readyState||i.onloadDone||(i.onloadDone=!0,o[e]=1)}):t&&(i.text=t),document.getElementsByTagName("head")[0].appendChild(i)}catch(c){console.log(c)}}}),w=function(e){var t=arguments.length>1&&void 0!==arguments[1]?arguments[1]:32,r=0,n=0,a="",s="";for(s=t-e.length%t,n=0;n<s;n+=1)e+="0";for(;r<e.length;)a=O(a,e.substr(r,t)),r+=t;return a},O=function(e,t){for(var r="",n=Math.max(e.length,t.length),a=0;a<n;a++){var s=e.charCodeAt(a)^t.charCodeAt(a);r+="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(s%52)}return r},k=function(e,t){if("string"===typeof e||"number"===typeof e)for(var r in t)if(t[r]===e)return!0;return!1};function I(e){var t=function(){if("undefined"===typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"===typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(e){return!1}}();return function(){var r,n=h()(e);if(t){var a=h()(this).constructor;r=Reflect.construct(n,arguments,a)}else r=n.apply(this,arguments);return f()(this,r)}}var U=Object(m.inject)("site")(n=Object(m.observer)(n=function(e){d()(r,e);var t=I(r);function r(e){return o()(this,r),t.call(this,e)}return c()(r,[{key:"componentDidMount",value:function(){var e,t,r;!function(e){if(-1===e.indexOf("<script"))return e;for(var t=/<script[^\>]*?>([^\x00]*?)<\/script>/gi,r=[];r=t.exec(e);){var n=/<script[^\>]*?src=\"([^\>]*?)\"[^\>]*?(reload=\"1\")?(?:charset=\"([\w\-]+?)\")?><\/script>/i,a=[];(a=n.exec(r[0]))?x(a[1],"",a[2],a[3]):(a=(n=/<script(.*?)>([^\x00]+?)<\/script>/i).exec(r[0]),x("",a[2],-1!==a[1].indexOf("reload=")))}}((null===(e=this.props.site)||void 0===e||null===(t=e.webConfig)||void 0===t||null===(r=t.setSite)||void 0===r?void 0:r.siteStat)||"")}},{key:"formatTitle",value:function(){var e=this.props,t=e.site,r=e.title,n=e.showSiteName,a=void 0===n||n?Object(y.a)(t,"webConfig.setSite.siteName","\u6b22\u8fce\u60a8"):"";return r&&""!==r&&(a=""===a?"".concat(r):"".concat(r," - ").concat(a)),a}},{key:"formatKeywords",value:function(){var e=this.props,t=e.site,r=e.keywords,n=Object(y.a)(t,"webConfig.setSite.siteKeywords","\u6b22\u8fce\u60a8");return r&&""!==r&&(n="".concat(r," - ").concat(n)),n}},{key:"formatDescription",value:function(){var e=this.props,t=e.site,r=e.description,n=Object(y.a)(t,"webConfig.setSite.siteIntroduction","\u6b22\u8fce\u60a8");return r&&""!==r&&(n=r),n}},{key:"render",value:function(){var e,t,r,n=(null===(e=this.props.site)||void 0===e||null===(t=e.webConfig)||void 0===t||null===(r=t.setSite)||void 0===r?void 0:r.siteFavicon)||"";return Object(a.jsxs)(j.a,{children:[Object(a.jsx)("meta",{name:"keywords",content:this.formatKeywords()}),Object(a.jsx)("meta",{name:"description",content:this.formatDescription()}),n&&Object(a.jsx)("link",{rel:"icon",href:n}),Object(a.jsx)("title",{children:this.formatTitle()})]})}}]),r}(g.a.Component))||n)||n;t.a=U},"8Kt/":function(e,t,r){"use strict";r("lSNA");t.__esModule=!0,t.defaultHead=d,t.default=void 0;var n,a=function(e){if(e&&e.__esModule)return e;if(null===e||"object"!==typeof e&&"function"!==typeof e)return{default:e};var t=u();if(t&&t.has(e))return t.get(e);var r={},n=Object.defineProperty&&Object.getOwnPropertyDescriptor;for(var a in e)if(Object.prototype.hasOwnProperty.call(e,a)){var s=n?Object.getOwnPropertyDescriptor(e,a):null;s&&(s.get||s.set)?Object.defineProperty(r,a,s):r[a]=e[a]}r.default=e,t&&t.set(e,r);return r}(r("q1tI")),s=(n=r("Xuae"))&&n.__esModule?n:{default:n},o=r("lwAK"),i=r("FYa8"),c=r("/0+H");function u(){if("function"!==typeof WeakMap)return null;var e=new WeakMap;return u=function(){return e},e}function d(){var e=arguments.length>0&&void 0!==arguments[0]&&arguments[0],t=[a.default.createElement("meta",{charSet:"utf-8"})];return e||t.push(a.default.createElement("meta",{name:"viewport",content:"width=device-width"})),t}function l(e,t){return"string"===typeof t||"number"===typeof t?e:t.type===a.default.Fragment?e.concat(a.default.Children.toArray(t.props.children).reduce((function(e,t){return"string"===typeof t||"number"===typeof t?e:e.concat(t)}),[])):e.concat(t)}var f=["name","httpEquiv","charSet","itemProp"];function p(e,t){return e.reduce((function(e,t){var r=a.default.Children.toArray(t.props.children);return e.concat(r)}),[]).reduce(l,[]).reverse().concat(d(t.inAmpMode)).filter(function(){var e=new Set,t=new Set,r=new Set,n={};return function(a){var s=!0,o=!1;if(a.key&&"number"!==typeof a.key&&a.key.indexOf("$")>0){o=!0;var i=a.key.slice(a.key.indexOf("$")+1);e.has(i)?s=!1:e.add(i)}switch(a.type){case"title":case"base":t.has(a.type)?s=!1:t.add(a.type);break;case"meta":for(var c=0,u=f.length;c<u;c++){var d=f[c];if(a.props.hasOwnProperty(d))if("charSet"===d)r.has(d)?s=!1:r.add(d);else{var l=a.props[d],p=n[d]||new Set;"name"===d&&o||!p.has(l)?(p.add(l),n[d]=p):s=!1}}}return s}}()).reverse().map((function(e,t){var r=e.key||t;return a.default.cloneElement(e,{key:r})}))}function h(e){var t=e.children,r=(0,a.useContext)(o.AmpStateContext),n=(0,a.useContext)(i.HeadManagerContext);return a.default.createElement(s.default,{reduceComponentsToState:p,headManager:n,inAmpMode:(0,c.isInAmpMode)(r)},t)}h.rewind=function(){};var v=h;t.default=v},FYa8:function(e,t,r){"use strict";var n;t.__esModule=!0,t.HeadManagerContext=void 0;var a=((n=r("q1tI"))&&n.__esModule?n:{default:n}).default.createContext({});t.HeadManagerContext=a},IDDC:function(e,t,r){"use strict";r.r(t);var n,a=r("nKUr"),s=r("o0o1"),o=r.n(s),i=(r("ls82"),r("yXPU")),c=r.n(i),u=r("lwsE"),d=r.n(u),l=r("W8MJ"),f=r.n(l),p=r("7W2i"),h=r.n(p),v=r("a1gu"),g=r.n(v),m=r("Nsbk"),y=r.n(m),b=r("q1tI"),j=r("yuBF"),x=r("zrgt"),w=r("QL3K"),O=r("QcND"),k=r("J0pL"),I=r("sho3");function U(e){var t=function(){if("undefined"===typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"===typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(e){return!1}}();return function(){var r,n=y()(e);if(t){var a=y()(this).constructor;r=Reflect.construct(n,arguments,a)}else r=n.apply(this,arguments);return g()(this,r)}}var S=Object(j.inject)("site")(n=Object(j.inject)("user")(n=Object(j.observer)(n=function(e){h()(r,e);var t=U(r);function r(e){var n;return d()(this,r),(n=t.call(this,e)).state={userData:e.serverData&&e.serverData.userData?e.serverData.userData:null},n}return f()(r,null,[{key:"getInitialProps",value:function(){var e=c()(o.a.mark((function e(t,r){var n,a,s,i;return o.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(a=null===t||void 0===t||null===(n=t.query)||void 0===n?void 0:n.id,s={userData:null},!a){e.next=7;break}return e.next=5,Object(I.readUser)({params:{userId:a}});case 5:0===(i=e.sent).code&&(s.userData=i.data);case 7:return e.abrupt("return",{serverData:s});case 8:case"end":return e.stop()}}),e)})));return function(t,r){return e.apply(this,arguments)}}()}]),f()(r,[{key:"render",value:function(){var e="";if(this.state.userData)e="".concat(this.state.userData.nickname,"\u7684\u4e3b\u9875");else{var t=this.props.router.query,r=(void 0===t?{}:t).id,n=void 0===r?"":r,s=this.props.user.targetUsers[n]||{};e=s.nickname?"".concat(s.nickname,"\u7684\u4e3b\u9875"):"\u4ed6\u4eba\u4e3b\u9875"}return Object(a.jsx)(k.a,{h5:Object(a.jsx)(x.a,{}),pc:Object(a.jsx)(w.a,{}),title:e})}}]),r}(b.Component))||n)||n)||n;t.default=Object(O.a)(S)},J0pL:function(e,t,r){"use strict";r("pNMO"),r("4Brf");var n,a=r("nKUr"),s=r("lwsE"),o=r.n(s),i=r("W8MJ"),c=r.n(i),u=r("7W2i"),d=r.n(u),l=r("a1gu"),f=r.n(l),p=r("Nsbk"),h=r.n(p),v=r("q1tI"),g=r.n(v),m=r("yuBF"),y=r("4xcg");function b(e){var t=function(){if("undefined"===typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"===typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(e){return!1}}();return function(){var r,n=h()(e);if(t){var a=h()(this).constructor;r=Reflect.construct(n,arguments,a)}else r=n.apply(this,arguments);return f()(this,r)}}var j=Object(m.inject)("site")(n=Object(m.inject)("search")(n=Object(m.observer)(n=function(e){d()(r,e);var t=b(r);function r(){return o()(this,r),t.apply(this,arguments)}return c()(r,[{key:"renderView",value:function(){var e=this.props,t=e.pc,r=e.h5,n=e.title,s=void 0===n?"":n,o=e.keywords,i=void 0===o?"":o,c=e.description,u=void 0===c?"":c,d=e.showSiteName,l=void 0===d||d,f="pc"===this.props.site.platform?t||null:r||null;return Object(a.jsxs)(a.Fragment,{children:[Object(a.jsx)(y.a,{title:s,keywords:i,description:u,showSiteName:l}),f]})}},{key:"render",value:function(){return this.renderView()}}]),r}(g.a.Component))||n)||n)||n;t.a=j},Q8RO:function(e,t,r){(window.__NEXT_P=window.__NEXT_P||[]).push(["/user/[id]",function(){return r("IDDC")}])},QL3K:function(e,t,r){"use strict";r("ma9I"),r("E9XD"),r("tkto"),r("B6y2"),r("rB9j"),r("UxlC");var n,a=r("nKUr"),s=r("RIqP"),o=r.n(s),i=r("o0o1"),c=r.n(i),u=(r("ls82"),r("yXPU")),d=r.n(u),l=r("lwsE"),f=r.n(l),p=r("W8MJ"),h=r.n(p),v=r("7W2i"),g=r.n(v),m=r("a1gu"),y=r.n(m),b=r("Nsbk"),j=r.n(b),x=r("q1tI"),w=r.n(x),O=r("QV9d"),k=r("yuBF"),I=r("TSYQ"),U=r.n(I),S=r("INMq"),C=r("WNcC"),P=r("wXCO"),R=r("20a2"),M=r("9XgB"),D=r("7KEy"),L=r("B5JU"),N=r.n(L),T=r("Niza"),B=r("TC67"),_=r("kBz5");r("4x5+");function q(e){var t=function(){if("undefined"===typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"===typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(e){return!1}}();return function(){var r,n=j()(e);if(t){var a=j()(this).constructor;r=Reflect.construct(n,arguments,a)}else r=n.apply(this,arguments);return y()(this,r)}}var E=Object(k.inject)("site")(n=Object(k.inject)("user")(n=Object(k.inject)("thread")(n=Object(k.inject)("threadList")(n=Object(k.observer)(n=function(e){g()(r,e);var t=q(r);function r(e){var n,s;f()(this,r),(s=t.call(this,e)).targetUserId=null,s.fansPopupInstance=null,s.followsPopupInstance=null,s.componentDidMount=d()(c.a.mark((function e(){var t,r,n;return c.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(r=s.props.router.query,n=null===(t=s.props.user)||void 0===t?void 0:t.id,r.id&&"undefined"!==r.id||N.a.replace({url:"/"}),String(n)!==r.id){e.next=6;break}return N.a.replace({url:"/my"}),e.abrupt("return");case 6:if(!r.id){e.next=11;break}return s.targetUserId=r.id,e.next=10,s.props.user.getTargetUserInfo({userId:r.id});case 10:s.setState({fetchUserInfoLoading:!1});case 11:case"end":return e.stop()}}),e)}))),s.componentDidUpdate=d()(c.a.mark((function e(){var t,r,n;return c.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(r=s.props.router.query,n=null===(t=s.props.user)||void 0===t?void 0:t.id,String(n)!==r.id){e.next=5;break}return N.a.replace({url:"/my"}),e.abrupt("return");case 5:if(String(s.targetUserId)!==String(r.id)){e.next=7;break}return e.abrupt("return");case 7:if(s.targetUserId=r.id,!r.id){e.next=18;break}return s.fansPopupInstance&&s.fansPopupInstance.closePopup(),s.followsPopupInstance&&s.followsPopupInstance.closePopup(),s.props.user.targetUsers[r.id]||s.setState({fetchUserInfoLoading:!0}),s.setState({fetchUserThreadsLoading:!0}),e.next=15,s.props.user.getTargetUserInfo({userId:r.id});case 15:return s.setState({fetchUserInfoLoading:!1}),e.next=18,s.fetchTargetUserThreads();case 18:case"end":return e.stop()}}),e)}))),s.fetchTargetUserThreads=d()(c.a.mark((function e(){var t,r;return c.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(!(t=s.props.router.query).id){e.next=7;break}return e.next=4,s.props.threadList.fetchList({namespace:"user/".concat(t.id),filter:{toUserId:t.id,complex:5}});case 4:r=e.sent,s.props.threadList.setList({namespace:"user/".concat(t.id),data:r}),s.setState({fetchUserThreadsLoading:!1});case 7:return e.abrupt("return");case 8:case"end":return e.stop()}}),e)}))),s.formatUserThreadsData=function(e){return 0===Object.keys(e).length?[]:Object.values(e).reduce((function(e,t){return[].concat(o()(e),o()(t))}))},s.moreFans=function(){s.setState({showFansPopup:!0})},s.moreFollow=function(){s.setState({showFollowPopup:!0})},s.onSearch=function(e){s.props.router.replace("/search?keyword=".concat(e))},s.renderRight=function(){var e=s.props.router.query,t=null===e||void 0===e?void 0:e.id;return Object(a.jsxs)(a.Fragment,{children:[Object(a.jsx)(M.a,{userId:t,getRef:function(e){return s.fansPopupInstance=e}}),Object(a.jsx)(D.a,{userId:t,getRef:function(e){return s.followsPopupInstance=e}}),Object(a.jsx)(P.a,{})]})},s.renderContent=function(){var e=s.state.fetchUserThreadsLoading,t=s.props.threadList,r=(t.lists,s.props.router.query),n=void 0===r?{}:r,o=t.getList({namespace:"user/".concat(n.id)}),i=t.getAttribute({namespace:"user/".concat(n.id),key:"totalCount"}),c=t.getListRequestError({namespace:"user/".concat(n.id)});return Object(a.jsx)("div",{className:O.a.userContent,children:Object(a.jsx)(C.a,{title:"\u4e3b\u9898",type:"normal",bigSize:!0,isShowMore:!1,isLoading:e,leftNum:void 0!==i?"".concat(i,"\u4e2a\u4e3b\u9898"):"",noData:!(null!==o&&void 0!==o&&o.length),mold:"plane",isError:c.isError,errorText:c.errorText,children:o.length>0&&Object(a.jsx)(T.a,{data:o})})})};var i=s.props.router.query;return s.state={showFansPopup:!1,showFollowPopup:!1,fetchUserInfoLoading:!0,fetchUserThreadsLoading:!0},s.props.user.targetUsers[i.id]&&(s.state.fetchUserInfoLoading=!1),i.id&&i.id!==String(null===(n=s.props.user)||void 0===n?void 0:n.id)&&s.props.threadList.clearList({namespace:"user/".concat(i.id)}),s}return h()(r,[{key:"render",value:function(){var e=this.state.fetchUserInfoLoading,t=this.props,r=t.thread,n=t.threadList,s=(n.lists,r.hasRedPacket),o=this.props.router.query,i=void 0===o?{}:o,c=n.getList({namespace:"user/".concat(i.id)}),u=n.getAttribute({namespace:"user/".concat(i.id),key:"totalPage"}),d=n.getAttribute({namespace:"user/".concat(i.id),key:"currentPage"});return Object(a.jsx)(a.Fragment,{children:Object(a.jsxs)(S.a,{allowRefresh:!1,onRefresh:this.fetchTargetUserThreads,noMore:u<d,showRefresh:!1,onSearch:this.onSearch,immediateCheck:!0,isShowLayoutRefresh:!(null===c||void 0===c||!c.length)&&!e,showHeaderLoading:e,children:[Object(a.jsx)("div",{children:Object(a.jsx)("div",{children:Object(a.jsx)("div",{className:O.a.headerbox,children:Object(a.jsx)("div",{className:O.a.userHeader,children:Object(a.jsx)(B.a,{showHeaderLoading:e,isOtherPerson:!0})})})})}),Object(a.jsxs)("div",{className:O.a.userCenterBody,children:[Object(a.jsx)("div",{className:U()(O.a.userCenterBodyItem,O.a.userCenterBodyLeftItem),children:this.renderContent()}),Object(a.jsx)("div",{className:U()(O.a.userCenterBodyItem,O.a.userCenterBodyRightItem),children:this.renderRight()})]}),s>0&&Object(a.jsx)(_.a,{money:s,onClose:function(){return r.setRedPacket(0)}})]})})}}]),r}(w.a.Component))||n)||n)||n)||n)||n;t.a=Object(R.withRouter)(E)},Xuae:function(e,t,r){"use strict";var n=r("RIqP"),a=r("lwsE"),s=r("W8MJ"),o=(r("PJYZ"),r("7W2i")),i=r("a1gu"),c=r("Nsbk");function u(e){var t=function(){if("undefined"===typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"===typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(e){return!1}}();return function(){var r,n=c(e);if(t){var a=c(this).constructor;r=Reflect.construct(n,arguments,a)}else r=n.apply(this,arguments);return i(this,r)}}t.__esModule=!0,t.default=void 0;var d=r("q1tI"),l=function(e){o(r,e);var t=u(r);function r(e){var s;return a(this,r),(s=t.call(this,e))._hasHeadManager=void 0,s.emitChange=function(){s._hasHeadManager&&s.props.headManager.updateHead(s.props.reduceComponentsToState(n(s.props.headManager.mountedInstances),s.props))},s._hasHeadManager=s.props.headManager&&s.props.headManager.mountedInstances,s}return s(r,[{key:"componentDidMount",value:function(){this._hasHeadManager&&this.props.headManager.mountedInstances.add(this),this.emitChange()}},{key:"componentDidUpdate",value:function(){this.emitChange()}},{key:"componentWillUnmount",value:function(){this._hasHeadManager&&this.props.headManager.mountedInstances.delete(this),this.emitChange()}},{key:"render",value:function(){return null}}]),r}(d.Component);t.default=l},g4pe:function(e,t,r){e.exports=r("8Kt/")},lwAK:function(e,t,r){"use strict";var n;t.__esModule=!0,t.AmpStateContext=void 0;var a=((n=r("q1tI"))&&n.__esModule?n:{default:n}).default.createContext({});t.AmpStateContext=a},zrgt:function(e,t,r){"use strict";r("ma9I"),r("E9XD"),r("tkto"),r("B6y2"),r("rB9j"),r("UxlC"),r("R5XZ");var n,a=r("nKUr"),s=r("RIqP"),o=r.n(s),i=r("o0o1"),c=r.n(i),u=(r("ls82"),r("yXPU")),d=r.n(u),l=r("lwsE"),f=r.n(l),p=r("W8MJ"),h=r.n(p),v=r("7W2i"),g=r.n(v),m=r("a1gu"),y=r.n(m),b=r("Nsbk"),j=r.n(b),x=r("q1tI"),w=r.n(x),O=r("/YC7"),k=r("x2xJ"),I=r.n(k),U=r("jqTq"),S=r.n(U),C=r("Jw8/"),P=r.n(C),R=r("GuWI"),M=r("QLYM"),D=r("yuBF"),L=(r("E+SJ"),r("JhUJ"),r("Niza")),N=r("INMq"),T=(r("HoAE"),r("DTmq")),B=r("20a2"),_=r("B5JU"),q=r.n(_),E=r("Tk/S");r("4x5+");function A(e){var t=function(){if("undefined"===typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"===typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(e){return!1}}();return function(){var r,n=j()(e);if(t){var a=j()(this).constructor;r=Reflect.construct(n,arguments,a)}else r=n.apply(this,arguments);return y()(this,r)}}var F=Object(D.inject)("site")(n=Object(D.inject)("user")(n=Object(D.inject)("thread")(n=Object(D.inject)("threadList")(n=Object(D.observer)(n=function(e){g()(r,e);var t=A(r);function r(e){var n;f()(this,r),(n=t.call(this,e)).targetUserId=null,n.componentDidMount=d()(c.a.mark((function e(){var t,r,a;return c.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(r=n.props.router.query,a=null===(t=n.props.user)||void 0===t?void 0:t.id,r.id&&"undefined"!==r.id||q.a.replace({url:"/"}),String(a)!==r.id){e.next=6;break}return q.a.replace({url:"/my"}),e.abrupt("return");case 6:if(!r.id){e.next=12;break}return e.next=9,n.props.user.getTargetUserInfo({userId:r.id});case 9:n.setWeixinShare(),n.targetUserId=r.id,n.setState({fetchUserInfoLoading:!1});case 12:case"end":return e.stop()}}),e)}))),n.componentDidUpdate=d()(c.a.mark((function e(){var t,r,a;return c.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(r=n.props.router.query,a=null===(t=n.props.user)||void 0===t?void 0:t.id,r.id&&"undefined"!==r.id||q.a.replace({url:"/"}),String(a)!==r.id){e.next=6;break}return q.a.replace({url:"/my"}),e.abrupt("return");case 6:if(n.targetUserId){e.next=8;break}return e.abrupt("return");case 8:if(String(n.targetUserId)!==String(r.id)){e.next=10;break}return e.abrupt("return");case 10:if(n.targetUserId=r.id,!r.id){e.next=20;break}return n.props.user.targetUsers[r.id]||n.setState({fetchUserInfoLoading:!0}),n.setState({fetchUserThreadsLoading:!0}),e.next=16,n.props.user.getTargetUserInfo({userId:r.id});case 16:return n.setWeixinShare(),n.setState({fetchUserInfoLoading:!1}),e.next=20,n.fetchTargetUserThreads();case 20:case"end":return e.stop()}}),e)}))),n.fetchTargetUserThreads=d()(c.a.mark((function e(){var t,r;return c.a.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(!(t=n.props.router.query).id){e.next=6;break}return e.next=4,n.props.threadList.fetchList({namespace:"user/".concat(t.id),filter:{toUserId:t.id,complex:5}});case 4:r=e.sent,n.props.threadList.setList({namespace:"user/".concat(t.id),data:r});case 6:return e.abrupt("return");case 7:case"end":return e.stop()}}),e)}))),n.formatUserThreadsData=function(e){return 0===Object.keys(e).length?[]:Object.values(e).reduce((function(e,t){return[].concat(o()(e),o()(t))}))},n.handlePreviewBgImage=function(e){e&&e.stopPropagation(),n.setState({isPreviewBgVisible:!n.state.isPreviewBgVisible})},n.getBackgroundUrl=function(){var e,t=null,r=n.props.router.query,a=null===r||void 0===r?void 0:r.id;return a&&null!==(e=n.props.user)&&void 0!==e&&e.targetUsers[a]&&(t=n.props.user.targetUsers[a].originalBackGroundUrl),t||!1};var a=n.props.router.query;return n.state={fetchUserInfoLoading:!0,isPreviewBgVisible:!1},n.props.user.targetUsers[a.id]&&(n.state.fetchUserInfoLoading=!1),n}return h()(r,[{key:"setWeixinShare",value:function(){var e=this;setTimeout((function(){var t=e.props.user.targetUser;if(t){var r=t.nickname,n=t.avatarUrl,a=t.signature,s=t.id,o="".concat(r,"\u7684\u4e3b\u9875"),i=n,c=a?a.length>35?"".concat(a.substr(0,35),"..."):a:"\u5728\u8fd9\u91cc\uff0c\u53d1\u73b0\u66f4\u591a\u7cbe\u5f69\u5185\u5bb9",u="".concat(window.location.origin,"/user/").concat(s);Object(E.a)(o,c,u,i)}}),500)}},{key:"render",value:function(){var e=this,t=this.props,r=t.site,n=(t.user,t.thread),s=t.threadList,o=r.platform,i=(s.lists,n.hasRedPacket),c=this.props.router.query,u=void 0===c?{}:c,d=null===u||void 0===u?void 0:u.id,l=s.getList({namespace:"user/".concat(d)}),f=s.getAttribute({namespace:"user/".concat(d),key:"totalPage"}),p=s.getAttribute({namespace:"user/".concat(d),key:"totalCount"}),h=s.getAttribute({namespace:"user/".concat(d),key:"currentPage"});return Object(a.jsxs)(N.a,{showHeader:!0,showTabBar:!1,immediateCheck:!0,onRefresh:this.fetchTargetUserThreads,noMore:f<h,showRefresh:!this.state.fetchUserInfoLoading,children:[Object(a.jsxs)("div",{className:O.a.mobileLayout,children:[this.state.fetchUserInfoLoading&&Object(a.jsx)("div",{className:O.a.loadingSpin,children:Object(a.jsx)(S.a,{type:"spinner",children:"\u52a0\u8f7d\u4e2d..."})}),!this.state.fetchUserInfoLoading&&Object(a.jsxs)(a.Fragment,{children:[Object(a.jsx)("div",{onClick:this.handlePreviewBgImage,children:Object(a.jsx)(R.a,{isOtherPerson:!0})}),Object(a.jsx)(M.a,{platform:o,isOtherPerson:!0})]}),Object(a.jsxs)("div",{className:O.a.unit,children:[Object(a.jsxs)("div",{className:O.a.threadUnit,children:[Object(a.jsx)("div",{className:O.a.threadTitle,children:"\u4e3b\u9898"}),Object(a.jsx)("div",{className:O.a.threadCount,children:void 0===p?"":"".concat(p,"\u4e2a\u4e3b\u9898")})]}),Object(a.jsx)("div",{className:O.a.dividerContainer,children:Object(a.jsx)(I.a,{className:O.a.divider})}),Object(a.jsx)("div",{className:O.a.threadItemContainer,children:l.length>0&&Object(a.jsx)(L.a,{data:l})})]})]}),this.getBackgroundUrl()&&this.state.isPreviewBgVisible&&Object(a.jsx)(P.a,{visible:this.state.isPreviewBgVisible,onClose:this.handlePreviewBgImage,imgUrls:[this.getBackgroundUrl()],currentUrl:this.getBackgroundUrl(),onError:function(){var t;return d&&(null===(t=e.props.user)||void 0===t?void 0:t.targetUsers[d])&&e.props.user.targetUsers[d].backgroundUrl||""}}),i>0&&Object(a.jsx)(T.a,{money:i,onClose:function(){return n.setRedPacket(0)}})]})}}]),r}(w.a.Component))||n)||n)||n)||n)||n;t.a=Object(B.withRouter)(F)}},[["Q8RO",1,0,4,3,5,6,2]]]);