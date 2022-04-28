create table posts
(
    id              bigint unsigned auto_increment comment '回复 id'
        primary key,
    user_id         bigint unsigned             null comment '发表用户 id',
    thread_id       bigint unsigned             null comment '关联主题 id',
    reply_post_id   bigint unsigned             null comment '回复 id',
    reply_user_id   bigint unsigned             null comment '回复用户 id',
    comment_post_id bigint unsigned             null comment '评论回复 id',
    comment_user_id bigint unsigned             null comment '评论回复用户 id',
    content         mediumtext                  null comment '内容',
    ip              varchar(45)      default '' not null comment 'ip 地址',
    port            int unsigned     default 0  not null comment '端口',
    reply_count     int unsigned     default 0  not null comment '关联回复数',
    like_count      int unsigned     default 0  not null comment '喜欢数',
    created_at      datetime                    not null comment '创建时间',
    updated_at      datetime                    not null comment '更新时间',
    deleted_at      datetime                    null comment '删除时间',
    deleted_user_id bigint unsigned             null comment '删除用户 id',
    is_first        tinyint unsigned default 0  not null comment '是否首个回复',
    is_comment      tinyint unsigned default 0  not null comment '是否是回复回帖的内容',
    is_approved     tinyint unsigned default 1  not null comment '是否合法',
    constraint posts_deleted_user_id_foreign
        foreign key (deleted_user_id) references users (id)
            on delete set null,
    constraint posts_user_id_foreign
        foreign key (user_id) references users (id)
            on delete set null
)
    collate = utf8mb4_unicode_ci
    auto_increment = 469;

create index idx_reply_post_id
    on posts (reply_post_id);

create index posts_thread_id_index
    on posts (thread_id);

INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (1, 3, 1, null, null, null, null, '<p>一 、学习Servlet和Tomcat</p>
<ul>
<li>Servlet第一篇【介绍Servlet、HTTP协议、WEB目录结构、编写入门Servlet程序、Servlet生命周期】</li>
<li>Servlet第二篇【Servlet调用图、Servlet细节、ServletConfig、ServletContext】</li>
<li>Servlet第三篇【request和response简介、response的常见应用】</li>
<li>Servlet第四篇【request对象常用方法、应用】</li>
<li>Servlet第五篇【介绍会话技术、Cookie的API、详解、应用】</li>
<li>Servlet第六篇【Session介绍、API、生命周期、应用、与Cookie区别】</li>
</ul>
<p>二 、学习JDBC和数据库</p>
<pre><code>JDBC</code></pre>
<ul>
<li>
<p>JDBC【介绍JDBC、使用JDBC连接数据库、简单的工具类】</p>
</li>
<li>
<p>JDBC【PreparedStatment、批处理、处理二进制、自动主键、调用存储过程、函数】</p>
</li>
<li>
<p>JDBC【事务、元数据、改造JDBC工具类】</p>
</li>
<li>
<p>JDBC【数据库连接池、DbUtils框架、分页】</p>
<p>数据库</p>
</li>
<li>
<p>SQLServer安装和JDBC连接SQLServer</p>
</li>
<li>
<p>数据库原理</p>
</li>
<li>
<p>Oracle总结【SQL细节、多表查询、分组查询、分页】</p>
</li>
<li>
<p>Oracle总结【视图、索引、事务、用户权限、批量操作】</p>
</li>
<li>
<p>Oracle总结【PLSQL学习】</p>
</li>
<li>
<p>数据库两个神器【索引和锁】</p>
</li>
</ul>
<p>三 、学习过滤器监听器</p>
<ul>
<li>过滤器应用【编码、敏感词、压缩、转义过滤器】</li>
<li>监听器入门</li>
<li>监听器应用【统计网站人数、自定义session扫描器、踢人小案例】</li>
</ul>
<p>四 、学习AJAX、HTTP、Web前端相关知识</p>
<pre><code>HTTP</code></pre>
<ul>
<li>
<p>HTTP应用</p>
<p>AJAX</p>
</li>
<li>
<p>AJAX应用【股票案例、验证码校验】</p>
<p>XML和JSON</p>
</li>
<li>
<p>XML基本应用</p>
</li>
<li>
<p>JSON基本应用</p>
</li>
</ul>
<p>五 、做一两个小项目练手</p>
<ul>
<li>Web开发模式【Mode I 和Mode II的介绍、应用案例】</li>
<li>用户登陆注册【JDBC版】</li>
<li>购物车【JavaWeb小项目、简单版】</li>
<li>【JavaWeb】客户关系管理系统</li>
<li>【JavaWeb】权限管理系统</li>
<li>图书管理系统【部署开发环境、解决分类、图书、前台页面模块】</li>
<li>图书管理系统【用户、购买、订单模块、添加权限】</li>
<li>【JavaWeb】图书管理系统【总结】</li>
</ul>
<p>六 、是否要学习JSP(选学)</p>
<ul>
<li>JSP第一篇【JSP介绍、工作原理、生命周期、语法、指令、行为】</li>
<li>JSP第二篇【内置对象的介绍、4种属性范围、应用场景】</li>
<li>JSP第三篇【JavaBean的介绍、JSP的行为--JavaBean】</li>
<li>JSP第四篇【EL表达式介绍、获取各类数据、11个内置对象、执行运算、回显数据、自定义函数、fn方法库】</li>
<li>JSP第五篇【JSTL的介绍、core标签库、fn方法库、fmt标签库】</li>
<li>JSP第六篇【自定义标签之传统标签】</li>
</ul>
<p>七 、Spring学习(最终)</p>
<pre><code>入门</code></pre>
<ul>
<li>
<p>学习工厂模式和代理模式</p>
</li>
<li>
<p>Spring【依赖注入】</p>
</li>
<li>
<p>Spring【AOP模块】</p>
</li>
<li>
<p>Spring【DAO模块】</p>
</li>
<li>
<p>Spring IOC知识点一网打尽！【总结篇】</p>
</li>
<li>
<p>Spring AOP就是这么简单啦【总结篇】</p>
</li>
<li>
<p>Synchronized锁在Spring事务管理下，为啥还线程不安全？</p>
</li>
<li>
<p>SpringMVC入门</p>
</li>
<li>
<p>SpringMVC【开发Controller】</p>
</li>
<li>
<p>详解SpringMVC【参数绑定、数据回显、文件上传】</p>
</li>
<li>
<p>SpringMVC【校验器、统一处理异常、RESTful、拦截器】</p>
<p>进阶</p>
</li>
<li>
<p>SpringBoot自动配置</p>
</li>
<li>
<p>SpringDataJPA</p>
</li>
</ul>
', '134.195.101.21', 37323, 0, 4, '2021-08-01 00:39:43', '2021-08-01 00:39:43', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (2, 4, 2, null, null, null, null, '<p>js没有纯整型，只有Number类型，实际是8字节Double，大数只要超过9223372036854775807 在js里都会丢失精度。</p>
<p> </p>
', '134.195.101.21', 35283, 0, 0, '2021-08-01 00:42:35', '2021-08-01 00:42:35', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (3, 4, 1, null, null, null, null, '我感觉不应该学到Spring就结束了，虽然到这个程度已经完全可以找工作了，但是技术在慢慢淘汰，最好在掌握一点其它框架MVS什么的，还有白盒测试等', '134.195.101.21', 50241, 0, 0, '2021-08-01 00:43:00', '2021-10-03 21:39:33', '2021-10-03 21:39:33', 1, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (4, 4, 3, null, null, null, null, '', '134.195.101.21', 51303, 0, 0, '2021-08-01 00:44:07', '2021-08-01 00:44:31', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (5, 5, 4, null, null, null, null, '<p>现在 Spring 越来越大，都开始使用 Gradle 构建了，支持的东西越来越多，这就导致大多数程序员对 Spring 的体系及结构都一知半解，搞得新手都分不清楚到底哪种使用方式是对的，这归根到底就是因为</p>
<ol>
<li>对 Spring 的版本变更不清楚</li>
<li>对 Spring 和 J2EE 规范的关系不清楚</li>
<li>对 Spring 那堆配置和注解背后的原理不清楚</li>
</ol>
<p>你可能知道 DI 是个什么概念，但你可能不知道 DI 的正确使用方式：</p>
<ol>
<li>你也许不知道 Spring 有自己的测试体系，我们可以直接使用</li>
<li>Spring 的事务管理优越在哪里，和 Hibernate 自己的事务管理有啥区别，怎么配置才对。</li>
<li>Spring 为啥提倡非侵入式（non-invasive）设计，又是从哪个版本开始这么干的，起因是什么</li>
<li>Spring 那些注解的使用原理和适用场景是什么，哪些是Spring 自己的注解，哪些是 J2EE DI 的标准注解，使用哪个好，为什么好。<br />
...........</li>
</ol>
<p>上述的一切，当你把 Spring 官方提供的 Spring Reference 看的差不多了，也就明白了，大概 500 多页吧。</p>
<p>Spring 越来越大，衍生出其他的分支项目，虽然臃肿，但如果你知道如何筛选自己想要的功能，就不会臃肿，反而会很简洁，例如：</p>
<ol>
<li>你想实现 Rest 服务，那么 Spring MVC 就预置了这个功能，你没必要再去使用 CXF / Restlet 之类的 Rest 框架，还得忙着想怎么和 Spring 整合，这样，Struts 就出局了，Rest 框架也省了。</li>
<li>你想实现权限功能，那么 Spring Security 可以替你搞定，你没必要使用 Apache Shiro 来做，也没必要苦逼地自己设计，而且人家还原生支持 OAuth 和 SAML</li>
<li>你不想苦逼地写 DAO, 那么 Spring Data 可以替你做，这些 boilerplate code 全部替你实现了，而且对 JPA 或 NO-SQL 的支持也是相当方便。</li>
<li>你无法忍受也无法记住 spring 的配置方式和配置逻辑，你只想专心写自己的业务代码而不愿关心工具到底如何配置，那么 SpringBoot 可以搞定一切。</li>
</ol>
<p>...........</p>
<p>其他的，还有很多很多，你只需要记住，是不是臃肿，很大程度上是由你的认知和使用能力决定的，不是框架本身，具体如何学习这个优秀的框架，建议：</p>
<ol>
<li>视频教程点到为止，不可全信，网上流传的课程，本身就有错误存在</li>
<li>各种帖子看看就好</li>
<li>有问题，先去查阅 Spring Reference，懂原理才能游刃有余</li>
</ol>
<p>1.Spring Roo 和 Spring Boot 都是 Spring 组件，没有演变关系</p>
<p>2.基于 SpringBoot 的 micro-service 架构目前在国外很流行，学习 SpringBoot 尤为必要</p>
<p>3.推荐使用 Spring Boot，选择 Spring Roo 还是 Spring Boot，引用一段话如下：</p>
<p>First, whether you use Spring Boot or Spring Roo, the reality is you''re using Spring. So to answer your question of whether you''d be able to use other Spring Framework components...yes, absolutely. Again, Spring Boot <em>is</em> Spring. Spring Roo <em>is</em> Spring. They''re just different approaches to simplifying Spring development. Now, choosing between Spring Boot and Spring Roo. I was once a fan of Spring Roo, but Spring Boot outshines it in so many ways. Spring Roo was big on code generation and used aspects to perform some of its magic. It also forced you into a design model that you may or may not feel comfortable with. Spring Boot, on the other hand, uses no code generation and does not force any particular design choice. It is primarily autoconfiguration saving you from having to write a lot of common configuration yourself In short...Go with Spring Boot. You won''t regret it.</p>
', '134.195.101.21', 54481, 0, 0, '2021-08-01 00:47:16', '2021-08-24 21:03:34', '2021-08-24 21:03:34', 5, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (6, 5, 5, null, null, null, null, '<p>1、跟你说：这个bug没什么问题啊，你那边是不是搞错了，你再试试。</p>
<p>实际上：刚偷偷改好这个bug，反正他们也不懂，我不背锅。</p>
<p>2、跟你说：这个功能啊，我正在改呢，你再等等</p>
<p>实际上：啊呀，我把这事儿忘了，一会儿做完这个就做那个。</p>
<p>3、跟你说：你这个需求不是很合理啊？</p>
<p>实际上：太复杂了听不懂，不好做，不想做。</p>
<p>4、嘴上说：这个功能等下个版本时候再考虑加进去吧</p>
<p>实际上：这么多事儿呢，根本不想做。</p>
<p>5、嘴上说：我测试没问题啊，你试过了么？</p>
<p>实际上：到底会不会用我的程序啊！</p>
<p>6、嘴上说：我的时间排满了最近</p>
<p>实际上：我不想做</p>
<p>7、嘴上说：我有优先级更高的任务</p>
<p>实际上：我不想做</p>
<p>8、嘴上说：我在调试程序</p>
<p>实际上：我不想做</p>
<p>9、嘴上说：你这个需求不清楚</p>
<p>实际上：我不想做</p>
<p>10、嘴上说：你确定用户真的需要这个需求吗？</p>
<p>实际上：又是你自己为了完成任务纂出来的吧，做出来没人用老子跟你拼了！</p>
<p>11、嘴上说:在吗？</p>
<p>实际上：要延期了</p>
<p>12、嘴上说：你最近忙吗累吗要不要喝饮料？</p>
<p>实际上：要延期了</p>
<p>13、嘴上说：下次肯定不延期了</p>
<p>实际上：不管下次，这次先应付过去再说</p>
<p>1、嘴上说：你先做着吧</p>
<p>实际上：我也不知道我到底要什么，但你做出来之后我就知道自己不要什么了</p>
<p>2、嘴上说：你是专业的你来吧</p>
<p>实际上：我也看不懂你搞什么呢，你自己看着办吧</p>
<p>3、嘴上说：有个地方需要稍微调整一下</p>
<p>实际上：需要有很大的改动之前的版本就废掉吧你重新做一次给我看看。</p>
<p>4、嘴上说：没用户因为运营没做好/体验不好因为技术实现难/界面难看是设计做的不好</p>
<p>实际上：反正不是我的锅</p>
<p>5、嘴上说：你的建议不错我也是这么想的</p>
<p>实际上：我去说的太有道理了赶紧去提需求了</p>
<p>6、嘴上说：还在加班呢，辛苦了啊</p>
<p>实际上：又在写bug呢？</p>
<p>7、嘴上说：这个功能需要这么久吗？</p>
<p>实际上：你技术不行吧？</p>
<p>8、嘴上说：这个功能很着急，下周就要完成</p>
<p>实际上：其实下个月才上线，但我知道你们肯定会拖延</p>
', '134.195.101.21', 53723, 0, 0, '2021-08-01 00:47:47', '2021-08-24 21:03:26', '2021-08-24 21:03:26', 5, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (7, 6, 4, null, null, null, null, '你在说些什么花里胡哨的', '134.195.101.21', 53865, 0, 0, '2021-08-01 00:50:14', '2021-08-01 00:50:14', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (8, 6, 6, null, null, null, null, '<p><del>功能也就那样</del></p>
', '134.195.101.21', 55533, 0, 0, '2021-08-01 00:51:26', '2021-08-01 00:51:26', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (9, 3, 7, null, null, null, null, '<p>系统的内存可大略分为3个区域，即系统区(OS)、程序区(Program)、和数据区(Data)。</p>
<p>当程序执行时，程序代码会加载到内存中的程序区，数据暂时存储在数据区中。</p>
', '134.195.101.21', 33487, 0, 1, '2021-08-01 00:52:52', '2021-08-01 00:52:52', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (10, 4, 4, null, null, null, null, ':fadai::fadai::fadai:', '134.195.101.21', 47779, 0, 0, '2021-08-01 00:55:02', '2021-08-01 00:55:02', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (11, 7, 8, null, null, null, null, '', '134.195.101.21', 52279, 0, 0, '2021-08-01 01:03:34', '2021-08-02 15:14:00', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (12, 7, 8, null, null, null, null, '按大分计算 BLG SN同样8分 按小分计算 同样5分 胜负关系SN 胜 BLG 为什么 BLG确认晋级季后赛 SN 要争夺 看不懂啊', '134.195.101.21', 55519, 0, 0, '2021-08-01 01:09:31', '2021-08-01 01:09:31', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (13, 7, 8, null, null, null, null, '有大佬帮忙解读一下么:yiwen::yiwen::yiwen:', '134.195.101.21', 49315, 0, 0, '2021-08-01 01:09:58', '2021-08-01 01:09:58', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (14, 7, 8, null, null, null, null, ':liulei:', '134.195.101.21', 48863, 0, 0, '2021-08-01 01:10:09', '2021-08-01 01:10:09', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (15, 8, 9, null, null, null, null, '<p>家人们，今天才下好，有一起玩的吗</p>
', '134.195.101.21', 58023, 0, 0, '2021-08-01 01:15:35', '2021-08-02 15:13:25', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (16, 8, 9, null, null, null, null, '不要太强的', '134.195.101.21', 47549, 0, 0, '2021-08-01 01:15:43', '2021-08-01 01:15:43', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (17, 8, 9, null, null, null, null, 'LOL', '134.195.101.21', 41125, 0, 0, '2021-08-01 01:16:07', '2021-08-01 01:16:07', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (18, 9, 9, null, null, null, null, '加我QQ112355478', '134.195.101.21', 40433, 0, 0, '2021-08-01 01:36:09', '2021-08-01 01:36:10', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (20, 4, 10, null, null, null, null, '<p><span id="member" value="1">@PDA</span>    <span id="member" value="2">@Jerome</span>   </p>
', '42.224.227.202', 17854, 0, 1, '2021-08-01 12:40:17', '2021-08-24 21:07:34', '2021-08-24 21:07:34', 4, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (21, 4, 10, null, null, null, null, '<span id="member" value="2">@Jerome</span>  <span id="member" value="1">@PDA</span>', '42.224.227.202', 17828, 0, 0, '2021-08-01 12:40:48', '2021-08-01 12:40:48', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (22, 10, 11, null, null, null, null, '<table>
<thead>
<tr>
<th align="left">那位大哥有雷霆1.57版本的给发下 谢谢了那位大哥有雷霆1.57版本的给发下 谢谢了那位大哥有雷霆1.57版本的给发下 谢谢了</th>
</tr>
</thead>
</table>
', '134.195.101.21', 34801, 0, 0, '2021-08-01 14:06:40', '2021-08-02 15:10:53', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (23, 11, 11, null, null, null, null, '私发给你', '134.195.101.21', 35793, 0, 0, '2021-08-01 14:08:43', '2021-08-01 14:08:43', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (24, 11, 12, null, null, null, null, '<p>下载的V281.107版本，请问怎么没有低温舱呢？有什么办法解决吗？要不抓龙带回家很麻烦啊</p>
', '134.195.101.21', 40309, 0, 0, '2021-08-01 14:11:38', '2021-08-02 15:40:36', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (25, 11, 12, null, null, null, null, '求大神解答', '134.195.101.21', 53679, 0, 0, '2021-08-01 14:11:45', '2021-08-01 14:11:45', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (26, 12, 13, null, null, null, null, '<p>这个是网络游戏，是端游，不是单机游戏，游戏目前只有大逃杀和乱斗，金色以上皮肤只能RMB购买，目前官方宣传：购买游戏限时免费送妖刀姬，给人感觉后续角色可能要钱，游戏官方保留了先行者测试进度，这次不删档能继承（这会导致封测玩家比新玩家多很多游戏币，游戏币主要用来解锁人物的技能和符文）符文的高低决定了你钩锁的长度、闪避的使用次数、大招的充能时间，游戏目前是买断门槛钱+通行证+皮肤+开宝箱收费，每局结束后并不会产生游戏币。哎，这是我几天观望下来收集的信息，也算为大家贡献了。</p>
', '134.195.101.21', 54343, 0, 0, '2021-08-02 01:55:02', '2021-08-02 15:01:56', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (28, 13, 13, null, null, null, null, '<p></p>我已经后悔买了，这游戏完全不是我的菜，又不能退款。', '134.195.101.21', 38807, 0, 0, '2021-08-02 02:04:52', '2021-08-02 02:04:52', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (29, 13, 13, null, null, null, null, '<p></p>买断制还有内购，什么垃圾策划', '134.195.101.21', 59109, 0, 0, '2021-08-02 02:05:00', '2021-08-02 02:05:00', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (30, 13, 13, null, null, null, null, '<p></p>买断制还加通行证，又是充钱抽奖的，不愧是网易吃相难看', '134.195.101.21', 34885, 0, 0, '2021-08-02 02:05:08', '2021-08-02 02:05:08', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (31, 14, 13, null, null, null, null, '就是割玩家韭菜。中国大厂3A大ZUO。3A大作国游暂时是不可能有的，毕竟这种杀猪的3A大ZUO圈钱不香吗？', '134.195.101.21', 44901, 0, 0, '2021-08-02 02:06:51', '2021-08-02 02:06:51', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (33, 14, 13, null, null, null, null, '就是割玩家韭菜。中国大厂3A大ZUO。3A大作国游暂时是不可能有的，毕竟这种杀猪的3A大ZUO圈钱不香吗？', '134.195.101.21', 57501, 0, 0, '2021-08-02 02:07:20', '2021-08-02 02:07:20', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (34, 12, 13, null, null, null, null, '只能聊LOL和CSGO吗', '134.195.101.21', 41643, 0, 0, '2021-08-02 02:08:28', '2021-08-02 02:08:28', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (35, 14, 14, null, null, null, null, '<table>
<thead>
<tr>
<th align="left">想去官网登录看看账号信息，结果卡半天登录不进去。猪场那么大，不觉得丢脸吗！？而且还不让退款，猪场还真做的出来！</th>
</tr>
</thead>
</table>
', '134.195.101.21', 36251, 0, 0, '2021-08-02 02:10:08', '2021-08-02 15:02:51', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (36, 15, 15, null, null, null, null, '<p>就是不想玩了，之前s7上过钻是唯一骄傲的了，然后就是黄金仔了，真心地喜欢这个号，但是大学毕业了，没时间玩了，想问皮肤细节的评论区或私聊都可以，可以走咸鱼。（我所指的全英雄是这145英雄加上1万精粹，所以我标题说全英雄，实际4万精粹，都理解一下）q:2574419154，v:13306323325。</p>
', '134.195.101.21', 55881, 0, 0, '2021-08-02 02:18:30', '2021-08-02 11:01:29', '2021-08-02 11:01:29', 2, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (37, 15, 15, null, null, null, null, '25颗宝石，自己赞赞马上就够了', '134.195.101.21', 54067, 0, 0, '2021-08-02 02:20:35', '2021-08-02 02:20:35', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (38, 2, 16, null, null, null, null, '<p>有什么想加的板块、分类、功能都可以私信我哟~</p>
', '221.13.140.87', 54088, 0, 0, '2021-08-02 11:25:24', '2021-08-02 11:25:24', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (39, 12, 16, null, null, null, null, '永劫无间', '134.195.101.21', 33519, 0, 0, '2021-08-02 14:34:25', '2021-08-02 14:34:25', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (40, 12, 16, null, null, null, null, '这种新游应该有', '134.195.101.21', 56469, 0, 0, '2021-08-02 14:34:36', '2021-08-02 14:34:36', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (41, 12, 16, null, null, null, null, '各种单机什么的3A', '134.195.101.21', 46303, 0, 0, '2021-08-02 14:34:46', '2021-08-02 14:34:46', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (42, 12, 16, null, null, null, null, '荒野大嫖客这些', '134.195.101.21', 32831, 0, 0, '2021-08-02 14:34:54', '2021-08-02 14:34:54', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (43, 16, 17, null, null, null, null, '<p>我想问一下哈 这次通行证是因为只给25个至臻点而且皮肤不好看没买 现在看了一下任务栏已经存了1800个代币了 活动就剩一周了 我如果现在买的话400个代币是挺简单的 主要问题是里程碑里的至臻点还能搞到不能 还有这个2020至臻点什么时候过期啊 如果时间长的话 再搞下一个通行证25个至臻点还能换一个至臻皮肤 我本来有50个 就这几个问题 求求哪位大佬帮我解答一下 谢谢大哥</p>
', '134.195.101.21', 33285, 0, 0, '2021-08-02 14:37:28', '2021-08-02 14:37:28', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (44, 16, 17, null, null, null, null, '我平时玩的时间还是挺多的 里程碑任务如果可以同时完成好几个 我觉得一星期并不难 问题就是2020至臻点什么时候过期和至臻皮肤返场 先提前谢谢各位大佬了:qiang:', '134.195.101.21', 40221, 0, 0, '2021-08-02 14:38:16', '2021-08-02 14:38:16', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (45, 16, 16, null, null, null, null, '我感觉应该写一点可以覆盖大部分的，比如单机游戏，3A这些。反正代码不是我写，你就慢慢掉头发吧', '134.195.101.21', 53191, 0, 0, '2021-08-02 14:41:00', '2021-08-02 14:41:00', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (46, 16, 14, null, null, null, null, '对', '134.195.101.21', 42205, 0, 0, '2021-08-02 14:41:36', '2021-08-02 14:41:36', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (47, 16, 14, null, null, null, null, '就是垃圾', '134.195.101.21', 41829, 0, 0, '2021-08-02 14:41:43', '2021-08-02 14:41:43', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (48, 17, 18, null, null, null, null, '<p>等个妹妹，我脾气好，温柔。lol，pubg，永劫都可以玩。联盟电一钻石水平，其他的也还行。休息了可以打游戏，平时可以聊聊天。</p>
', '134.195.101.21', 35599, 0, 0, '2021-08-02 15:00:54', '2021-08-02 15:00:54', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (49, 17, 18, null, null, null, null, 'd', '134.195.101.21', 55777, 0, 0, '2021-08-02 15:01:04', '2021-08-02 15:01:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (50, 14, 18, null, null, null, null, '怕是一辈子也找不到', '134.195.101.21', 46685, 0, 0, '2021-08-02 15:03:24', '2021-08-02 15:03:24', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (51, 10, 16, null, null, null, null, '有没有什么好玩的功能，加一点', '134.195.101.21', 35491, 0, 0, '2021-08-02 15:11:28', '2021-08-02 15:11:28', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (52, 11, 16, null, null, null, null, '方舟', '134.195.101.21', 50495, 0, 0, '2021-08-02 15:12:47', '2021-08-02 15:12:47', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (53, 7, 16, null, null, null, null, '编程计算机是什么鬼，里面都是什么妖魔鬼怪', '134.195.101.21', 46833, 0, 0, '2021-08-02 15:17:02', '2021-08-02 15:17:02', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (54, 18, 19, null, null, null, null, '<p>王者荣耀就是个垃圾游戏，所有腾讯游戏都是圈钱的游戏，还**的公平对战平台，毛线的公平，公平这两字好意思用。连胜之后必连败，然后赢一局继续连败。全是幕后操作，最大得演员团体算在天美，网上公布的演员号封停，全是天美自己的，有意思吗。见过最不公平的对战游戏就是王者荣耀，最垃圾。</p>
', '134.195.101.21', 57345, 0, 0, '2021-08-02 15:20:13', '2021-08-02 15:20:13', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (55, 19, 19, null, null, null, null, '有道理', '134.195.101.21', 41469, 0, 0, '2021-08-02 15:21:19', '2021-08-02 15:21:19', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (56, 19, 20, null, null, null, null, '<p>我发现 王者荣耀 这个垃圾游戏越来越垃圾了，莫名其妙扣我4分信誉分，我要求给我扣分理由，真TMD不要B脸了。只要是付费玩家就是你们的爹吧</p>
', '134.195.101.21', 39173, 0, 0, '2021-08-02 15:22:13', '2021-08-02 15:22:13', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (57, 19, 20, null, null, null, null, '举报VIP高的就没成功过', '134.195.101.21', 47409, 0, 0, '2021-08-02 15:23:41', '2021-08-02 15:23:41', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (58, 20, 20, null, null, null, null, '我第一个号就被封号10年，只能说什么JB垃圾废物游戏', '134.195.101.21', 37627, 0, 0, '2021-08-02 15:25:44', '2021-08-02 15:25:44', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (59, 20, 21, null, null, null, null, '<p><a href="http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhxlM0gIy4aw6IqIox4G1IDB2g5Oufqc14OYxzvrKRgXBwLh10OcK1uw5gNztFlBXWMg4emOlHf+gGiWHS6NDCwjbUzqvXNkBMBRCv8Z5+b6MwNe85MVb1FSF7RoRk7j+TJ9R422zofOr8G7v/gFAux4D6yvHPQdzY95XNIJdrjPOjHhKC2UoUT3zJImmE+mewnY9qHh6BM0y">https://www.bilibili.com/video/BV1jT4y1P7bH?from=search  &amp; seid=15714202017370179864</a></p>
<p>视频里面的Katana到底是个什么玩意？:yiwen:</p>
', '134.195.101.21', 59315, 0, 0, '2021-08-02 15:27:36', '2021-08-02 15:27:36', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (60, 21, 22, null, null, null, null, '<p>垃圾荣耀这个健康系统哪个死妈弄的玩意？</p>
', '134.195.101.21', 36519, 0, 0, '2021-08-02 15:34:28', '2021-08-02 15:34:28', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (61, 21, 22, null, null, null, null, '王者是个垃圾游戏，抄袭', '134.195.101.21', 38365, 0, 0, '2021-08-02 15:35:05', '2021-08-02 15:35:05', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (62, 21, 22, null, null, null, null, '匹配机制真垃圾', '134.195.101.21', 57895, 0, 0, '2021-08-02 15:35:23', '2021-08-02 15:35:23', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (63, 22, 22, null, null, null, null, '抄袭我也爱', '134.195.101.21', 51719, 0, 0, '2021-08-02 15:36:15', '2021-08-02 15:36:15', '2021-08-09 15:28:14', 2, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (64, 23, 23, null, null, null, null, '<p>有没有大佬带萌新一下</p>
', '134.195.101.21', 40353, 0, 0, '2021-08-02 16:30:09', '2021-08-02 16:30:09', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (65, 24, 24, null, null, null, null, '<p>碰见赏金猎人，把我买的马打死了，然后我也死了，复活了以后发现马没有了，地图上只显示一个马鞍和一匹菜的不行的新马，去买马的地方也没有了，等于买的马花了四百多死一次就没有了，我还只能重新读档，玩个游戏现在还得没事存个档以防万一。<br />
还有就是假如我打了一马屁股的动物皮，然后不小心死了，复活以后皮也没有了</p>
', '134.195.101.21', 55591, 0, 0, '2021-08-02 16:32:29', '2021-08-02 16:32:29', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (66, 24, 23, null, null, null, null, '加萌新群，然后蹭车', '134.195.101.21', 48971, 0, 0, '2021-08-02 16:33:12', '2021-08-02 16:33:12', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (67, 24, 16, null, null, null, null, '搞个资源帖，分享资源，比如分享一些种子游戏什么的', '134.195.101.21', 58213, 0, 0, '2021-08-02 16:35:30', '2021-08-02 16:35:30', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (68, 25, 25, null, null, null, null, '<pre><code>从昨天开始，打开手机，满屏都是吴亦凡，凡凡，牙签……还以为他得金牌了，原来是淫牌，哈哈。
    不过我倒是很有八卦的欲望，八卦的内容不是男女那些花花事，而是明星们的“背景”，我说的不是他们不是背后有谁，而是“上面”有谁。
</code></pre>
', '134.195.101.21', 49015, 0, 0, '2021-08-02 16:37:52', '2021-08-02 16:39:37', '2021-08-02 16:39:37', 25, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (69, 25, 16, null, null, null, null, '<p>PC首页整体缩小一点，电脑屏幕小一点的，简直铺满了整个屏幕.</p><p>参考微博，三栏结构的确更符合，但咱弄的太大了，看起来很不得劲。</p>首页和内容页的大小还不一样，是不好的，建议一下。', '134.195.101.21', 50147, 0, 0, '2021-08-02 16:47:00', '2021-08-02 16:47:00', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (70, 25, 26, null, null, null, null, '<h1>可v可q</h1>
', '134.195.101.21', 56641, 0, 0, '2021-08-02 16:50:12', '2021-08-03 12:02:02', '2021-08-03 12:02:02', 2, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (71, 25, 21, null, null, null, null, '一起玩吗', '134.195.101.21', 56349, 0, 0, '2021-08-02 20:21:25', '2021-08-02 20:21:25', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (72, 26, 27, null, null, null, null, '<p>下了小白插件包 装ScriptHookVDotNet以后点线下模式加载一会儿后就闪退 删了就又能进了 求助大佬这种情况怎么办 游戏和插件版本都是最新的</p>
', '134.195.101.21', 46489, 0, 0, '2021-08-02 20:29:10', '2021-08-02 20:29:10', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (73, 26, 16, null, null, null, null, '做一个资源分享站，专门分享一些游戏资源', '134.195.101.21', 49443, 0, 0, '2021-08-02 20:32:09', '2021-08-02 20:32:09', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (74, 26, 28, null, null, null, null, '<p>今天打着打着休闲 碰到一个外国人 说要加我好友 加了后说了些有的没的 然后就要跟我换皮肤 虽然我知道大概率是骗子 但是我在想交易中间有什么漏洞么。。。。</p>
', '134.195.101.21', 39167, 0, 0, '2021-08-02 20:34:08', '2021-08-02 20:34:08', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (75, 27, 29, null, null, null, null, '<p>换一个工作，换一种心情。</p>
', '134.195.101.21', 52635, 0, 0, '2021-08-02 20:40:11', '2021-08-02 20:40:11', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (76, 27, 28, null, null, null, null, 'steam交易不是要双方都点同意的吗', '134.195.101.21', 40361, 0, 0, '2021-08-02 20:40:54', '2021-08-02 20:40:54', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (77, 27, 28, null, null, null, null, '交易的时候可以看见对方皮肤，可以确定一下皮肤品质和价格在交易', '134.195.101.21', 54521, 0, 0, '2021-08-02 20:41:56', '2021-08-02 20:41:56', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (78, 27, 16, null, null, null, null, '大佬也可以偶尔发一些知识帖子，毕竟网站开发这一技术还是吃香的，我也想学:leiben:', '134.195.101.21', 49763, 0, 0, '2021-08-02 20:45:29', '2021-08-02 20:45:29', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (79, 3, 30, null, null, null, null, '<p>付费功能测试</p>
', '134.195.101.21', 53145, 0, 0, '2021-08-02 20:50:23', '2021-08-02 21:38:37', '2021-08-02 21:38:37', 3, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (80, 25, 31, null, null, null, null, '<p>一开始提示缺少xinput1_3，下载后又提示0xc00007b，百度了一下后补安装了DX9.0c还是这样？大神们帮帮忙是咋回事？ 我玩2077可以运行</p>
', '134.195.101.21', 43483, 0, 0, '2021-08-03 16:25:00', '2021-08-09 15:22:58', '2021-08-09 15:22:58', 1, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (81, 28, 32, null, null, null, null, '<p>第一次玩，不知道有没有必要弄一堆mod。</p>
', '134.195.101.21', 52733, 0, 0, '2021-08-03 16:27:16', '2021-08-03 16:27:16', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (82, 28, 31, null, null, null, null, '系统问题吧', '134.195.101.21', 46873, 0, 0, '2021-08-03 16:28:10', '2021-08-03 16:28:10', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (83, 28, 29, null, null, null, null, '写什么日记?', '134.195.101.21', 40767, 0, 0, '2021-08-03 16:28:25', '2021-08-03 16:28:25', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (84, 28, 16, null, null, null, null, '网站太简洁了，搞得花里胡哨点，那个论坛这么简洁', '134.195.101.21', 55163, 0, 0, '2021-08-03 16:29:18', '2021-08-03 16:29:18', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (85, 28, 33, null, null, null, null, '<p>近日，根据R星母公司Take-Two数据显示，《GTA5》的销量已超过1.5亿份，达到了一个新的里程碑。</p>
<p>该数据来自Take-Two公司近日发布的2022财年第一季度财报,游戏销量相较于5月的报告中提到的1.45亿份有所增加。</p>
<p>据Take-Two公司称，该游戏最初于2013年9月发布，是史上零售额达到10亿美元速度最快的娱乐产品。</p>
<p>根据NPD Group的数据，无论是单位还是美元销售额来看，这款游戏都是美国近十年来最畅销的游戏。</p>
<p>同时，在本周一举行的Take-Two 2022财年第一季度财务会议上，该公司总裁透露旗下的2K正在打造一款全新的游戏作品，并计划在2022年4月前推出。</p>
<p>总裁Karl Slatoff说道：“本月晚些时候，2K将公布另一个令人兴奋的新系列的细节内容，计划在本财年内推出。”</p>
<p>在周一的财报电话会议上，Take-Two还表示，将两款“沉浸式”游戏的发布时间推迟到本财年的晚些时候，而不是原先的计划。</p>
<p>该公司首席执行官Strauss Zelnick在5月份表示，计划在本财年推出21款游戏，其中包括4款沉浸式游戏——其中两款来自“成熟”的授权游戏，另外两款来自“新”游戏。</p>
', '134.195.101.21', 52191, 0, 0, '2021-08-03 16:31:13', '2021-08-03 16:31:13', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (86, 29, 34, null, null, null, null, '<p>绝地求生现在需要加速器吗，哪个比较好，纯小白一个</p>
', '134.195.101.21', 53229, 0, 0, '2021-08-03 16:34:40', '2021-08-03 16:34:40', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (87, 29, 34, null, null, null, null, '有人吗', '134.195.101.21', 55739, 0, 0, '2021-08-03 16:34:47', '2021-08-03 16:34:47', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (88, 30, 34, null, null, null, null, '奇游吧 需要的话留邮箱 我发周卡给你体验', '134.195.101.21', 49195, 1, 0, '2021-08-03 16:36:34', '2021-08-03 16:36:34', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (89, 30, 34, null, null, null, null, '加速效果贼好', '134.195.101.21', 58853, 0, 0, '2021-08-03 16:36:38', '2021-08-03 16:36:38', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (90, 30, 34, null, null, null, null, '找我买也便宜', '134.195.101.21', 51927, 0, 0, '2021-08-03 16:36:51', '2021-08-03 16:36:51', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (91, 31, 34, 88, 30, null, null, '一般多少钱？', '134.195.101.21', 50845, 0, 0, '2021-08-03 16:38:38', '2021-08-03 16:38:38', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (92, 31, 35, null, null, null, null, '<p>这种战绩是人能打出来的？多长时间了不见封。</p>
', '134.195.101.21', 49965, 0, 0, '2021-08-03 16:39:48', '2021-08-03 16:39:48', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (93, 31, 35, null, null, null, null, '还带俩陪玩小号。', '134.195.101.21', 57527, 0, 0, '2021-08-03 16:40:18', '2021-08-03 16:40:18', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (94, 31, 36, null, null, null, null, '', '134.195.101.21', 58463, 0, 0, '2021-08-03 16:42:48', '2021-09-07 21:48:29', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (95, 10, 36, null, null, null, null, '不知道', '134.195.101.21', 57145, 0, 0, '2021-08-03 16:44:07', '2021-08-03 16:44:07', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (96, 10, 35, null, null, null, null, '封不封号和战绩没啥关系。我两年前大号莫名其妙被永封了，最近回归玩小号没几天又被封了，唯一说开过的辅助类的东西就是游戏加加的滤镜和鼠标驱动自带的鼠标连点了（拿m16的时候可以当全自动打），满大街那么多挂不封封我我是没想到的', '134.195.101.21', 58167, 0, 0, '2021-08-03 16:44:48', '2021-08-03 16:44:48', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (97, 10, 37, null, null, null, null, '<p>wv群 群里人不多但是每天都有喊开黑组队 再也不用担心没对友了野排碰见sb队友 来的私聊 欢迎欢迎</p>
', '134.195.101.21', 39905, 0, 0, '2021-08-03 16:46:15', '2021-08-03 16:46:15', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (98, 8, 16, null, null, null, null, '怪物猎人', '134.195.101.21', 57515, 0, 0, '2021-08-03 16:48:25', '2021-08-03 16:48:25', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (99, 8, 38, null, null, null, null, '<p>大剑有像丧天彪，喵小西，猛男这种拿武器讲解怪物ai拆招的up吗，被头来剑法酷到了，但是很少看到偏新手进阶向的，好多都是ta炫技，想重新开荒一个怪一个怪的打，估计解锁斗技能场要点时间</p>
', '134.195.101.21', 54089, 0, 0, '2021-08-03 16:49:06', '2021-08-06 15:33:43', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (100, 32, 38, null, null, null, null, '<p>头来熟悉怪的动作，知道龙车的预定停车距离，知道哪些近身招式的攻击范围能躲掉提前蓄力就可以了，除了少部分怪有屁股和侧身突进，大部分怪在打你之前都是会转向把头朝着你后才开始出下一招。</p>TA那更多的是算刀硬直，知道动作后已经可以头来但打完后没进硬直自己也有概率被打飞。视频有些没蓄之类的小伤害和不追都是故意的，留到下一招再触发硬直。', '134.195.101.21', 40957, 0, 0, '2021-08-03 16:50:35', '2021-08-03 16:50:35', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (101, 32, 39, null, null, null, null, '<p>坐等正式版爆肝</p>
', '134.195.101.21', 56411, 0, 0, '2021-08-03 16:51:57', '2021-08-06 15:30:47', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (102, 33, 16, null, null, null, null, '搞一个资讯帖，发一些最新消息', '134.195.101.21', 35135, 0, 0, '2021-08-03 16:59:28', '2021-08-03 16:59:28', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (103, 33, 39, null, null, null, null, '还行', '134.195.101.21', 51473, 0, 0, '2021-08-03 20:06:52', '2021-08-03 20:06:52', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (104, 33, 40, null, null, null, null, '<p>20年图片这种高质量的大型作品连出了3部，今年却一整年都很寂静</p>
', '134.195.101.21', 44831, 0, 0, '2021-08-04 00:19:58', '2021-08-10 23:04:32', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (105, 33, 40, null, null, null, null, '发点别人的图', '134.195.101.21', 46861, 0, 0, '2021-08-04 00:20:39', '2021-08-04 00:20:39', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (106, 12, 16, null, null, null, null, '为什么右边的推荐内容一直是空呢，加一点东西吧，不然不好看的', '134.195.101.21', 56565, 0, 0, '2021-08-04 00:25:41', '2021-08-04 00:25:41', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (107, 34, 41, null, null, null, null, '<p>编程计算机里面谁最牛逼啊</p>
', '134.195.101.21', 58935, 0, 0, '2021-08-04 18:53:39', '2021-08-07 16:48:40', '2021-08-07 16:48:40', 34, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (109, 35, 41, null, null, null, null, '盲猜thread', '134.195.101.21', 50997, 0, 0, '2021-08-04 20:32:07', '2021-08-04 20:32:07', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (110, 35, 42, null, null, null, null, '<p>目前用控制台刷出来的装备都是随机或者白板。。。需要自己折腾到传奇很是麻烦。。。。而且老觉得怪怪的不像原生装备。。。</p>
<p>这个MOD直接就把游戏世界内所有掉落的装备都刷成传奇装备。。。一劳永逸。。。分享给大家~（自己进游戏去体会吧，没截图意义）</p>
<p>**安装方法复制到：\\Cyberpunk 2077\\archive\\pc\\patch（没有这个文件夹就自己建立一个）<br />
**<br />
MOD文件：</p>
', '134.195.101.21', 37551, 0, 0, '2021-08-04 20:36:49', '2021-08-06 15:32:30', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (111, 35, 16, null, null, null, null, '赛博朋克', '134.195.101.21', 42533, 0, 0, '2021-08-04 20:37:10', '2021-08-04 20:37:10', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (113, 36, 42, null, null, null, null, '搞个MOD还要钱？', '134.195.101.21', 45371, 0, 0, '2021-08-04 20:39:46', '2021-08-04 20:39:46', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (114, 36, 43, null, null, null, null, '<p>1.那帮老玩家都成家退游了<br />
2.手机游戏占理市场较大<br />
3.一帮不要脸的高分段玩家打小号，弄得新手玩家没得玩，不敢玩，导致无新鲜血液注入（我朋友就是）<br />
下面这个人就是不要脸的，引以为戒，不要你玩的好就欺负新玩家，总有你玩不动的那一天。如果觉得自己牛逼就喜欢欺负菜鸟，觉得理所当然，那我没话说，一报还一报。英雄联盟也会被这帮人加速退隐。</p>
', '134.195.101.21', 37269, 0, 0, '2021-08-04 20:43:51', '2021-08-04 20:43:51', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (115, 8, 43, null, null, null, null, '不都是这样吗', '134.195.101.21', 59097, 0, 0, '2021-08-04 20:46:18', '2021-08-04 20:46:18', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (116, 8, 43, null, null, null, null, 'csgo难道不是吗，游戏如果凉了剩下的也都是高手了', '134.195.101.21', 59203, 0, 0, '2021-08-04 20:46:50', '2021-08-04 20:46:51', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (117, 8, 43, null, null, null, null, '新手得不到游戏体验', '134.195.101.21', 54567, 0, 0, '2021-08-04 20:47:05', '2021-08-04 20:47:05', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (118, 8, 44, null, null, null, null, '<p><a href="http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/owrmQ6pfU7rms2AM1SQAgiNGE3z1dAkSkPVh+tqy6Rw19XZYQEtzBFCrfl4PEJEmeFArbrsV8+obPauZal54YBavEFkpMRuyG0sUCip27GxsqVMVSGEiabwV00iBT9MzR5z8Bn4gXBxDA8Zu4mdgY0">https://docs.扣扣.com/doc/DSXBVT0d2RmNRVHRh </a>所有信息都在这个文档里面</p>
', '134.195.101.21', 34025, 0, 0, '2021-08-04 20:52:11', '2021-08-04 20:52:11', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (119, 8, 42, null, null, null, null, '一个论坛付费太过分了吧，而且也不是你做的', '134.195.101.21', 47049, 0, 0, '2021-08-04 21:25:50', '2021-08-04 21:25:50', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (120, 8, 42, null, null, null, null, '搬运一下就付费?', '134.195.101.21', 49637, 0, 0, '2021-08-04 21:26:04', '2021-08-04 21:26:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (121, 37, 16, null, null, null, null, '把网站源码给我吧', '61.158.147.207', 42585, 0, 0, '2021-08-06 12:48:03', '2021-08-06 12:48:03', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (122, 38, 45, null, null, null, null, '<p>电一区遇见TayoDj 和 Yklyhn这两个人。 赶紧举报。 除了会骂人。 就是演你们。 各种演。 抢人头。 挂架。 无缘无故骂队友。 不打团。 等人都死了。 再去送。 反正就是各种演你们。 记住。 遇见了。 千万要举报。 这样的人真的坑死你们。</p>
', '134.195.101.21', 34535, 0, 0, '2021-08-06 15:14:56', '2021-08-06 15:14:56', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (123, 39, 46, null, null, null, null, '<p>有没有人能用LOL名字查VX号或者其他信息，需要差一个，500块，谢谢</p>
', '134.195.101.21', 33843, 0, 0, '2021-08-06 15:17:33', '2021-08-06 15:17:33', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (124, 39, 36, null, null, null, null, '可能你电脑垃圾', '134.195.101.21', 54217, 0, 0, '2021-08-06 15:18:05', '2021-08-06 15:18:05', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (125, 39, 35, null, null, null, null, '这算啥', '134.195.101.21', 42779, 0, 0, '2021-08-06 15:18:24', '2021-08-06 15:18:24', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (126, 39, 33, null, null, null, null, '玩GTA吗，带你', '134.195.101.21', 50391, 0, 0, '2021-08-06 15:18:44', '2021-08-06 15:18:44', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (127, 40, 27, null, null, null, null, '私聊我', '134.195.101.21', 54735, 0, 0, '2021-08-06 15:19:55', '2021-08-06 15:19:55', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (128, 40, 24, null, null, null, null, '对', '134.195.101.21', 43177, 0, 0, '2021-08-06 15:20:18', '2021-08-06 15:20:18', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (129, 40, 22, null, null, null, null, '王者就是垃圾', '134.195.101.21', 38961, 0, 0, '2021-08-06 15:20:38', '2021-08-06 15:20:38', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (130, 40, 23, null, null, null, null, '私聊我我带你', '134.195.101.21', 55331, 0, 0, '2021-08-06 15:21:04', '2021-08-06 15:21:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (131, 40, 47, null, null, null, null, '<p>有没有想做主播的联系我 Q：2221156571</p>
', '134.195.101.21', 47163, 0, 0, '2021-08-06 15:21:48', '2021-08-06 15:22:03', '2021-08-06 15:22:03', 40, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (132, 40, 48, null, null, null, null, '<p>班德尔城区服务器在四川，这个区里面的人大多也是四川人了，这个区打个排位 在铂金三以下真的是毫无游戏体验，王者来了单排都是无能为力都能给你打成瓜皮。打不过硬是刚和四川的脾气很像啊，反正就是打不过我非要打。打的没法打了 然后我挂机反正你封任你封，我有钱 三十块钱一个我买七个号，你封七天 我一天换一个号玩，说说打野吧，打野一级打完红或者蓝BUFF到2J中路也差不多快二级了 打野在刷第二到第三波野怪的时候中路对拼基本都是残血，这个反正我在四区玩单排的时候永远来的对面的打野 ，我家打野永远是被野怪的香味蒙蔽了双眼在野区刷步数，下路双人组辅助不做眼ADC是那个经打打那个坚决不打脆皮，结果吧对面辅助打的闪现走了 自己双人路送双杀，上单都是视频看多了的 结果没那个技术， 多余的就不讲了 浪费时间 想到在四川区玩的时候 真的是范高血压</p>
', '134.195.101.21', 57535, 0, 0, '2021-08-06 15:22:46', '2021-08-06 15:22:46', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (133, 22, 48, null, null, null, null, 'LOL不就是垃圾游戏吗', '134.195.101.21', 33719, 0, 0, '2021-08-06 15:26:26', '2021-08-06 15:26:26', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (134, 22, 49, null, null, null, null, '<p>我已经准备好了，谁来分享下怎么抽黑猫套，我准备通过这次的高福利活动改命</p>
', '134.195.101.21', 33471, 0, 0, '2021-08-06 15:26:45', '2021-08-06 15:26:45', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (135, 35, 42, null, null, null, null, '那你们自己去搬运啊，在这BB什么', '134.195.101.21', 37635, 1, 0, '2021-08-06 15:32:57', '2021-08-06 15:32:57', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (136, 8, 42, 135, 35, null, null, '你BB你妈呢', '134.195.101.21', 54969, 0, 0, '2021-08-06 15:34:18', '2021-08-06 15:34:18', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (137, 3, 50, null, null, null, null, '<p>全端前台优化与修复：</p>
<ol>
<li>超链接样式优化。</li>
<li>付费内容/付费附件的价格上限调整为10W。</li>
<li>修复红包帖评论领取红包异常报错。</li>
<li>发帖上传GIF图报错优化。</li>
<li>修复在私聊界面聊天，然后回到消息首页，私聊列表不重新渲染的问题。</li>
</ol>
<p>PC 端优化与修复：</p>
<ol>
<li>修复表情@ 或 话题卡片 显示时 点击设置付费 它们会存在同时出现。</li>
<li>修复点击空白处，表情列表未隐藏@ 和 话题 也是一样不会隐藏。</li>
<li>修复点击表情时，误点击到表情之间的空白，表情选择框会消失掉。</li>
<li>修复Chat社区编辑帖子的时候，如果帖子内容超过一屏，动态表情图总是浮在表层。</li>
<li>修复后台关闭查看主题列表权限后，我的收藏和我的点赞一直加载。</li>
</ol>
<p>小程序/H5优化与修复：</p>
<p>首页顶栏透明显示红包贴上面的字体、点赞头像、语音的icon。</p>
<p>修复小程序用户点赞取消，首页未刷新查看点赞列表，点赞列表塌陷。</p>
<p>修复小程序首页长文章贴与纯长表情贴未折叠。</p>
<p>H5发帖区附件，详情页删除键位置修复。</p>
<p>优化H5 @ 人 的没有更多内容的底色。 </p>
<p>修复小程序发帖上传附件，格式异常。</p>
<p>修复小程序发帖二级分类弹框的取消按钮上面的横线过粗。</p>
<p>修复H5屏蔽用户再关注用户，提示语错乱。</p>
<p>修复小程序从他人主页的粉丝列表进入到其他的主页，然后返回到他人的粉丝列表，在返回他人主页顶部会闪烁，或者闪烁成匿名用户，顶部也没有显示是谁的主页，然后再展示他人主页（从关注列表返回也是会出现）。</p>
<p>修复重新进入小程序，显示是已登录状态，进入发帖区发帖会跳转到登录页面。</p>
<p> 管理后台优化与修复：4项更新</p>
', '134.195.101.21', 60755, 0, 0, '2021-08-06 15:46:19', '2021-09-04 20:53:05', '2021-09-04 20:53:05', 3, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (138, 25, 50, null, null, null, null, '你tm谁阿', '134.195.101.21', 37259, 0, 0, '2021-08-06 15:48:34', '2021-08-06 15:48:34', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (139, 17, 50, null, null, null, null, '你管我？', '134.195.101.21', 38451, 0, 0, '2021-08-06 15:49:17', '2021-08-06 15:49:17', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (140, 8, 50, null, null, null, null, '你一个普通用户在BB什么', '134.195.101.21', 58329, 0, 0, '2021-08-06 15:50:22', '2021-08-06 15:50:22', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (141, 3, 51, null, null, null, null, '<p>全端前台优化与修复：</p>
<ol>
<li>支持VX换绑。</li>
<li>发帖/评论时提示必须绑定手机流程优化。</li>
<li>推荐内容规则优化。</li>
<li>音频支持在线预览。</li>
<li>消息中心查看他人回帖支持定位所在楼层。</li>
<li>发帖时编辑器保存已输入内容。</li>
<li>首页分类帖子总数优化。</li>
<li>隐藏站点敏感信息。</li>
<li>登录注册-昵称补充流程完善。</li>
<li>当发帖没有任何内容的时候，不应该能保存草稿。</li>
<li>修复详情页没有带id时，会无限刷新问题。</li>
<li>用户名注册昵称逻辑优化。</li>
<li>修复帖子审核通过不发送消息问题。</li>
</ol>
<p>PC 端优化与修复：</p>
<ol>
<li>编辑器支持图文混排，可拖拽或复制图片到编辑器中。</li>
<li>发现页看帖可返回当前位置。</li>
<li>修复进入个人中心后，头部搜索失效。</li>
<li>修复打赏和点赞信息卡片，按钮文字靠下，未垂直居中。</li>
<li>修复评论回复输入框显示回复某人时，帖子评论输入框也会出现回复某人。</li>
<li>修复评论框发布时底部出现色块。</li>
<li>修复评论区内容带上换行符后低分辨率屏幕出现字体尺寸不一致。</li>
<li>修复悬赏发放的金额与总金额不一致。</li>
<li>修复评论一次添加多个表情。</li>
<li>修复未上传视频，发布时提示等待视频上传完成再发布。</li>
<li>修复修改用户名后，没有及时更新数据，需要手动刷新才能看到修改后的用户名。</li>
<li>修复对推荐内容进行分类筛选时不起作用。</li>
</ol>
<p>小程序/H5优化与修复：</p>
<ol>
<li>支持小程序点击链接后复制链接。</li>
<li>支持H5分享分类，接收者打开是对应分类页面而不是首页。</li>
<li>新增H5备案号展示。</li>
<li>修复分类栏首次点击其中一个分类，然后进入筛选，不改内容直接点击筛选，分类会直接跳到全部版块，展示全部帖子。</li>
<li>修复点赞人数过多时，点赞弹框列表无法加载剩余用户的点赞数据。</li>
<li>修复小程序悬赏贴子，采纳回复后进度条显示，返回首页重新进入，进度条消失，悬赏百分比的进度条也没有变化。</li>
<li>修复发帖区上传视频成功，输入内容后，点击视频，视频会消失。</li>
<li>修复钱包列表展示样式有问题。</li>
<li>修复语音贴保存草稿箱内，点击播放后会直接跳转到发帖区后点击发布，发布成功后跳转到详情页内，语音还在持续播放，未暂停，再返回到草稿箱内语音播放暂停。</li>
</ol>
<p>管理后台优化与修复：</p>
<ol>
<li>管理后台可修改用户昵称。</li>
<li>修复回收站再次点击菜单时，文字变了。</li>
<li>后台管理最新主题支持内容搜索。</li>
</ol>
', '134.195.101.21', 41663, 0, 0, '2021-08-06 22:42:57', '2021-09-04 20:53:15', '2021-09-04 20:53:15', 3, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (142, 8, 51, null, null, null, null, '一个普通用户你在装什么啊', '134.195.101.21', 52329, 0, 0, '2021-08-06 22:45:32', '2021-08-06 22:45:32', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (143, 8, 52, null, null, null, null, '<p>就发你能怎么样</p>
', '134.195.101.21', 53403, 0, 0, '2021-08-06 22:47:19', '2021-08-07 16:23:36', '2021-08-07 16:23:36', 8, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (144, 41, 53, null, null, null, null, '<p>诺手e后有破甲，顶级理解</p>
<p> </p>
', '134.195.101.21', 42465, 0, 0, '2021-08-07 16:06:50', '2021-08-07 16:22:00', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (145, 42, 53, null, null, null, null, '别噶黑，是钻2理解:liuhan:', '134.195.101.21', 57019, 1, 0, '2021-08-07 16:08:49', '2021-08-07 16:08:49', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (146, 42, 16, null, null, null, null, '我也要网站源码', '134.195.101.21', 59867, 0, 0, '2021-08-07 16:09:20', '2021-08-07 16:09:20', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (147, 42, 54, null, null, null, null, '<p>猫咪这个英雄薄凉没情谊。欺软怕硬，你强的时候就跟着你混吃混喝，你弱就跟着别人跑了！头都不带回的。像极了渣女！其实我觉得一个人的性格很大程度上影响了他对游戏的理解和选择</p>
', '134.195.101.21', 40691, 0, 0, '2021-08-07 16:09:50', '2021-08-07 16:09:50', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (148, 43, 53, 145, 42, null, null, '别噶黑，人家说的是“砖2”:qiaoda:', '134.195.101.21', 41035, 0, 0, '2021-08-07 16:11:30', '2021-08-07 16:11:30', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (149, 43, 55, null, null, null, null, '<p>5bUg1UgNUVVlcDgoMCHgL 还有没有活人缺团的</p>
', '134.195.101.21', 47123, 0, 0, '2021-08-07 16:13:49', '2021-08-07 16:13:49', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (150, 43, 16, null, null, null, null, '源码还能给？那我也要', '134.195.101.21', 37637, 0, 0, '2021-08-07 16:14:19', '2021-08-07 16:14:19', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (151, 43, 37, null, null, null, null, '私聊了', '134.195.101.21', 51117, 0, 0, '2021-08-07 16:14:48', '2021-08-07 16:14:48', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (152, 43, 10, null, null, null, null, '私聊', '134.195.101.21', 42915, 0, 0, '2021-08-07 16:15:26', '2021-08-07 16:15:26', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (153, 44, 55, null, null, null, null, '小团体稳定在线4=6', '134.195.101.21', 50187, 0, 0, '2021-08-07 16:16:41', '2021-08-07 16:16:41', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (154, 44, 55, null, null, null, null, '<p>5bUg1VwNTUlFRBAMDcAE99</p>', '134.195.101.21', 38265, 0, 0, '2021-08-07 16:16:49', '2021-08-07 16:16:49', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (155, 44, 56, null, null, null, null, '<p>他打字也不利索 憋半天憋出这么一句话:cahan:</p>
', '134.195.101.21', 46945, 0, 0, '2021-08-07 16:19:25', '2021-08-07 16:19:25', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (156, 45, 57, null, null, null, null, '<p>看了隔壁一拳超人重置一话明白了<a href="">海贼王</a>战斗体系崩的部分原因，琦玉强，肉体也让人难以破防，这点龙珠也是，能打碎山体的一拳打在身上没啥效果足见肉体强悍。反观<a href="">海贼王</a>里除了凯多和大妈刀枪不入，谁挨一枪都会死，子弹威力这么大的前提下拳头带来的伤害就显得小，但拳头又能裂岛，这就前后发生矛盾。再来就是凯多的言论，说御田下油锅的事，泡澡一个小时都会晕，世界最强生物就这。隔壁一拳超人不被破防没受过伤，人家肉体下岩浆就是泡澡，反观真的在温泉泡澡一小时会晕的，下了油锅会不如御田的凯多，被九侠砍成那样凭什么没事？强悍就应该一直强悍，大妈打1天1夜能抗住，泡个澡都扛不住，大妈的伤害还不如个油锅:xieyanxiao:</p>
<p> </p>
', '134.195.101.21', 41009, 0, 0, '2021-08-07 16:31:27', '2021-08-07 16:31:27', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (157, 45, 16, null, null, null, null, '帖子类型选择做一个多选模式，不然发的帖子包含两个游戏怎么办', '134.195.101.21', 51095, 0, 0, '2021-08-07 16:33:28', '2021-08-07 16:33:28', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (158, 4, 58, null, null, null, null, '<p>@RunWith(SpringRunner.class)<br />
@SpringBootTest </p>
<pre><code>public class HelloWorldControlerTests {
    private MockMvc mvc;
    @Before
    public void setUp() throws Exception {
        mvc = MockMvcBuilders.standaloneSetup(new HelloWorldController()).build();
    }
    @Test
    public void getHello() throws Exception {
    mvc.perform(MockMvcRequestBuilders.get(&quot;/hello&quot;).accept(MediaType.APPLICATION_JSON))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(MockMvcResultHandlers.print())
                .andReturn();
    }
}
</code></pre>
', '134.195.101.21', 36921, 0, 0, '2021-08-07 16:37:29', '2021-08-07 16:37:29', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (159, 4, 59, null, null, null, null, '<pre><code>public ConfigurableApplicationContext run(String... args) {
        StopWatch stopWatch = new StopWatch();
       //启动一个停止监视器
        stopWatch.start();
        ConfigurableApplicationContext context = null;
        FailureAnalyzers analyzers = null;
        configureHeadlessProperty();
        SpringApplicationRunListeners listeners = getRunListeners(args);
        //启动Listener
        listeners.starting();
        try {
            ApplicationArguments applicationArguments = new DefaultApplicationArguments(
                    args);
            ConfigurableEnvironment environment = prepareEnvironment(listeners,
                    applicationArguments);
            Banner printedBanner = printBanner(environment);
            //这个是核心，创建Srping的beanFactory容器
            context = createApplicationContext();
            analyzers = new FailureAnalyzers(context);
          // 这里springBoot会把run的参数所在的类，load进入beanDefinition
            prepareContext(context, environment, listeners, applicationArguments,
                    printedBanner);
            refreshContext(context);
            afterRefresh(context, applicationArguments);
            listeners.finished(context, null);
            stopWatch.stop();
            if (this.logStartupInfo) {
                new StartupInfoLogger(this.mainApplicationClass)
                        .logStarted(getApplicationLog(), stopWatch);
            }
            return context;
        }
        catch (Throwable ex) {
            handleRunFailure(context, listeners, analyzers, ex);
            throw new IllegalStateException(ex);
        }
    }
</code></pre>
', '134.195.101.21', 48867, 0, 0, '2021-08-07 16:39:12', '2021-08-07 16:40:43', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (160, 5, 60, null, null, null, null, '<pre><code>protected final SourceClass doProcessConfigurationClass(ConfigurationClass configClass, SourceClass sourceClass)
            throws IOException {

        // Recursively process any member (nested) classes first
        processMemberClasses(configClass, sourceClass);

        // Process any @PropertySource annotations
        for (AnnotationAttributes propertySource : AnnotationConfigUtils.attributesForRepeatable(
                sourceClass.getMetadata(), PropertySources.class,
                org.springframework.context.annotation.PropertySource.class)) {
            if (this.environment instanceof ConfigurableEnvironment) {
                processPropertySource(propertySource);
            }
            else {
                logger.warn(&quot;Ignoring @PropertySource annotation on [&quot; + sourceClass.getMetadata().getClassName() +
                        &quot;]. Reason: Environment must implement ConfigurableEnvironment&quot;);
            }
        }

        // Process any @ComponentScan annotations
        Set&lt;AnnotationAttributes&gt; componentScans = AnnotationConfigUtils.attributesForRepeatable(
                sourceClass.getMetadata(), ComponentScans.class, ComponentScan.class);
        if (!componentScans.isEmpty() &amp;&amp;
                !this.conditionEvaluator.shouldSkip(sourceClass.getMetadata(), ConfigurationPhase.REGISTER_BEAN)) {
            for (AnnotationAttributes componentScan : componentScans) {
                // The config class is annotated with @ComponentScan -&gt; perform the scan immediately
                Set&lt;BeanDefinitionHolder&gt; scannedBeanDefinitions =
                        this.componentScanParser.parse(componentScan, sourceClass.getMetadata().getClassName());
                // Check the set of scanned definitions for any further config classes and parse recursively if needed
                for (BeanDefinitionHolder holder : scannedBeanDefinitions) {
                    if (ConfigurationClassUtils.checkConfigurationClassCandidate(
                            holder.getBeanDefinition(), this.metadataReaderFactory)) {
                        parse(holder.getBeanDefinition().getBeanClassName(), holder.getBeanName());
                    }
                }
            }
        }

        // Process any @Import annotations
        processImports(configClass, sourceClass, getImports(sourceClass), true);

        // Process any @ImportResource annotations
        if (sourceClass.getMetadata().isAnnotated(ImportResource.class.getName())) {
            AnnotationAttributes importResource =
                    AnnotationConfigUtils.attributesFor(sourceClass.getMetadata(), ImportResource.class);
            String[] resources = importResource.getStringArray(&quot;locations&quot;);
            Class&lt;? extends BeanDefinitionReader&gt; readerClass = importResource.getClass(&quot;reader&quot;);
            for (String resource : resources) {
                String resolvedResource = this.environment.resolveRequiredPlaceholders(resource);
                configClass.addImportedResource(resolvedResource, readerClass);
            }
        }

        // Process individual @Bean methods
        Set&lt;MethodMetadata&gt; beanMethods = retrieveBeanMethodMetadata(sourceClass);
        for (MethodMetadata methodMetadata : beanMethods) {
            configClass.addBeanMethod(new BeanMethod(methodMetadata, configClass));
        }

        // Process default methods on interfaces
        processInterfaces(configClass, sourceClass);

        // Process superclass, if any
        if (sourceClass.getMetadata().hasSuperClass()) {
            String superclass = sourceClass.getMetadata().getSuperClassName();
            if (!superclass.startsWith(&quot;java&quot;) &amp;&amp; !this.knownSuperclasses.containsKey(superclass)) {
                this.knownSuperclasses.put(superclass, configClass);
                // Superclass found, return its annotation metadata and recurse
                return sourceClass.getSuperClass();
            }
        }

        // No superclass -&gt; processing is complete
        return null;
    }
</code></pre>
', '134.195.101.21', 55657, 0, 0, '2021-08-07 16:43:32', '2021-08-07 16:46:23', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (161, 5, 61, null, null, null, null, '<pre><code>/**
     * Configure the factory''s standard context characteristics,
     * such as the context''s ClassLoader and post-processors.
     * @param beanFactory the BeanFactory to configure
     */
    protected void prepareBeanFactory(ConfigurableListableBeanFactory beanFactory) {
        // Tell the internal bean factory to use the context''s class loader etc.
        beanFactory.setBeanClassLoader(getClassLoader());
        beanFactory.setBeanExpressionResolver(new StandardBeanExpressionResolver(beanFactory.getBeanClassLoader()));
        beanFactory.addPropertyEditorRegistrar(new ResourceEditorRegistrar(this, getEnvironment()));

        // Configure the bean factory with context callbacks.
        beanFactory.addBeanPostProcessor(new ApplicationContextAwareProcessor(this));
        beanFactory.ignoreDependencyInterface(EnvironmentAware.class);
        beanFactory.ignoreDependencyInterface(EmbeddedValueResolverAware.class);
        beanFactory.ignoreDependencyInterface(ResourceLoaderAware.class);
        beanFactory.ignoreDependencyInterface(ApplicationEventPublisherAware.class);
        beanFactory.ignoreDependencyInterface(MessageSourceAware.class);
        beanFactory.ignoreDependencyInterface(ApplicationContextAware.class);

        // BeanFactory interface not registered as resolvable type in a plain factory.
        // MessageSource registered (and found for autowiring) as a bean.
        beanFactory.registerResolvableDependency(BeanFactory.class, beanFactory);
        beanFactory.registerResolvableDependency(ResourceLoader.class, this);
        beanFactory.registerResolvableDependency(ApplicationEventPublisher.class, this);
        beanFactory.registerResolvableDependency(ApplicationContext.class, this);

        // Register early post-processor for detecting inner beans as ApplicationListeners.
        beanFactory.addBeanPostProcessor(new ApplicationListenerDetector(this));

        // Detect a LoadTimeWeaver and prepare for weaving, if found.
        if (beanFactory.containsBean(LOAD_TIME_WEAVER_BEAN_NAME)) {
            beanFactory.addBeanPostProcessor(new LoadTimeWeaverAwareProcessor(beanFactory));
            // Set a temporary ClassLoader for type matching.
            beanFactory.setTempClassLoader(new ContextTypeMatchClassLoader(beanFactory.getBeanClassLoader()));
        }

        // Register default environment beans.
        if (!beanFactory.containsLocalBean(ENVIRONMENT_BEAN_NAME)) {
            beanFactory.registerSingleton(ENVIRONMENT_BEAN_NAME, getEnvironment());
        }
        if (!beanFactory.containsLocalBean(SYSTEM_PROPERTIES_BEAN_NAME)) {
            beanFactory.registerSingleton(SYSTEM_PROPERTIES_BEAN_NAME, getEnvironment().getSystemProperties());
        }
        if (!beanFactory.containsLocalBean(SYSTEM_ENVIRONMENT_BEAN_NAME)) {
            beanFactory.registerSingleton(SYSTEM_ENVIRONMENT_BEAN_NAME, getEnvironment().getSystemEnvironment());
        }
    }
</code></pre>
', '134.195.101.21', 45803, 0, 0, '2021-08-07 16:44:05', '2021-08-07 16:45:26', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (162, 5, 62, null, null, null, null, '<pre><code>public static void invokeBeanFactoryPostProcessors(
            ConfigurableListableBeanFactory beanFactory, List&lt;BeanFactoryPostProcessor&gt; beanFactoryPostProcessors) {

        // Invoke BeanDefinitionRegistryPostProcessors first, if any.
        Set&lt;String&gt; processedBeans = new HashSet&lt;String&gt;();

        if (beanFactory instanceof BeanDefinitionRegistry) {
            BeanDefinitionRegistry registry = (BeanDefinitionRegistry) beanFactory;
            List&lt;BeanFactoryPostProcessor&gt; regularPostProcessors = new LinkedList&lt;BeanFactoryPostProcessor&gt;();
            List&lt;BeanDefinitionRegistryPostProcessor&gt; registryPostProcessors =
                    new LinkedList&lt;BeanDefinitionRegistryPostProcessor&gt;();

            for (BeanFactoryPostProcessor postProcessor : beanFactoryPostProcessors) {
                if (postProcessor instanceof BeanDefinitionRegistryPostProcessor) {
                    BeanDefinitionRegistryPostProcessor registryPostProcessor =
                            (BeanDefinitionRegistryPostProcessor) postProcessor;
                    registryPostProcessor.postProcessBeanDefinitionRegistry(registry);
                    registryPostProcessors.add(registryPostProcessor);
                }
                else {
                    regularPostProcessors.add(postProcessor);
                }
            }

            // Do not initialize FactoryBeans here: We need to leave all regular beans
            // uninitialized to let the bean factory post-processors apply to them!
            // Separate between BeanDefinitionRegistryPostProcessors that implement
            // PriorityOrdered, Ordered, and the rest.
            String[] postProcessorNames =
                    beanFactory.getBeanNamesForType(BeanDefinitionRegistryPostProcessor.class, true, false);

            // First, invoke the BeanDefinitionRegistryPostProcessors that implement PriorityOrdered.
            List&lt;BeanDefinitionRegistryPostProcessor&gt; priorityOrderedPostProcessors = new ArrayList&lt;BeanDefinitionRegistryPostProcessor&gt;();
            for (String ppName : postProcessorNames) {
                if (beanFactory.isTypeMatch(ppName, PriorityOrdered.class)) {
                    priorityOrderedPostProcessors.add(beanFactory.getBean(ppName, BeanDefinitionRegistryPostProcessor.class));
                    processedBeans.add(ppName);
                }
            }
            sortPostProcessors(beanFactory, priorityOrderedPostProcessors);
            registryPostProcessors.addAll(priorityOrderedPostProcessors);
            invokeBeanDefinitionRegistryPostProcessors(priorityOrderedPostProcessors, registry);

            // Next, invoke the BeanDefinitionRegistryPostProcessors that implement Ordered.
            postProcessorNames = beanFactory.getBeanNamesForType(BeanDefinitionRegistryPostProcessor.class, true, false);
            List&lt;BeanDefinitionRegistryPostProcessor&gt; orderedPostProcessors = new ArrayList&lt;BeanDefinitionRegistryPostProcessor&gt;();
            for (String ppName : postProcessorNames) {
                if (!processedBeans.contains(ppName) &amp;&amp; beanFactory.isTypeMatch(ppName, Ordered.class)) {
                    orderedPostProcessors.add(beanFactory.getBean(ppName, BeanDefinitionRegistryPostProcessor.class));
                    processedBeans.add(ppName);
                }
            }
            sortPostProcessors(beanFactory, orderedPostProcessors);
            registryPostProcessors.addAll(orderedPostProcessors);
            invokeBeanDefinitionRegistryPostProcessors(orderedPostProcessors, registry);

            // Finally, invoke all other BeanDefinitionRegistryPostProcessors until no further ones appear.
            boolean reiterate = true;
            while (reiterate) {
                reiterate = false;
                postProcessorNames = beanFactory.getBeanNamesForType(BeanDefinitionRegistryPostProcessor.class, true, false);
                for (String ppName : postProcessorNames) {
                    if (!processedBeans.contains(ppName)) {
                        BeanDefinitionRegistryPostProcessor pp = beanFactory.getBean(ppName, BeanDefinitionRegistryPostProcessor.class);
                        registryPostProcessors.add(pp);
                        processedBeans.add(ppName);
                        pp.postProcessBeanDefinitionRegistry(registry);
                        reiterate = true;
                    }
                }
            }

            // Now, invoke the postProcessBeanFactory callback of all processors handled so far.
            invokeBeanFactoryPostProcessors(registryPostProcessors, beanFactory);
            invokeBeanFactoryPostProcessors(regularPostProcessors, beanFactory);
        }

        else {
            // Invoke factory processors registered with the context instance.
            invokeBeanFactoryPostProcessors(beanFactoryPostProcessors, beanFactory);
        }

        // Do not initialize FactoryBeans here: We need to leave all regular beans
        // uninitialized to let the bean factory post-processors apply to them!
        String[] postProcessorNames =
                beanFactory.getBeanNamesForType(BeanFactoryPostProcessor.class, true, false);

        // Separate between BeanFactoryPostProcessors that implement PriorityOrdered,
        // Ordered, and the rest.
        List&lt;BeanFactoryPostProcessor&gt; priorityOrderedPostProcessors = new ArrayList&lt;BeanFactoryPostProcessor&gt;();
        List&lt;String&gt; orderedPostProcessorNames = new ArrayList&lt;String&gt;();
        List&lt;String&gt; nonOrderedPostProcessorNames = new ArrayList&lt;String&gt;();
        for (String ppName : postProcessorNames) {
            if (processedBeans.contains(ppName)) {
                // skip - already processed in first phase above
            }
            else if (beanFactory.isTypeMatch(ppName, PriorityOrdered.class)) {
                priorityOrderedPostProcessors.add(beanFactory.getBean(ppName, BeanFactoryPostProcessor.class));
            }
            else if (beanFactory.isTypeMatch(ppName, Ordered.class)) {
                orderedPostProcessorNames.add(ppName);
            }
            else {
                nonOrderedPostProcessorNames.add(ppName);
            }
        }

        // First, invoke the BeanFactoryPostProcessors that implement PriorityOrdered.
        sortPostProcessors(beanFactory, priorityOrderedPostProcessors);
        invokeBeanFactoryPostProcessors(priorityOrderedPostProcessors, beanFactory);

        // Next, invoke the BeanFactoryPostProcessors that implement Ordered.
        List&lt;BeanFactoryPostProcessor&gt; orderedPostProcessors = new ArrayList&lt;BeanFactoryPostProcessor&gt;();
        for (String postProcessorName : orderedPostProcessorNames) {
            orderedPostProcessors.add(beanFactory.getBean(postProcessorName, BeanFactoryPostProcessor.class));
        }
        sortPostProcessors(beanFactory, orderedPostProcessors);
        invokeBeanFactoryPostProcessors(orderedPostProcessors, beanFactory);

        // Finally, invoke all other BeanFactoryPostProcessors.
        List&lt;BeanFactoryPostProcessor&gt; nonOrderedPostProcessors = new ArrayList&lt;BeanFactoryPostProcessor&gt;();
        for (String postProcessorName : nonOrderedPostProcessorNames) {
            nonOrderedPostProcessors.add(beanFactory.getBean(postProcessorName, BeanFactoryPostProcessor.class));
        }
        invokeBeanFactoryPostProcessors(nonOrderedPostProcessors, beanFactory);

        // Clear cached merged bean definitions since the post-processors might have
        // modified the original metadata, e.g. replacing placeholders in values...
        beanFactory.clearMetadataCache();
    }
</code></pre>
', '134.195.101.21', 54335, 0, 0, '2021-08-07 16:44:39', '2021-08-07 16:44:39', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (163, 4, 62, null, null, null, null, 'NB', '134.195.101.21', 42241, 0, 0, '2021-08-07 16:47:44', '2021-08-07 16:47:44', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (164, 34, 62, null, null, null, null, '什么鬼', '134.195.101.21', 56617, 0, 0, '2021-08-07 16:49:03', '2021-08-07 16:49:03', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (165, 34, 16, null, null, null, null, '源码也私发给我一份吧', '134.195.101.21', 38049, 0, 0, '2021-08-07 22:29:39', '2021-08-07 22:29:39', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (166, 3, 63, null, null, null, null, '<h2>第一，Javase内容：</h2>
<p>1，<strong>环境搭建：</strong> JDK下载安装，配置环境变量。</p>
<p>2，<strong>基础语法</strong> ：关键字讲解，变量/常量讲解，注释。</p>
<p>3，<strong>面向对象</strong> ：什么是面向对象，对象与类的区别，类的构造方法，类的实例方法，如何封装类，如何继承类，多态是什么，抽象类讲解，接口。</p>
<p>4，<strong>数组</strong> ：一维数组，二维数组，多维数组。</p>
<p>5，<strong>集合</strong> ：迭代器/Iterator，Map，Collection。</p>
<p>6，<strong>常用API</strong> ：Object，Stirng，StirngBuilder，Math，Date，SimpleDateFormat。</p>
<p>7，<strong>IO流</strong> ：字符流，字节流。</p>
<p>8，<strong>反射机制</strong> ：什么是反射机制，关于Class，反射类获取对象方式，ClassLoader类的加载器讲解，反射常用类。</p>
<p>9，<strong>多线程</strong> ：Thread/Runnable，线程状态讲解，线程常用API使用，线程池讲解，线程调度，并发和并行的区别，同步和异步讲解。</p>
<p>10, <strong>网络编程</strong> ：网络通讯协议，TCP/IP/UDP协议，OSI/TCP IP参考，Socket编程。</p>
<p>11，<strong>Junit</strong> ：认识Junit，Junit环境配置，测试框架，基本用法，常用API。</p>
<p>学习要求：学完这些，至少要用这些只是写出一个soket聊天室和打字游戏出来。</p>
<p>不做这些小项目练习的话，一句话：基础不牢，地动山摇 ！</p>
<p>基础学习推荐书籍配合学习：</p>
<p>1，《<strong>Thinking in java》</strong></p>
<p>2，《Head First Java》</p>
<h2>第二，数据库：</h2>
<p>数据库是开发程序中必不可少的一个部分，数据库主要是用来保存数据的，让数据不错乱，不随意改动，不让数据丢失，保证数据完整。</p>
<p>数据库搞定MySQL就可以了，因为现在很多互联网公司多数都是用这个数据库，</p>
<p>学完MySQL一定要多去练习SQL，特别是select，现在不练的话，后面就废了。</p>
<h2>第三，JDBC：</h2>
<p>1，jdbc基础：JDBC Connection，CallableStatement，Statement，PreparedStatement，ResultSet，等等不同类的使用</p>
<p>2，连接池技术：学习连接池概念，掌握连接池的配置，建立，治理和关闭。</p>
<h2>第四，前端：</h2>
<p>前端的三大核心技术HTML , CSS , JavaScript这些事必须要学的，这就是所谓的前端三剑客。</p>
<p>学习要求：学完这些要能够手写出一个静态业面，这是必须要练习的。不练习的话，到后面很容易忘记代码。</p>
<p>外带学习两个框架（JQuery和Bootstrap）</p>
<h2>第五，web：</h2>
<p>1，XML</p>
<p>2，MVC架构模式</p>
<p>3，Servlet</p>
<p>4，Filter</p>
<p>5，JSP</p>
<p>6，EL</p>
<p>7，JSTL</p>
<p>8，AJAX</p>
<p>9，代理模式</p>
<p>10，工厂模式</p>
<p>11，数据库链接池</p>
<p>学习要求：学完这些一定要深刻理解MVC架构模式</p>
<p>然后练习一个MVC模式的项目，用servlet+Ajax+MySQL+jQuery+JDBC+JSP等等你之前学过的技术写出OA管理系统，超市订单管理系统，采购订单管理系统等等项目的练习。这些项目事必须练习的，转变你的mvc思想，练得越多，后面学习框架就越轻松，不练的话后面学习就会很吃力。</p>
<h2>第六，项目管理：Maven和Git</h2>
<p>这两个技术没有什么特别的要求，能够熟练操作就行了。</p>
<h2>第七，框架：</h2>
<p>1，Spring</p>
<p>2，SpringMVC</p>
<p>3，MyBatis</p>
<p>这些框架事必须要学习掌握的，别看就这几个框架，我估计没有学过的新手，没有老师带的话一个月肯定吃不消。</p>
<p>如果之前的MVC架构模式项目没有练习过，还没有搞明白的话，很多人在学习框架这里就已经想放弃了。</p>
<p>学完这三个框架，然后再去过一遍这两个框架Struts2和Hibernate，这两个框架过一遍就可以了。</p>
<p>学习要求：学完者5个框架就可以开始搭建一个框架环境，升级一下之前自己练习的MVC架构模式的项目。</p>
<p>比如把Servlet换成springMVC，把JDBC换成MyBatis，把spring放上去解耦MVC。</p>
<p>换完能够跑起来之后再练习两个项目：</p>
<p>什么ssm客户关系管理系统之类的项目，只要是有关ssm的项目就可以练习一下。</p>
<h2>第八，迎合市场需求：</h2>
<p>学习Springboot，并用Springboot练习两个项目以上，如果学习Springboot很吃力的话，再回去学一遍spring。</p>
<p>学到这一步就可以面试了。</p>
<h2>第九，加餐：</h2>
<p>如果觉得自己技术学习还不够的话，可以给自己加点餐。</p>
<p>学习一下Dubbo，ZooKeeper，SpringCloud，MQ,Nginx，Redis，Liunx，vue，多线程，设计模式，JVM调优，算法。</p>
<p>把上面这些技术搞定了，就可以达到找工作的水平了。</p>
<p>这是一套完整的标准学习水平</p>
', '134.195.101.21', 57803, 0, 2, '2021-08-08 01:09:29', '2021-08-08 01:14:24', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (167, 37, 16, null, null, null, null, '源码私聊发给我就行', '61.158.147.206', 44785, 0, 0, '2021-08-08 12:40:06', '2021-08-08 12:40:06', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (168, 46, 64, null, null, null, null, '<p>游戏对局中难免碰到nt队友 气不过确实口嗨两句，当然口嗨是自己问题没错但结束发现聊天限制十把就算了 荣誉还被封了，打了俩周多了现在才解锁0级，就这么正常对局需要大改多少吧回2级呀，有大佬知道嘛？</p>
', '134.195.101.21', 48697, 0, 0, '2021-08-09 13:48:47', '2021-08-09 13:48:47', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (169, 46, 64, null, null, null, null, '哎，弄的现在被坑也不敢骂 顶多点一点他 ，自己要坑了更不敢说话 但有些人上线送上线送十分钟0-8确实离谱啊 你真的忍不住', '134.195.101.21', 45661, 0, 0, '2021-08-09 13:49:05', '2021-08-09 13:49:05', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (170, 46, 64, null, null, null, null, '有没明白哥说说，0到2大改多少吧 天天玩一俩个月？ 主要没那功夫和时间呀', '134.195.101.21', 50943, 0, 0, '2021-08-09 13:49:11', '2021-08-09 13:49:11', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (171, 47, 65, null, null, null, null, '<p>终极魔典模式选了把剑姬下路，猫给我辅助，对面泽拉斯选的蚂蚱大招，亚索选的石头大。那天运气过于逆天，我w连续几次挡住蚂蚱大和亚索吹风，上单腕豪下来抓我又被挡了e，他们直接公屏说我是脚本剑姬。我真服了，我比较习惯q上去a几刀开w,每次我开着w的时候他们拼命往我身上砸控制技能，这被挡不是很正常我，打完了我战绩也就15/3，我家打野直接没死过。但他们全队人说我是脚本，运气好也叫脚本么?明明他们自己碰瓷我w的，完了还举报我，我呵呵一笑，我赢得光明正大当时我就回了一句:打不过就是挂?你去举报啊。万万没想到的是，我号开第二把的时候，真的被封了一天，写着游戏内违规！我连人都没骂，更别说开脚本了，系统是凭什么封我号，真的离谱，他这个检测，到底测的是什么玩意？<br />
本人在次申明，我绝对没有开挂，没有开脚本，连挡蚂蚱两次大招纯属运气好，我真的无话可说了，原来这游戏，打不过就举报，居然真的有用:weixiao:</p>
', '134.195.101.21', 45701, 0, 0, '2021-08-09 13:50:26', '2021-08-09 13:50:26', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (172, 47, 64, null, null, null, null, '回不来', '134.195.101.21', 41965, 0, 0, '2021-08-09 13:50:53', '2021-08-09 13:50:53', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (173, 48, 66, null, null, null, null, '<p>这阵容大后期是不是无敌的节奏？</p>
', '134.195.101.21', 53195, 0, 0, '2021-08-09 13:52:21', '2021-08-09 13:52:21', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (174, 48, 65, null, null, null, null, '没有视频，不好判断', '134.195.101.21', 42005, 1, 0, '2021-08-09 13:52:48', '2021-08-09 13:52:48', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (175, 49, 65, 174, 48, null, null, '正常对局谁会去录视频啊', '134.195.101.21', 45889, 0, 0, '2021-08-09 13:53:55', '2021-08-09 13:53:55', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (176, 49, 65, null, null, null, null, '说白了腾讯就是没有检测的能力 有人举报就等于你有问题 相当于（你没问题别人举报你干嘛）', '134.195.101.21', 60029, 0, 0, '2021-08-09 13:54:15', '2021-08-09 13:54:15', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (177, 49, 66, null, null, null, null, '我想不出来怎么拖到大后期', '134.195.101.21', 40225, 0, 0, '2021-08-09 13:54:39', '2021-08-09 13:54:39', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (178, 49, 67, null, null, null, null, '<p>戒指的击中敌人给提示的属性和感知有威胁的敌人这俩属性没了，有没有大佬解释一下？？穿箱子准星不亮红，结果还会有助攻，就很烦，不知道自己究竟有没有打中敌人。</p>
', '134.195.101.21', 42823, 0, 0, '2021-08-09 13:55:15', '2021-08-09 13:55:15', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (179, 8, 66, null, null, null, null, '被人当狗杀的阵容', '134.195.101.21', 60015, 0, 0, '2021-08-09 13:55:59', '2021-08-09 13:55:59', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (180, 8, 66, null, null, null, null, '哪来的大后期？', '134.195.101.21', 39091, 0, 0, '2021-08-09 13:56:05', '2021-08-09 13:56:05', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (181, 8, 66, null, null, null, null, '除了脑子不正常的，这四路不是都被爆杀', '134.195.101.21', 49487, 0, 0, '2021-08-09 13:56:09', '2021-08-09 13:56:09', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (182, 16, 66, null, null, null, null, '这，对面大后期，你还在前期:xieyanxiao:', '134.195.101.21', 44967, 0, 0, '2021-08-09 13:57:27', '2021-08-09 13:57:27', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (183, 17, 66, null, null, null, null, '你拿小法我要笑出声。打野不来你没有单杀我的可能。你的w几乎没有任何用处。反而我杀你简简单单。', '134.195.101.21', 44811, 0, 0, '2021-08-09 13:58:14', '2021-08-09 13:58:14', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (184, 17, 66, null, null, null, null, '撑过15不投降就算成功', '134.195.101.21', 43905, 0, 0, '2021-08-09 13:58:41', '2021-08-09 13:58:41', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (185, 17, 66, null, null, null, null, 'S6还有可能，因为那时候节奏慢。现在不得屎都打出来？', '134.195.101.21', 37265, 0, 0, '2021-08-09 13:59:00', '2021-08-09 13:59:00', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (186, 22, 16, null, null, null, null, '举报都不受理的吗？', '134.195.101.21', 52641, 0, 0, '2021-08-09 14:01:31', '2021-08-09 14:01:31', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (187, 22, 16, null, null, null, null, '骂人都不能举报成功啊', '134.195.101.21', 52829, 0, 0, '2021-08-09 14:01:48', '2021-08-09 14:01:48', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (188, 50, 68, null, null, null, null, '<p>感觉这游戏挺令我失望的，没有多少期待的中高平台的立体设计，感觉更多都是和现代一样，事情都在地面，有事上个电梯去顶楼。我渴望的那种是能正常生活的都在中层平台，地面完全成了垃圾场臭水沟，楼和楼基本相连在一起，飞行器为主要工具，比如机械迷城，就有点符合我的描述。是不是机械朋克才符合这样的场景，赛博朋克就是和现代类似的？我想要的只是科技看起来比较先进酷炫一点的机械朋克？</p>
', '134.195.101.21', 53709, 0, 0, '2021-08-09 17:26:59', '2021-08-09 17:26:59', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (189, 50, 67, null, null, null, null, '没设置', '134.195.101.21', 44319, 0, 0, '2021-08-09 17:47:08', '2021-08-09 17:47:08', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (190, 51, 68, null, null, null, null, '不同的赛博朋克设定不一样，现在的夜之城还是在原版设定推迟了几十年才有这么多高楼，不然基本和现代没区别，你要的那种可以看美剧副本，游戏没有', '134.195.101.21', 59933, 0, 0, '2021-08-09 17:49:04', '2021-08-09 17:49:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (191, 51, 69, null, null, null, null, '<p>1：海岛花里胡哨，纯净的海岛已经成为历史<br />
2：出新时装太快且太多，同时十多套衣服一起卖<br />
3：外挂泛滥，特别是团竞和单排，比的就是谁的挂更厉害<br />
4：资源少，一再的阉割，现在落地想捡把枪都是很奢侈的事<br />
5：追猎，特种作战，极速对决等纯粹是娱乐模式类型的玩法也计入排位分<br />
6：穿模一直不修复<br />
7：游戏垃圾</p>
', '134.195.101.21', 40073, 0, 0, '2021-08-09 17:50:07', '2021-08-09 17:50:07', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (192, 52, 69, null, null, null, null, '这游戏本来就垃圾', '134.195.101.21', 44399, 0, 0, '2021-08-09 17:51:10', '2021-08-09 17:51:10', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (193, 52, 70, null, null, null, null, '<p>大厅展示枪械拿心之恋语有排面还是梦幻火箭scar有排面？</p>
<p> </p>
', '134.195.101.21', 34073, 0, 0, '2021-08-09 17:51:37', '2021-08-09 17:51:37', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (194, 53, 71, null, null, null, null, '<p>再找俩人开荒呀，目前两个人，不要喜欢指挥的</p>
', '134.195.101.21', 34245, 0, 0, '2021-08-09 17:53:10', '2021-08-09 17:53:10', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (195, 54, 71, null, null, null, null, '那个服务器', '134.195.101.21', 47549, 0, 0, '2021-08-09 17:54:09', '2021-08-09 17:54:09', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (196, 54, 72, null, null, null, null, '<p>不限玩了多久。<br />
萌新、大佬都可以。只需要你有全dlc就行，没有的话也不强求🌝。有意者可以dd我。长期招人！</p>
', '134.195.101.21', 52613, 0, 0, '2021-08-09 17:54:20', '2021-08-09 17:54:20', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (197, 55, 73, null, null, null, null, '<p>虽说这是个推塔游戏，不战而屈人之兵，依靠拉扯就能无伤破塔，并最终获得胜利，当然是上策，但更多时候，团战也一样是无法避免的。</p>
<p>但不论路人局，还是组排，很多玩家对什么时候可以开团这件事，并不理解，或者说不敏感，抓不住机会，该上的时候磨磨唧唧，不该上的时候又葫芦娃救爷爷。<br />
那么，什么时候适合开团呢？团战开启时，有哪些需要注意的呢？<br />
话说，我怎么觉得我的语气有点像那些公众号里的小编...<br />
闲言少叙，我将内容分为两部分来讲，一是开团基础，二是开团信号。</p>
<p> </p>
<p>首先，开团基础！<br />
我们假设，两队十个人，摆开阵势，3、2、1开始打，这种情况，双方是均势，也就是五五开的一个状态，那么，我下面提到的这些有利项，就是所谓的开团基础！</p>
<p>1、经济优势</p>
<p>不过，这里虽然说是经济优势，但其实只是为了便于大家分辨，其本质其实是装备优势。<br />
前期，也就是四分钟以前，哪怕只高1000经济，也算有经济优势，但中期，也就是4-10分钟的时候，经济不差个3、4K，不会拉开本质差距，而后期10-20分钟，少说8K才算有经济优势，至于20分钟以后，大后期经济饱和之后，经济差的优势就愈发不那么重要了，钱多的一方顶多也就是能多换两次装而已，我不是说能多换装备不算优势，但这和中前期的优势比起来，确实算不上那么大的差距。<br />
所以这里只是为了便于理解和观察，简单做个比喻，还希望大家能理解背后本质，自己灵活掌控。</p>
<p>2、人数优势</p>
<p>这个没啥好解释的，兄弟多就是有优势。不然你以为为啥会有41分带？为啥大乔和孙膑作为辅助却可以当核？集合优势兵力，进攻敌人弱势点，是兵法中的基础。</p>
<p>3、视野优势</p>
<p>哪一方占据即将爆发团战位置附近的视野，包括但不限于草丛视野，团战对哪一方自然更加有利，根据地形情况，可以简单分为左、右、后三个方向。<br />
这一点很多人并不太在意，但其实，视野是很多行动的基础，没有视野的行动，俗称，瞎打。</p>
<p>4、阵容优势</p>
<p>这个东西相对而言就不是那么好临场判断了，而是BP的时候就确认的，己方牛魔+吕布+王昭君+后羿+赵云，打正面团自然就比什么大乔+程咬金+鲁班+老虎+妲己这种阵容，要强，主要参考点无非就是先手、后手、反手、拆伙、poke、AOE、收割、爆发这些因素，你说你就是判断不出来，那我也没辙，毕竟不是这篇帖要讲的重点。</p>
<p>5、地形优势</p>
<p>地形，包括，但不限于：防御塔、隘口、墙体、草丛、地图边缘。<br />
另外，地形优势，其实也和阵容有关，野区打架，自然有武则天、吕布、八戒之类的就比较强，因为可以更好地利用地形。</p>
<p>按照这个原则去分析形势，大致就能判断出来，哪一边的有利项占比多，从而判断当前阶段，我们要不要打团。<br />
己方有利项比对方多，那就可以主动开团；<br />
双方有利项差不太多，那就视情况选择接团；<br />
敌方有利项比己方多，那就尽量避团。</p>
<p>这里需要注意的是：这五点里面，人数和视野，是可以根据场上形势直接观察到的，而经济问题，是需要有人时刻去注意并提醒大家的，阵容问题，是正式开始游戏之前，脑子里就应该有的一个概念，贯穿游戏始终，而地形，是需要结合阵容问题和当前游戏状态来判断的。</p>
<p>所以，那些能瞬间判断出团战是否可以打的人，也并不是单纯的反应快而已，只是，有些东西他们脑子里一直都有，结合临场状况，才能快速做出判断，并且准确率比较高。<br />
</p>
<p>接下来说一下开团信号！</p>
<p>开团信号的本质核心，其实就是一个词“机会”！<br />
相对的，如果站在对方角度考虑，就是我们自己不要有“失误”，从而被对方抓到机会。<br />
而机会，或者说失误，具体是什么？<br />
比如，站位失误，或者叫走位失误，再比如，技能真空期，再比如，阵型过于压缩或分散，再比如，带线过深，等等。<br />
毕竟，前面讲的那五条开团基础，如果双方都做的比较谨慎，其实五条咱们都有优势是不太可能的，或者说，己方整体比对方明显有利的比例，是比较少的，大部分时候，都是你有一些优势，我有另一些优势，加加减减，其实双方优势程度都差不太多。<br />
但，只要是人，就不会没有失误，人非圣贤孰能无过？<br />
抓机会能力，在开团，包括抓人、推塔、拿龙等时候，都是非常重要的一个能力，也是moba类游戏能否达到更高水平的一个明显衡量标准。<br />
所以，所谓的开团信号，其实本质就是，你能不能抓住机会！</p>
<p>1、寻找机会<br />
刚才说了，是人就会犯错，能否及时发现并抓住机会是很重要的，但机会往往转瞬即逝，比如走位失误，对面后羿可能是站位靠前了，但可能也就那么一瞬间，比如就一秒钟，这是很快就过去了的，但你从发现，到反应过来，到采取行动，到技能效果打出来，到队友跟上，也是需要时间的，换句话说，机会发生的时候你才开始有反应，往往是来不及的，所以就需要我们去主动寻找团战机会。<br />
比如，你玩的是钟馗，emmm…算了，我很不喜欢钟馗这个英雄，换一个吧，比如，你玩的是西施。那西施的核心打法就是钓鱼，这是一个很明显的需要玩家有很强抓机会能力的英雄，那么比如对方抱团集合准备推你家中路二塔，这时候你就要干什么啊？提前等待机会，或者说是，为了机会出现时能及时把握，而提前做准备。<br />
具体包括但不限于：<br />
1、尽量不要提前用一技能清兵，导致有机会时候技能在CD；<br />
2、站位稍微靠前一点，保证有机会时自己技能可以快速命中，但别太靠前别给敌人机会；<br />
3、观察地图上敌人移动趋势，从而大致分辨出可能出现机会的方位；<br />
4、提醒队友，注意自己技能，最好语音沟通，或者发信号“技能已经好了”。<br />
这里有一点可能有些人不是很理解，就是第三条，观察敌人移动趋势，这个在dota时代被我们叫做提前量预判或者提前量计算，同样是moba游戏，王者荣耀里也是存在这个概念的，但貌似没怎么听人提到过提前量这个词啊…<br />
话说，我为什么举例“敌人要推你们家二塔”？</p>
<p>我为什么举例“敌人要推你们家二塔”？<br />
因为二塔附近的地形构造相对复杂，但特点明显。二塔左侧有一个己方蓝区入口，推塔方经常藏在那片小草丛里，对不对？二塔右侧也有一个己方红区入口，也有一片草丛，敌人绕过来的可能性也不是没有，对不对？敌方推二塔肯定是要先清理掉己方兵线和一塔的，而兵线消失前会提供短暂的原地视野，完全可以利用这个短暂视野，看到敌人移动方向的趋势，从而判断，是否有人去两侧埋伏以及是谁，包括从正面过来的人，站在最前面的是谁，他和兵线的相对位置，是靠墙还是靠近兵线之类的，而兵线的移速是相对固定的，兵线为参照物的话，大致就可以推断出，在短暂的两三秒后，某个敌人的位置，至少是可能的位置，对不对？<br />
而西施大摇大摆的过去放一技能，拉到人的概率是不会太大的，毕竟一技能落下来也是需要时间的，但如果是敌人没有你视野的前提下，你计算提前量，预判了敌方的移动趋势，从而在敌人视野外放技能，敌人走过来看到你的瞬间，正好被技能砸中，开大两次回拉，这不就是钓鱼的精髓所在么？虽然看起来被人推二塔是劣势，但你先手开团，拉到塔下，利用地形优势，成功拿下这波团战，爽不爽？<br />
包括一些长意识的预判，比如，你看到对方打野在中路清掉了兵线，然后钻入了自己家红野区，那他去干啥了？清野，支援上路，开龙，无非就这三个选项对不对？那你作为打野，如果此时正在自己家蓝区附近，是不是就可以从河道往上路走，在上路和龙坑之间那个草提前埋伏一下？叫上队友，来一波有视野优势的埋伏，当然了，如果5秒没有敌人过来，也没人打龙，是不是对面打野基本就是在打红？而他不知道你已经过来了对不对？一样是有视野优势，同时可能你还带着队友一起过去的，一个技能都放了正在打红血且量不一定健康，甚至可能惩戒之前也交了的打野，虽然这不是团战，算是抓人，但，这是不是机会？<br />
再比如，队友给出视野，敌方伽罗和打野以及辅助正在打蓝，但你正在己方红区，过去也抢不到了，很可惜，但，这时你发现敌方打野和辅助来到了中路清线，而伽罗并没有露头，并且打野身上没有蓝buff，那么，刚才那个蓝自然是给了伽罗，而伽罗此时自身状态不佳拿完蓝回城的概率是比较小的，又没出现在中路，是不是他去下路的可能性非常大？别问为什么辅助没有跟着射手，这不就是失误么？那你是不是可以抓住这个机会？你可以选择走过去抓一波落单的伽罗，也可以叫队友过来中路五人集合，来个有人数差的5V4团战？<br />
这不都是主动寻找机会么！<br />
机会，会突然从天上掉下来砸中你么？<br />
会，但几率很小，而且到时候你有没有能力把握也是另一回事！<br />
总结，这一条的本质，说白了，其实就是基于意识的预判，不要被动等待机会降临，要主动寻找哪里可能有机会即将出现，并提前做好准备！</p>
<p>2、创造机会<br />
随着段位的提升，你会发现，敌人变得越来越猥琐，没那么多失误，根本不给机会，咋办？<br />
没机会，自己创造机会！<br />
你要时刻谨记一点，机会，是相对的！你在寻找对方失误的同时，对方也在寻找你的失误，双方都在找机会！<br />
那么，既然对方行动不好预判，难以找到突破口，那我们就“先发制人”，给他们希望，从而诱导他们的行动，让他们以为这边有机会，其实是我们的陷阱，这就叫创造机会。<br />
最常见的应用，就是用龙逼团。<br />
地图全黑，对面动向不明，局势僵持不下，龙刷新了，好，我们去打，不是真的玩儿命甩技能打龙，而是把龙拉出来一点，处在随时可以拉脱的位置附近，让龙放技能，让对方看到我们在打龙，然后所有人在附近埋伏好，站好视野，捏好技能，等猎物上钩。<br />
那句话怎么说得来的？高级的猎手，往往是以猎物的身份登场的！<br />
相应的，比如姜子牙这个英雄，放大招时候那个预警线很多人都觉得太蠢了，真的能打到人么？其实你如果会利用，这也是一个可以创造机会的契机！<br />
比如，敌方对C位的保护非常到位，辅助寸步不离，坦边时刻警惕，他们来推塔了，姜子牙就放个大招在路中间嘛，或者瞄着敌方C的位置，这个大肯定打不到人，对吧？但，敌人也一定会躲开对不对？你瞄的是中间位置，那就势必有可能出现，敌人三个往左躲，两个往右躲，对不对？有没有机会可趁？如果其中某一侧，提前有四个队友埋伏好呢？瞬间的人数差对不对？<br />
类似的技能诱导，还有比如武则天，都知道，武则天如果先手开大，打中人的概率其实是非常低的，一般都是队友给先手控制，然后武则天接大招，对不对？但比如，如果敌人五人集合推己方上路高地，五个人站位本身就相对集中，他们刚想过来点塔，武则天一个先手大招砸下去，会发生什么？一个人也打不到，对吧？但敌人本能地，大概率就都会往后撤，并且因为上路高地外侧地形相对狭窄，越往后撤越容易站位集中，这时候一个大团控突然出现，他们往前走就会中武则天的大，往后退就会被另外的团控技能打中，左边是墙，右边有我们其他人的埋伏，强行开到四五个人，是不是很爽？这可能就是一波完美团对不对？<br />
很多人是知道利用大招逼走位的，但实际应用起来，往往只能打出空大的效果，怎么说呢，多交流吧，毕竟，如果运用得好，往往是有奇效的。<br />
总结，这一条，就是利用一切可能的条件，诱导敌人的下一步行动，从而让己方更容易判断出敌方的行动趋势，并做好准备，进而主动创造并抓住机会。</p>
<p>3、跟上机会<br />
一些开团型英雄经常抱怨这样一句话“我这波开到三个人，你们怎么不跟上啊？”<br />
然后可能后面C位就会反驳：“我没状态啊！”或者“我太远了跟不上啊！”<br />
那到底是开团点的错，还是后续输出点的错？<br />
其实都有可能，有时候确实是开团的人不注意队友的状态和位置，自以为是看到了机会，其实是进去送，但有些时候，确实也是后面输出位不知道注意开团点，以及看不到团战机会。<br />
我没有统计，也没人会去统计，到底哪种情况多，到底谁的锅，如果可以的话，其实解决问题的最好办法就是复盘，总结才会有提高。<br />
我突然想起以前打dota，和一个朋友，配合默契度非常高，我上了，他就一定会跟上，他在旁边埋伏，我就知道肉身勾引敌人。<br />
有人说这是打得多了，相互了解，默契不可强求，但真的是如此么？难道两个陌生人之间，就不可能存在默契么？<br />
答案当然是否定的！<br />
老朋友之间经常一起打游戏，相互之间有足够了解，不言而喻，不说就能懂，那是默契，没错，路人局可遇而不可求。<br />
但，我想说的是，更多时候，所谓的没有默契，没有配合，其实只是你不知道、没注意、反应慢，然后给自己找了个借口罢了。<br />
就算是路人局，我问你：<br />
如果，你看到队友鬼谷子在草丛里开了技能，贴墙上去准备拉人了，你作为一个法师，比如干将，是不是就应该准备好技能了，瞄准鬼谷子附近，等待他拉到人，拉几个死几个对不对？但，鬼谷子拉到人了，你才开始找，等鬼谷子死了，你还问呢：哪儿呢哪儿呢？你当然抓不住机会！问题是，这跟默契，跟配合，有毛线关系？你就是菜罢了！<br />
反过来思考一下：<br />
如果，队友干将迫于兵线压力，技能全都用来收兵了，处于技能真空期，而且他自身血量不健康，站位也相对靠后，你鬼谷子自以为抓住了机会，拉到了五个，然后没人跟技能，自己死了，你骂队友不跟上？这跟默契，跟配合，有毛线关系？你就是菜罢了！</p>
<p>关于这个跟上机会，我其实没啥太多理论好讲，我就是想告诉你一个残酷的现实，那就是：菜就别老找借口！<br />
我们如果想要提高，那么要做的，其实就是三件事：<br />
1、补充基础知识！<br />
你都不知道英雄的常见配合方式，不知道技能组合起来有什么效果，谈什么配合？你就是菜而已！别找借口！<br />
2、注意场上情况！<br />
队友和敌人的技能情况、血量状态、位置方向、装备经济等等，你注意不到，赖谁？你就是菜而已！别找借口！<br />
3、多沟通交流！<br />
不知道，没事，没看见，没事，开麦，沟通交流，报点、报位、报状态，记住，你是人，你有嘴，同时，你也是在和人打游戏。别开麦净说没用的，谁管你中午吃的啥？要么开麦就是互喷，就这还想赢？别找借口了，什么没配合没默契？什么队友太菜带不动？什么匹配机制太辣鸡？你就是最菜，最不配赢的那个！<br />
你可能以为我只是很幽默，我说的菜，只是一种比喻，不是在骂你，其实，是不是在骂你并不重要，你到底是否真的明白我再说什么，才是重点。<br />
<br />
4、放弃机会<br />
最后一点，好多人看标题估计直接蒙了，怎么又放弃机会了？<br />
这里就要稍微拓展一下了！<br />
前面一直在讲团战，讲开团，但，实际上，团战，只是游戏中的一部分而已！<br />
懂得人已经知道我后面要说啥了吧？<br />
这波团能不能开，我上面讲了五个基础，分别是：经济、人数、视野、阵容、地形。<br />
但有一点，明明很重要，我却只字未提，没错，那就是：兵线！<br />
上面讲的所有的一切一切，都是建立在“客观条件允许我们有时间去打团”的基础上！<br />
什么叫客观条件允许？说白了就是兵线有优势！<br />
处理好兵线再开团，这是基础中的基础！<br />
兵线有优势，自己被团灭了，也基本不会被一波。<br />
兵线没优势，对方被团灭了，你也只能回去处理兵线。<br />
有人肯定想来杠，就算边路兵线没有优势，但只要高地基地没有威胁，我们团灭了对面，也可以带着中路仅存的一个小兵直接一波啊！<br />
我也打过这种局，你说的没有错，但！<br />
朋友，你能问出来这个问题，其实已经证明，你对游戏是有一定理解的，你能发现或者说注意到场上形势和很多细节，所以，硬杠，没意思，懂我再说什么就行了。<br />
难道你让我几句话把所有对局所有情况都囊括么？<br />
杠精？<br />
所以，兵线有问题的时候，压根就不要思考开团的问题，优先处理兵线，尽量避团才对！<br />
另外，除了兵线，还有龙，对开团那这件事也有很大影响，分两点：<br />
第一，有龙可以打的时候，没有绝对把握能团赢，尽量先开龙，这和没把握推高地尽量先开龙是一个道理。<br />
第二，其中一方有龙，不论是主宰先锋还是暴君buff，另一方尽量要避团，不然拿龙是为啥啊？<br />
除此之外，影响团战的还有一点，就是野区经济，如果条件允许的话，开团前，尽量清干净野区，毕竟，如果团输了，顺风等于给了对面拉回经济的机会，逆风更是将自己逼入绝境，反过来，如果团赢了，但对面已经把野区打扫干净了，龙也没刷，没兵线也推不了塔，那我们团战胜利所带来的优势，也就仅限于团战的那些人头而已。<br />
所以，很多时候，就算有机会，有些团战，也应该放弃！<br />
昨天我有点困了，但还是被拉去打五排，所以全程有点迷糊，但我没想到的是，王者低星局，我也不知道为啥，十五分钟五十多个人头，全程不知道在打个啥…这种局，胜负和MVP，也都变得索然无味…</p>
', '134.195.101.21', 37557, 0, 0, '2021-08-09 17:56:57', '2021-08-09 17:59:01', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (198, 55, 73, null, null, null, null, '<p>字数有点多，所以，最后，总结一下！</p><p>1、经济、人数、视野、阵容、地形，五个开团基础，己方占据更多优势的情况下，才可以考虑开团。</p><p>2、开团的核心就是抓机会，但机会要靠主动寻找，没机会的时候想办法创造机会。</p><p>3、不仅要注意抓住机会，也要知道跟上机会，最完美的情况就是，队友等着你开先手，你也知道队友会跟后手，做不到那么默契，那就多沟通交流。</p><p>4、以上关于团战的一切，都是基于兵线有优势的基础上，同时要注意野区中立资源的抢夺和龙buff带来的影响，并且牢记，塔通常都比命重要！</p><p>最后一句话：开团，不是单纯的为了这波团打赢而已，几个人头并不足以直接决定最终的胜负，一切的最终目的，都是推掉敌方水晶，我们只是尽量从各方面，不断增加自己胜利的筹码，而团战，只是其中一个方法，而已。</p><p>还是那句话，希望能对你有一定帮助！</p>完结撒花！', '134.195.101.21', 37585, 0, 0, '2021-08-09 17:59:08', '2021-08-09 17:59:08', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (199, 56, 74, null, null, null, null, '<p>手游直接开放资格不好吗，非要一直恶心玩家<img src="http://91king.xyz/storage/attachments/2021/08/09/gZDbowgJcpShdYcy9VqU5zxWFCitED7SijgO3M75.png" alt="attachmentId-40" />。</p>
', '134.195.101.21', 55063, 0, 0, '2021-08-09 18:02:51', '2021-08-10 22:56:13', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (200, 56, 73, null, null, null, null, '垃圾王者哪有那么多花里胡哨的', '134.195.101.21', 42503, 0, 0, '2021-08-09 18:03:40', '2021-08-09 18:03:40', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (201, 56, 73, null, null, null, null, '用脚打都能上王者', '134.195.101.21', 58973, 0, 0, '2021-08-09 18:03:51', '2021-08-09 18:03:51', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (202, 57, 75, null, null, null, null, '<p>本人各种moba游戏都玩，dota2超凡，联盟网一白金.王者早期王者段位，这几把游戏就离谱，平a和移动手感极差，有时候莫名其妙得走的脸贴脸才能a到，有的时候就是正常距离，尤其是玩剑姬这种上单近战的英雄，于是玩了几天就不玩了.不知道你们有没有发现哪里游戏体验差一些.理性讨论一下<img src="http://91king.xyz/storage/attachments/2021/08/09/JIhrbyNEIcN4FXOOkQhq3RnfzVn57DB7pqG88NV9.png" alt="attachmentId-41" /></p>
', '134.195.101.21', 57783, 0, 0, '2021-08-09 18:06:09', '2021-08-10 22:57:29', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (203, 57, 73, null, null, null, null, '然后呢？不还是垃圾游戏', '134.195.101.21', 41169, 0, 0, '2021-08-09 18:06:37', '2021-08-09 18:06:37', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (204, 57, 74, null, null, null, null, '我可以免费给你一个号，私聊', '134.195.101.21', 39781, 0, 0, '2021-08-09 18:07:03', '2021-08-09 18:07:03', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (205, 16, 76, null, null, null, null, '', '134.195.101.21', 46845, 0, 0, '2021-08-09 23:14:44', '2021-08-09 23:14:44', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (206, 3, 16, null, null, null, null, 'http://207.148.72.116:8888/810145a3', '134.195.101.21', 57401, 0, 0, '2021-08-10 00:49:51', '2021-08-10 00:49:51', '2021-08-10 10:43:12', 2, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (207, 58, 77, null, null, null, null, '<p>是这样的，我下载了12.2纯净版，带一个启动侠启动器。然后按照提示首先要安装optifine，而安装optifine要先安装forge，我下了forge点击后没反应打不开。然后发现在启动侠里直接安装了带forge的游戏版本。 OK开始装optifine，按照提示安装optifine时报错缺少launcher_profile.json，然后按照说明【先不要安装Optifine 首先安装Forge，之后将Optifine放入.minecraft/Mods文件夹，启动的时候选择装了Forge的版本即可】。</p>
<p>问题来了，终于走到这一步，启动侠给我来了个启动失败！Forge与Optifine版本不兼容。</p>
<p>搞了好久我有点儿破防了，所以请问一下这个正确的安装顺序是什么？最好能给个下载链接....谢谢各位了:leiben:</p>
', '134.195.101.21', 53999, 0, 0, '2021-08-10 22:54:05', '2021-08-10 22:54:05', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (208, 58, 77, null, null, null, null, '整合包我也下过，但是设置里依旧是没有光影选项', '134.195.101.21', 34631, 0, 0, '2021-08-10 22:54:26', '2021-08-10 22:54:26', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (209, 56, 77, null, null, null, null, '同情楼主，我也不知道怎么解决，我用pcl2启动器的时候，下载页面直接把optifine forge......的选项全选上，也能玩，要不楼主也试试pcl2&hmcl那些启动器？', '134.195.101.21', 39755, 0, 0, '2021-08-10 22:55:30', '2021-08-10 22:55:30', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (210, 57, 78, null, null, null, null, '<p>开了1.12.2服务器，ip 192.168.0.100,没搞啥插件，科学家狂喜服</p>
', '134.195.101.21', 49405, 0, 0, '2021-08-10 23:00:08', '2021-08-10 23:00:08', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (211, 59, 79, null, null, null, null, '<p>我电脑有点毛病总是自动给我重启一下。刚才自动重启好了之后我再登下游戏发现进度全给清空了，但统计信息还在，我手上的地图也变白了:liulei:存档的备份时间隔的比较久，不想再从那时候开始玩，有啥补救方法吗:daku:</p>
<p> </p>
', '134.195.101.21', 59791, 0, 0, '2021-08-10 23:02:02', '2021-08-10 23:02:02', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (212, 59, 78, null, null, null, null, '大哥，你确定你的服务器还开着么', '134.195.101.21', 39069, 0, 0, '2021-08-10 23:02:24', '2021-08-10 23:02:24', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (213, 33, 80, null, null, null, null, '<p>老婆每天都很无聊，想帮她看看有没有什么合适的娱乐手段，手机游戏最好，电脑游戏也行，她是那种性格很软的妹子，不愿意动脑，不知道各位有没有什么推荐的</p>
', '134.195.101.21', 41621, 0, 0, '2021-08-10 23:05:56', '2021-08-10 23:05:56', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (214, 60, 80, null, null, null, null, '<p>性格很软就算了…我对象教舞蹈的，还练跆拳道，我们一起玩的怪物猎人，仁王2，命运2，你可以试试双人成行，胡闹厨房</p>', '134.195.101.21', 35491, 0, 0, '2021-08-10 23:08:09', '2021-08-10 23:08:09', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (215, 60, 81, null, null, null, null, '<p>老玩家被封永久，这玩意还能不能解封了，Rainbow_Paradise ID可查<br />
是不是外挂贴吧的鉴挂大神来鉴定一下吧<br />
13个赛季的号<br />
以前一直打FPP挺菜的，最近两天打了TPP比FPP多杀了两个人就被永久了<br />
解封不了真的被劝退了<br />
刚封的，热乎的</p>
', '134.195.101.21', 35643, 0, 0, '2021-08-10 23:08:51', '2021-08-10 23:08:51', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (216, 61, 82, null, null, null, null, '<p>现在是2个人只打竞技，快乐为主什么都不需要不管你多少kd什么段位都行，每天都玩从下午到凌晨2点</p>
', '134.195.101.21', 54273, 0, 0, '2021-08-10 23:10:46', '2021-08-10 23:10:46', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (217, 61, 80, null, null, null, null, '带她玩双人成行', '134.195.101.21', 51895, 0, 0, '2021-08-10 23:11:21', '2021-08-10 23:11:21', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (218, 61, 81, null, null, null, null, '我也是 今天刚永封 我19年玩的 3000小时 从来没开任何辅助 就离谱', '134.195.101.21', 38667, 0, 0, '2021-08-10 23:11:38', '2021-08-10 23:11:38', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (219, 62, 83, null, null, null, null, '<p>在完美平台玩躲猫猫</p>
<p>很多人开局就飞了起来，飞到高点，这是挂吗</p>
', '134.195.101.21', 42643, 0, 0, '2021-08-10 23:55:48', '2021-08-10 23:55:48', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (220, 62, 83, null, null, null, null, ':yiwen:', '134.195.101.21', 47679, 0, 0, '2021-08-10 23:56:00', '2021-08-10 23:56:00', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (221, 62, 83, null, null, null, null, '有人吗', '134.195.101.21', 39837, 0, 0, '2021-08-10 23:56:08', '2021-08-10 23:56:08', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (222, 62, 82, null, null, null, null, '私聊了', '134.195.101.21', 60673, 0, 0, '2021-08-10 23:56:21', '2021-08-10 23:56:21', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (223, 63, 84, null, null, null, null, '<p>有没有老哥没办法调成4:3的 我之前一直可以调 今天打游戏打开发现根本调不了 重启也没办法解决问题 调成16:9反而可以 打开游戏了</p>
', '134.195.101.21', 58299, 0, 0, '2021-08-10 23:58:37', '2021-08-10 23:58:37', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (224, 63, 85, null, null, null, null, '<p>xdm爪子和m9哪个好 主玩ak和m4 不打狙</p>
', '134.195.101.21', 48051, 0, 0, '2021-08-10 23:59:26', '2021-08-10 23:59:26', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (225, 63, 16, null, null, null, null, '更新一个交易区', '134.195.101.21', 57291, 0, 0, '2021-08-10 23:59:52', '2021-08-10 23:59:52', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (226, 64, 86, null, null, null, null, '<p>xdm 有没有人知道 csgo5e 和完美被禁言（黄信了）该怎么恢复呀 ！！！ 每次都要队友打开我的麦才可以听到我讲话！ 我该如何恢复！！！</p>
', '134.195.101.21', 34715, 0, 0, '2021-08-11 00:03:10', '2021-08-11 00:03:10', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (227, 64, 86, null, null, null, null, '<p>感谢大哥有没有告诉我一下的 ，她们说一直打就可以了 。我快打了5/60局了，都还没有恢复回来</p>', '134.195.101.21', 32899, 0, 0, '2021-08-11 00:03:18', '2021-08-11 00:03:18', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (228, 64, 85, null, null, null, null, '爪子', '134.195.101.21', 46891, 0, 0, '2021-08-11 00:03:43', '2021-08-11 00:03:43', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (229, 65, 87, null, null, null, null, '<p>我用完美对战平台玩CSGO CPU温度一直在50-70 这块浮动 FPS 稳定在250-300 不等<br />
这个赛我用5E对战平台玩 玩10分钟 CPU温度立马飙升到100% 然后开始掉帧 掉到50 30 这种卡的不行 我想问问是怎么回事 有知道的吗 肯定不是配置问题 不然玩完美平台也不会没事 求解答</p>
', '134.195.101.21', 44669, 0, 0, '2021-08-11 00:05:30', '2021-08-11 00:05:30', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (230, 65, 86, null, null, null, null, '我也是这样', '134.195.101.21', 43387, 0, 0, '2021-08-11 00:05:53', '2021-08-11 00:05:53', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (231, 66, 88, null, null, null, null, '<p>有没有固 能天天和我一块玩的</p>
', '134.195.101.21', 44579, 0, 0, '2021-08-11 00:07:52', '2021-08-11 00:07:52', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (232, 2, 89, null, null, null, null, '<p>全端前台优化与修复</p>
<ol>
<li>添加公安备案信息。2. 修复后台不设置公安备案信息的话，pc首页右下角网站备案信息不显示。3. 修复图文混排时发布一张长图，没有对长图折叠过长的内容。4. 修复 H5 手机外部浏览器兼容性问题。5. 修复楼中楼回复用户信息与内容没对齐。6. 后台对象存储（cos）的文档预览开关，打开或关闭，前端都可以正常预览。7. 修复 fileUrl 图片上传 bug。</li>
</ol>
<p>PC 端优化与修复</p>
<ol>
<li>首页筛选点击二级分类的一级分类，下划线移除。2. 修复个人中心站点信息文案没有对齐。3. 修复对推荐内容进行分类筛选时不起作用。</li>
</ol>
<p>小程序/H5优化与修复</p>
<ol>
<li>修复发布三张长图时，小程序的图片没有对齐，且H5的图片展示规则有误。2. 修复小程序己发布红包贴后，其他用户在另一端领取红包成功，再次进入帖子详情评论显示已领取，红包进度条不显示，刷新后正常。3. 修复小程序评论他人悬赏贴，他人采纳回复后，进入到帖子详情，评论显示成功领取到悬赏金额，悬赏贴的进度条不显示进度。4. 修复站点调成付费模式，小程序登录成功后首页没有提示付费加入，发帖时提示当前站点是付费模式，消息页一直处于加载更多中。5. 修复站点信息成员头像与成员列表头像显示不一致，H5也有。6. 修复PC端发布内容时用编辑器进行文字加粗，小程序端首页详情页自动换行，PC和H5正常。</li>
</ol>
', '103.136.124.143', 36948, 0, 0, '2021-08-11 19:22:52', '2021-09-07 21:51:05', '2021-09-07 21:51:05', 1, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (233, 8, 89, null, null, null, null, 'OK', '134.195.101.21', 36629, 0, 0, '2021-08-11 21:57:09', '2021-08-11 21:57:09', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (234, 8, 89, null, null, null, null, '为什么不删掉那个装管理发帖的帖子', '134.195.101.21', 55585, 0, 0, '2021-08-11 21:57:41', '2021-08-11 21:57:41', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (235, 8, 89, null, null, null, null, '<span id="member" value="3">@Thread</span>', '134.195.101.21', 48733, 0, 0, '2021-08-11 21:57:56', '2021-08-11 21:57:56', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (236, 67, 90, null, null, null, null, '<p>真的不需要什么操作就可以吊打各种中单法师，亚索那q的伤害和CD，不是数值怪是什么?说白了亚索就算没用风墙和E躲掉法师的技能，法师也是打不过他的，当然是前期法师伤害还不能秒人的时候，这不是数值高是什么?更别说亚索实际特别好躲技能。</p>
', '134.195.101.21', 58517, 0, 0, '2021-08-12 14:50:05', '2021-08-12 14:50:05', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (237, 67, 90, null, null, null, null, '当然对线也要考虑换血，数值再高换血一直换的很亏也不行，但这种情况会在亚索回家出了吸血鬼之后就消失，上来就无脑上来干你一波，换血换没了，直接无脑推线推一会，血又满了，而且亚索这英雄推线的效率和安全是非常高的', '134.195.101.21', 39157, 0, 0, '2021-08-12 14:50:22', '2021-08-12 14:50:22', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (238, 67, 16, null, null, null, null, '修复一下BUG', '134.195.101.21', 49591, 0, 0, '2021-08-12 14:51:45', '2021-08-12 14:51:45', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (239, 68, 90, null, null, null, null, '前排提示等级。亚索不就恶心一下玩匹配的法师？？？我选个腕豪鳄鱼，你亚索能干嘛？', '134.195.101.21', 44825, 0, 0, '2021-08-12 14:52:35', '2021-08-12 14:52:35', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (240, 68, 91, null, null, null, null, '<p>兄弟们 LOL游戏内打不了字是什么情况 就是一打汉字选字框一直闪打不出来 但是英文可以</p>
', '134.195.101.21', 58481, 0, 0, '2021-08-12 14:52:53', '2021-08-12 14:52:53', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (241, 68, 16, null, null, null, null, '更新点插件', '134.195.101.21', 42699, 0, 0, '2021-08-12 14:54:35', '2021-08-12 14:54:35', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (242, 68, 92, null, null, null, null, '<p>超级新手 今天才下载的游戏qaq</p>
', '134.195.101.21', 42055, 0, 0, '2021-08-12 14:56:31', '2021-08-12 14:56:31', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (243, 69, 93, null, null, null, null, '<p>是不是贴吧大部分都打三排，不怎么用匕首啊？这武器真的是强的离谱，而且不需要什么操作就能打，A中接升龙空中A接下劈，你甲必碎，甚至可能带走你点血，至于高手，更是有可能压到你的起身，继续连，抛开继续连不说，这套伤害也太高了吧？<br />
可能有人会说，这个不好打出来，这么说的我看是单排没怎么遇到匕首，因为新武器刚出来使用的人确实不多，但目前用的人可是越来越多了，当你遇到匕首的时候，你会发现，他先上来A，A不中，后撤闪，此时，你最好是闪走，因为你这个时候如果振刀，可能对方是右键，如果不振可能是左键，而当你闪走后，你会发现，他没A中，继续这个套路重复，或者蓄力骗你振刀，你不振，你继续闪，他继续重复这个套路<br />
有人可能又会说了，那你不会蓄力吗？好，你蓄力，打出来，他后撤左键A是蓝霸体，拼刀你没打中，你蓄力不打出来，他蓝霸体A中你，你蓄力还不如闪走<br />
综合来说，强主要强在压迫感，这种情况下你失误的几率会很大，又很难猜中他，因为他蓝霸体非常的快，振也不是特好振，这如果还不算强的话，我感觉其他武器除了太刀，都可以删除了，这个武器给我一种感觉就像是升级版的太刀，虽然机制不同，但是，都是很难猜中的武器，匕首比太刀更难猜，所以更强<br />
那么，请问，怎么打匕首？？？？？</p>
', '134.195.101.21', 50209, 0, 0, '2021-08-12 14:57:56', '2021-08-12 14:57:56', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (244, 69, 92, null, null, null, null, '男的女的，男的不玩', '134.195.101.21', 41507, 0, 0, '2021-08-12 14:58:20', '2021-08-12 14:58:20', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (245, 69, 91, null, null, null, null, '我也是啊，然后不知道咋按按就又好了 ，你把wegame关了看看', '134.195.101.21', 38111, 0, 0, '2021-08-12 14:58:30', '2021-08-12 14:58:30', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (246, 69, 94, null, null, null, null, '<p>你们出这个匕首是不是不玩单排啊。 这个匕首只要震不到 就是一套连招就没血了 说拿长枪近不了身的 你去多玩玩试试行吗？ 他的这个金霸体游走 等空隙你拿他有办法吗？ 你跑的赢人家吗？</p>
', '134.195.101.21', 53885, 0, 0, '2021-08-12 14:59:15', '2021-08-12 14:59:15', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (247, 69, 16, null, null, null, null, '更新跳转', '134.195.101.21', 38429, 0, 0, '2021-08-12 14:59:43', '2021-08-12 14:59:43', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (248, 70, 95, null, null, null, null, '<p>上赛季通行证980还是多少？攒了1100 想着新赛季怎么都够开了。现在1360可好 你充240都还差20，你见过哪个游戏攒了一个赛季的通行证不够开下个赛季的，而且里面给的东西除了箱子狗J8不是。真当玩家是猪B？</p>
', '134.195.101.21', 59621, 0, 0, '2021-08-12 15:00:58', '2021-08-12 15:00:58', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (249, 70, 94, null, null, null, null, '垃圾游戏', '134.195.101.21', 44447, 0, 0, '2021-08-12 15:01:13', '2021-08-12 15:01:13', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (250, 70, 16, null, null, null, null, '更新手机网站', '134.195.101.21', 50477, 0, 0, '2021-08-12 15:01:32', '2021-08-12 15:01:32', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (251, 71, 96, null, null, null, null, '<p>每天下班就玩俩小时，就这样？玩你吗</p>
<p>白银一排半小时，玩***</p>
', '134.195.101.21', 59395, 0, 0, '2021-08-12 15:05:32', '2021-08-12 15:05:32', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (252, 71, 96, null, null, null, null, '司马游戏', '134.195.101.21', 53899, 1, 0, '2021-08-12 15:05:43', '2021-08-12 15:05:43', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (253, 71, 96, null, null, null, null, '<p>单机贴吧？</p>', '134.195.101.21', 34299, 0, 0, '2021-08-12 15:05:47', '2021-08-12 15:05:47', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (254, 72, 96, 252, 71, null, null, '可能是bug，我之前也是这样，其实早排上了，但是没有弹出窗口，一直在加载，你除非关掉重排，我上次铂2排了3小时，关了再开5分钟', '134.195.101.21', 44629, 0, 0, '2021-08-12 15:06:58', '2021-08-12 15:06:58', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (255, 72, 97, null, null, null, null, '<p>如题，原来也上过几个赛季的钻石~</p>
<p>后来忙就没有正经玩过了，一直在玩大乱斗之类的。</p>
<p>现在想重新打一下排位，定级黄金后，在上单中单就各种被单杀吊打。打野方面也有点抓瞎，总之像是5个位置都玩得很菜了。</p>
<p>求大佬支招，该怎么办</p>
', '134.195.101.21', 37227, 0, 0, '2021-08-12 15:07:28', '2021-08-12 15:07:28', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (256, 8, 96, null, null, null, null, '啊这，要不换个区。', '134.195.101.21', 53915, 0, 0, '2021-08-12 15:08:16', '2021-08-12 15:08:16', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (257, 16, 96, null, null, null, null, '这也太夸张了。。。', '134.195.101.21', 37967, 0, 0, '2021-08-12 15:08:59', '2021-08-12 15:08:59', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (258, 16, 96, null, null, null, null, '建议换区', '134.195.101.21', 59481, 0, 0, '2021-08-12 15:09:04', '2021-08-12 15:09:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (259, 21, 96, null, null, null, null, '白银就这样，现在人最多的段位是黄金', '134.195.101.21', 53441, 0, 0, '2021-08-12 15:09:57', '2021-08-12 15:09:57', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (260, 21, 97, null, null, null, null, '多看霸哥直播 以后只补塔刀:xieyanxiao:', '134.195.101.21', 58665, 0, 0, '2021-08-12 15:10:17', '2021-08-12 15:10:17', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (261, 21, 98, null, null, null, null, '<p>打10局最少6局不会是认真游戏，不是对面，就是队伍，有人故意坑队友。感觉就是一天都是遇到一些故意坑的，他们的游戏乐趣不是建立在胜利上，也不是建立在段位上，就是坑了队友，但是我开心，已经没有所谓的竞技体验了。</p>
', '134.195.101.21', 33271, 0, 0, '2021-08-12 15:12:11', '2021-08-12 15:12:11', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (262, 21, 98, null, null, null, null, '最明显的就是，一局遇到神坑，其他四个都已经投了，结果这个坑不投，出门就是送，他非要拖着大家给对面杀，呵呵', '134.195.101.21', 41033, 0, 0, '2021-08-12 15:12:21', '2021-08-12 15:12:21', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (263, 73, 98, null, null, null, null, '没错', '134.195.101.21', 33181, 0, 0, '2021-08-12 15:13:38', '2021-08-12 15:13:38', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (264, 73, 98, null, null, null, null, '我朋友都是这样说的', '134.195.101.21', 36851, 0, 0, '2021-08-12 15:13:47', '2021-08-12 15:13:47', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (265, 73, 16, null, null, null, null, '更新功能', '134.195.101.21', 58597, 0, 0, '2021-08-12 15:14:28', '2021-08-12 15:14:28', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (266, 73, 99, null, null, null, null, '<p>我在b站和贴吧看到有人说冰原的缺点之一是粪怪多，但是以我自己的开荒(太刀)过程来看，我觉得只有冰牙龙和金狮子很难缠，打的很难受，其他的（除黑龙，煌黑龙，绚辉龙）我基本上都是一两次就过了，感觉没什么特别粪的，难道说是我对“粪”的理解不对吗:yiwen:</p>
', '134.195.101.21', 34363, 0, 0, '2021-08-12 15:16:21', '2021-08-12 15:16:21', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (267, 74, 100, null, null, null, null, '', '134.195.101.21', 39827, 0, 0, '2021-08-12 15:32:33', '2021-08-13 15:55:10', '2021-08-13 15:55:10', 2, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (268, 8, 100, null, null, null, null, '加了', '134.195.101.21', 49899, 0, 0, '2021-08-12 15:33:33', '2021-08-12 15:33:33', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (269, 3, 100, null, null, null, null, '要梯子私聊', '134.195.101.21', 44783, 0, 0, '2021-08-12 15:34:31', '2021-08-12 15:34:31', '2021-08-12 15:37:34', 3, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (270, 16, 100, null, null, null, null, '网站还能发这种东西吗', '134.195.101.21', 46941, 0, 0, '2021-08-12 15:35:15', '2021-08-12 15:35:15', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (271, 16, 100, 269, 3, null, null, '梯子是什么', '134.195.101.21', 32809, 0, 0, '2021-08-12 15:35:26', '2021-08-12 15:35:26', '2021-08-12 15:35:31', 16, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (272, 45, 100, null, null, null, null, '已经私聊', '134.195.101.21', 40303, 0, 0, '2021-08-12 15:36:39', '2021-08-12 15:36:39', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (273, 74, 16, null, null, null, null, '为什么删我帖子', '134.195.101.21', 58897, 0, 0, '2021-08-13 17:48:36', '2021-08-13 17:48:36', '2021-08-13 19:56:41', 74, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (274, 74, 101, null, null, null, null, '<p>管理出来解释，在删我就找人DDOS攻击网站 <span id="member" value="2">@Jerome</span> </p>
<p>色情片私聊</p>
', '134.195.101.21', 55627, 0, 0, '2021-08-13 19:55:03', '2021-08-13 23:24:25', '2021-08-13 23:24:25', 2, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (275, 2, 102, null, null, null, null, '<p>新增功能</p>
<pre><code> 1. 新增支持 iframe 代码复制在编辑器后正常在站点展示音视频内容。（目前仅支持网易云音乐、B站、腾讯视频、优酷、爱奇艺）

 2. 新增支持大图上传（15M）。
 3. 新增支持**模式下跳过**绑定。
 4. 新增首页附件过多时可折叠展示。
 5. 新增帖子详情页评论区标记楼主身份。全端前台优化与修复

 1. 编辑器@交互优化：输入@后，输入用户昵称，可以直接显示在@框中。
 2. 优化个人中心子页面（帖子列表）支持返回当前浏览位置。
 3. 修复帖子标题在首页展示，会被部分截取。
 4. 修复首页名称根据后台配置相关问题。
 5. 修复音频附件贴，首页详情页点击下载时，两个预览按钮会同时进行加载。
 6. 修复点击左上角的 Discuz Q 的 Logo，无法回到首页。
 7. 已付费已过期的用户，再次进入付费站点时，付费按钮文案优化。
 8. 修复三级回复无法收到通知问题。
</code></pre>
<p>PC 端优化与修复</p>
<pre><code> 1. 首页筛选点击二级分类的一级分类，下划线移除。
 2. 修复个人中心站点信息文案没有对齐。
 3. 修复对推荐内容进行分类筛选时不起作用。
</code></pre>
<p>小程序/H5优化与修复</p>
<pre><code> 1. 评论框样式优化。
 2. 修复小程序消息跳转详情页评论定位不准的问题。
 3. 修复H5进行二次搜索时，搜索的内容过多会导致页面疯狂刷新。
 4. 修复潮流话题列表，话题无内容时，提示语异。
 5. 修复发布帖子有很多标点符号时第一行没添加满会自动跳到第二行。
 6. 修复找回支付密码，点击发送验证，拉起验证码 lite 小程序时点击取消，发送验证码按钮失效，不能再次点击。
 7. 修复站点信息页面，站长头像显示为匿名头像。
 8. 修复我的钱包的数据遮挡。
</code></pre>
<p>管理后台优化与修复</p>
<pre><code> 1. 绑定手机开关优化。
 2. 修复付费模式永久有效，勾选提交后，页面刷新后又变成选中加入起几天后的选项。实际是永久有效。
 3. 修复后台云点播设置文案错误。
</code></pre>
', '208.87.132.216', 37325, 0, 0, '2021-08-13 23:26:00', '2021-08-13 23:27:26', '2021-08-13 23:27:26', 2, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (276, 2, 103, null, null, null, null, '<p>新增功能</p>
<ol>
<li>新增支持 iframe 代码复制在编辑器后正常在站点展示音视频内容。（目前仅支持网易云音乐、B站、腾讯视频、优酷、爱奇艺）</li>
<li>新增支持大图上传（15M）。</li>
<li>新增支持**模式下跳过**绑定。</li>
<li>新增首页附件过多时可折叠展示。</li>
<li>新增帖子详情页评论区标记楼主身份。</li>
</ol>
<p>全端前台优化与修复</p>
<ol>
<li>编辑器@交互优化：输入@后，输入用户昵称，可以直接显示在@框中。</li>
<li>优化个人中心子页面（帖子列表）支持返回当前浏览位置。</li>
<li>修复帖子标题在首页展示，会被部分截取。</li>
<li>修复首页名称根据后台配置相关问题。</li>
<li>修复音频附件贴，首页详情页点击下载时，两个预览按钮会同时进行加载。</li>
<li>修复点击左上角的 Discuz Q 的 Logo，无法回到首页。</li>
<li>已付费已过期的用户，再次进入付费站点时，付费按钮文案优化。</li>
<li>修复三级回复无法收到通知问题。</li>
</ol>
<p>PC 端优化与修复</p>
<ol>
<li>首页筛选点击二级分类的一级分类，下划线移除。</li>
<li>修复个人中心站点信息文案没有对齐。</li>
<li>修复对推荐内容进行分类筛选时不起作用。</li>
</ol>
<p>小程序/H5优化与修复</p>
<ol>
<li>评论框样式优化。</li>
<li>修复小程序消息跳转详情页评论定位不准的问题。</li>
<li>修复H5进行二次搜索时，搜索的内容过多会导致页面疯狂刷新。</li>
<li>修复潮流话题列表，话题无内容时，提示语异。</li>
<li>修复发布帖子有很多标点符号时第一行没添加满会自动跳到第二行。</li>
<li>修复找回支付密码，点击发送验证，拉起验证码 lite 小程序时点击取消，发送验证码按钮失效，不能再次点击。</li>
<li>修复站点信息页面，站长头像显示为匿名头像。</li>
<li>修复我的钱包的数据遮挡。</li>
</ol>
<p>管理后台优化与修复</p>
<ol>
<li>绑定手机开关优化。</li>
<li>修复付费模式永久有效，勾选提交后，页面刷新后又变成选中加入起几天后的选项。实际是永久有效。</li>
<li>修复后台云点播设置文案错误。</li>
</ol>
', '208.87.132.216', 34309, 0, 0, '2021-08-14 00:37:24', '2021-09-07 21:51:13', '2021-09-07 21:51:13', 1, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (277, 2, 104, null, null, null, null, '<p>PC 与 H5 前台优化与修复</p>
<ol>
<li>修复管理后台设置禁止新用户注册，但 PC 和 H5 端还显示注册按钮。</li>
<li>修复发悬赏贴，点击发布确认支付后，提示语有误，提示保存草稿中。</li>
<li>修改 web 端评论定位数据不刷新的问题。</li>
</ol>
<p>PC 端优化与修复</p>
<ol>
<li>修复点击任何人的个人中心，头像背景图都会和自己的一样。</li>
</ol>
<p>小程序/H5优化与修复</p>
<ol>
<li>修复小程序的排版问题：上一条A和下一条Q挤在一起。</li>
<li>修复H5站点信息页面展示的成员头像与成员列表内的头像不一致。</li>
<li>修复H5外部浏览器付费功能不能正常拉起**支付管理后台修复。</li>
<li>修复帖子详情页内，点击打赏输入金额时键盘会遮挡一点取消与确认按钮的底部。</li>
<li>修复帖子分享给未填写过资料的用户，用户编辑评论，点击发布跳转到补充信息页，提示语异常，补充信息页正常显示，点击返回无效。</li>
<li>修复胶囊里的匿名分享用户未登录时出现。</li>
<li>修改小程序评论定位的问题。</li>
<li>修复H5外部浏览器，备案信息展示错位。</li>
</ol>
<p>管理后台优化与修复</p>
<ol>
<li>修复批量移动到二级分类不起作用，只能移动到二级分类的父类。</li>
</ol>
', '221.13.140.87', 6692, 0, 0, '2021-08-20 16:04:04', '2021-09-07 21:51:20', '2021-09-07 21:51:20', 1, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (278, 81, 105, null, null, null, null, '<p>top1，平衡性，现在的LOL，平衡性上可以说是最烂的一个版本，下水道英雄之多，令人惊讶，上单蛮王，炼金，大虫子，打野木木，龙龟，猪妹，皇子，蝎子，中路沙漠皇帝，狐狸，下路琴女，都是老牌英雄，基本都已经弱得可以删除的程度，现在把把只有艾克凯隐，神圣青钢影，一脚999，以前游戏就算是下水道英雄，只是玩的人少，现在的下水道英雄，都是已经弱到玩不了的程度，你看狐狸，以前玩的人不多吗？现在就是不行，但是设计师完全忽略了很多弱势英雄，但凡设计师愿意把调整格温弗耶戈阿克尚一半的心思放在船长巨魔蝎子沙皇这种老英雄身上，不至于让玩家诟病好几个版本</p>
', '134.195.101.35', 32943, 0, 0, '2021-08-20 19:34:31', '2021-08-20 19:34:31', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (279, 82, 105, null, null, null, null, '8年撸龄已经不爱玩了，从当初黑切日炎联盟到现在把把塞拉斯破败王格温，差不多该和游戏说再见了。最爱的英雄，妖姬，ez，螳螂。', '134.195.101.35', 38289, 0, 0, '2021-08-20 19:35:42', '2021-08-20 19:35:42', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (280, 82, 106, null, null, null, null, '<p>今天想发个帖子吐槽LOL，这个游戏已经彻底的变味儿了，我将从以下几点进行吐槽。我们以S8为分界点！<br />
一，恶心到极点的匹配机制，S8之前的S34567和s8之后的匹配机制一样，你玩儿一百盘，基本上输赢各占50% ，但是S8之前的匹配机制是，双方不会差太多，你完全可以自己来c，这种感觉就像打江山一样，每一盘胜利都是自己干出来的，有时候队友逆风，你可以叫队友拖住，然后自己用优势弥补队友劣势，从而逆风翻盘。现在的游戏环境就是，躺赢和躺输，你努不努力没有意义，这把能不能赢全看队友，靠自己翻盘的局数，少之又少，几乎没有！这样的游戏环境我感觉恶心。如果一个游戏不能靠自己去奋斗赢得胜利，而是百分之78十完全看天意，那这样的游戏环境没有任何竞技意义。真实状况是这样，你进行了10盘游戏，输了5盘赢了5盘，而那赢的5盘，你挂机都能赢，输的5盘，是你无论如何努力都没有办法赢下来的，虽然说匹配机制胜负55开，但是和你没有多大关系的对局，还有什么意义吗？<br />
而S8之前的匹配机制，假如结果是赢5输5，那赢的5把几乎都是和自己有很大的关系，输的那5把是因为技不如人，所以同样是输5赢5，感觉却完全不一样。<br />
就像打篮球，打10场比赛赢5输5，赢的5场库里汤普森杜兰特是你队友，你怎么打都是赢的，输的5场对面是库里汤普森杜兰特，你怎么打都是输的。而s8之前是，你这儿有杜兰特，对面还有库里，所以输赢真的是博弈，双方打的有来有回，最后无论结局，自己都认了，而不是说对面全是库里杜兰特，不管你怎么打都赢不了，或者说队友是杜兰特库里，对面怎么打，自己哪怕挂机不上场，瞎**打，对面都赢不了，这两者有本质的区别。<br />
2无比快速的游戏节奏，自从S8之后，游戏节奏一天比一天块，我记得几年前看直播，有些主播，带上水友，先送对面15个，然后再开始打，最后竟然赢了，当然，那是S8之前，如果是现在的版本，那是不可能的。***的主播，也不可能像以前那种玩儿。而大部分情况是，这样的，比如对面有阿卡丽，凯隐，亚索，卡特这类英雄，别说15个，对线死上两次，那你这把就不用玩儿了，你就等着，对面像人机一样屠杀你的边路队友吧。因为游戏节奏的加快，所以，滚雪球效应特别明显。而快节奏，竟然把投降时间缩短到15分，以前玩游戏都是逆风等着翻盘，现在的节奏，基本就是逆风投就完事儿了，不是说不能打逆风，而是版本就这样，逆风翻盘难度和s8相比，如果说s8之前逆风翻盘概率有百分之30到我40，而现在的几率就是不到5%几乎。<br />
3代打太过于猖獗，以前游戏玩家白银黄金白金钻石王者，分布的很合理，如果你是白金的水平，去打黄金或者白银局，基本上赢的概率有95%，而现在，因为代打泛滥，有可能是代练，也有可能是陪玩儿，有可能是同学，同事，网友，朋友，总之，就是经常出现的情况是，发打个黄金局，其实10个里有56个白金1到4的水平，有时候还有钻石大师混迹在里面，就是无论是白银黄金还是白金钻石，你要打的根本不是同水准的玩家，而是远远超越你好几个段位的玩家，甚至你是白金，你去打黄金，可是对面的黄金其实是王者，还双排。有一段时间，我是真不明白，为啥自己赢不了总是，就花几百块请了陪玩儿，对方是王者，我俩费劲全力，结果却是胜率仅仅比我单排高一点点。我记得光晋级赛就打了两次还是三次，经常刚赢两局，就开始两连跪，哇，我和王者双排，打个黄金到白金的排位，没想到对面竟然也有如此多的代打，连代打都这么内卷，这样的环境下，就像我刚才说的，游戏其实有你没你一个样了，这样的竞技环境就没有什么意义了。</p>
', '134.195.101.35', 41917, 0, 0, '2021-08-20 19:36:10', '2021-08-20 19:36:10', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (281, 82, 106, null, null, null, null, '唉，这样的竞技环境，我累了', '134.195.101.35', 47639, 0, 0, '2021-08-20 19:37:01', '2021-08-20 19:37:01', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (282, 83, 105, null, null, null, null, '刚退游，朋友叫玩就上号打打娱乐或者灵活。我一个通宵十把赢六把都是掉分，玩***', '134.195.101.35', 42237, 0, 0, '2021-08-20 19:38:36', '2021-08-20 19:38:36', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (283, 83, 106, null, null, null, null, '是的，s5赛季的时候白金局打的都很爽，势均力敌靠抓人赢一波的，靠队友拖后期翻盘的，劣势抓人翻盘的，现在根本看不见。', '134.195.101.35', 46217, 0, 0, '2021-08-20 19:39:19', '2021-08-20 19:39:19', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (284, 83, 107, null, null, null, null, '<p>当时玩石头人，哪怕被压的补刀少对面3分之2，都没事，只要闻经验就行~<br />
然后团战给关键位置大招，赢个比赛还是很容易~<br />
当时我就感叹，这真的是混分巨兽啊！</p>
<p>但是转眼我又想，我玩其他英雄，为什么胜率低？<br />
于是我想到了上单位置的定位，以及对英雄的定位~<br />
以及高手常说的如何赢游戏！</p>
<p>其实大多数玩家应该和我一样，只顾着研究对线，忽略了这3点~<br />
还有一心想着c全程<br />
其实用处都不大，为什么呢？<br />
因为哪怕你svp，mvp，你数据好，你很C，也未必能赢游戏！<br />
而且，你要把把都做到超级C，得有多难？对面也不是人机，对吧？</p>
<p>所以玩好上单，我就想到了，要了解上单的作用，以及了解英雄的作用！</p>
<p>比如石头人的作用，就是肉，大招！为什么石头人大家都混的很好，因为对石头人的理解，基本都知道，因为他简单啊！</p>
<p>但是对其他英雄呢？相信大家肯定没多想~</p>
<p>但是从石头出发，其实都是一个道理：<br />
1.就是你不能让对手上单发育起来！<br />
2.你得有基础输出打团！所以第一个核心装备你得有！<br />
3.你得够肉，更具对手发育情况针对装备，这样才能更好承受伤害，支援队友，保护队友，让队友有足够的输出空间！<br />
4.团战选择优先级，是保护队友，还是切对面C位？具体看英雄决定~<br />
5.不让对面英雄滚雪球，限制他们发育，同时保障队友发育~</p>
', '134.195.101.35', 59871, 0, 0, '2021-08-20 19:39:40', '2021-08-20 19:39:40', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (285, 83, 16, null, null, null, null, '做一个讨论区', '134.195.101.35', 33591, 0, 0, '2021-08-20 19:40:13', '2021-08-20 19:40:13', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (286, 84, 108, null, null, null, null, '<p>这个月才过了20天。已经禁赛三天2次了。上个月是3次。上赛季764豆。这赛季初一直禁赛。咋玩嘛</p>
', '134.195.101.35', 58567, 0, 0, '2021-08-20 19:43:34', '2021-08-20 19:43:34', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (287, 84, 16, null, null, null, null, '做个交易区', '134.195.101.35', 44441, 0, 0, '2021-08-20 19:44:07', '2021-08-20 19:44:07', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (288, 85, 108, null, null, null, null, '不知道', '134.195.101.35', 44285, 0, 0, '2021-08-20 19:46:45', '2021-08-20 19:46:45', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (289, 85, 109, null, null, null, null, '<p>想问一下，玩csgo菜是因为鼠标 鼠标垫之类的问题吗？我的鼠标垫买不知道什么东西送的，然后鼠标g302，显示器60hz，现在完美才c+，是因为外设问题吗？</p>
', '134.195.101.35', 54715, 0, 0, '2021-08-20 19:47:03', '2021-08-20 19:47:03', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (290, 85, 109, null, null, null, null, '有人能解答一下吗？', '134.195.101.35', 47689, 0, 0, '2021-08-20 19:47:10', '2021-08-20 19:47:10', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (291, 85, 16, null, null, null, null, '做一个在线功能', '134.195.101.35', 48433, 0, 0, '2021-08-20 19:48:00', '2021-08-20 19:48:00', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (292, 86, 109, null, null, null, null, '换个3090马上就可以杀疯', '134.195.101.35', 35871, 0, 0, '2021-08-20 19:52:02', '2021-08-20 19:52:02', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (293, 86, 110, null, null, null, null, '<p>赛博朋克那么好玩没人玩吗？</p>
<p> </p>
', '134.195.101.35', 42163, 0, 0, '2021-08-20 19:52:38', '2021-08-20 19:52:38', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (294, 86, 104, null, null, null, null, '为什么都是修复', '134.195.101.35', 58713, 1, 0, '2021-08-20 19:53:11', '2021-08-20 19:53:11', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (295, 86, 111, null, null, null, null, '<p>有人知道怎么去外网吗</p>
', '134.195.101.35', 36029, 0, 0, '2021-08-20 19:54:08', '2021-08-20 19:54:08', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (296, 86, 111, null, null, null, null, '暗网也行', '134.195.101.35', 49413, 0, 0, '2021-08-20 19:54:20', '2021-08-20 19:54:20', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (297, 87, 112, null, null, null, null, '<p>这游戏前几天下载玩了一下真好玩这个游戏。<br />
玩到第二章了，做了几个任务。<br />
一直在探索，风景不错。<br />
我特别喜欢骑马赶路，喜欢在路上遇到突发事件。（比如抢劫之类的<img src="http://91king.xyz/storage/attachments/2021/08/20/WDbQP7KmZNu64gY7w3w491GXjK9HPxs6hkQ9kZwr.png" alt="attachmentId-53" />）<br />
这游戏好真实啊。<br />
我现在钱有1700刀（卖了3根金条）不知道做什么。<br />
营地里的感叹号是什么意思？<br />
这么多钱买枪买什么枪呢？</p>
', '134.195.101.35', 48053, 0, 0, '2021-08-20 19:56:21', '2021-08-20 19:56:21', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (298, 87, 111, null, null, null, null, '加我**+1545562154', '134.195.101.35', 42329, 0, 0, '2021-08-20 19:56:57', '2021-08-20 19:56:57', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (299, 87, 111, null, null, null, null, '私聊我也行', '134.195.101.35', 58043, 0, 0, '2021-08-20 19:57:04', '2021-08-20 19:57:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (300, 87, 16, null, null, null, null, '有点卡', '134.195.101.35', 60947, 0, 0, '2021-08-20 19:58:20', '2021-08-20 19:58:20', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (301, 87, 16, null, null, null, null, '优化', '134.195.101.35', 60481, 0, 0, '2021-08-20 19:58:27', '2021-08-20 19:58:27', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (302, 87, 104, 294, 86, null, null, '还不如加点新功能', '134.195.101.35', 54199, 0, 0, '2021-08-20 19:59:16', '2021-08-20 19:59:16', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (303, 75, 111, null, null, null, null, '私聊你了', '134.195.101.35', 44515, 0, 0, '2021-08-20 20:02:03', '2021-08-20 20:02:03', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (304, 75, 16, null, null, null, null, '移动端在哪', '134.195.101.35', 51261, 0, 0, '2021-08-20 20:03:44', '2021-08-20 20:03:44', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (305, 88, 113, null, null, null, null, '<p>这版本战士英雄太弱了，还有一件巨蛇之牙这种不亏模的nt装备无脑针对就可以，想想赛季初的咳血血手挺近，战士一直在被削弱，战士太惨了，现在战士一个血手就能扛几秒就没了，咳血也回不了多少，就算你在人堆里面顶多回半管，赛季初都能快回满的。这回巨蛇之牙削弱就不能无脑出了，这样血手能多抗一会</p>
<p> </p>
', '134.195.101.35', 40781, 0, 0, '2021-08-21 21:07:38', '2021-08-21 21:07:38', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (306, 88, 112, null, null, null, null, '私聊你了', '134.195.101.35', 44971, 0, 0, '2021-08-21 21:08:24', '2021-08-21 21:08:24', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (307, 88, 16, null, null, null, null, '加个投票功能', '134.195.101.35', 63803, 1, 0, '2021-08-21 21:09:20', '2021-08-21 21:09:20', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (308, 8, 113, null, null, null, null, '意思在你认知里一个咳血回满才是正常强度是吧:cahan:', '134.195.101.35', 30123, 0, 0, '2021-08-21 21:12:34', '2021-08-21 21:12:34', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (309, 8, 114, null, null, null, null, '<p>白金黄金来个通宵的</p>
', '134.195.101.35', 5055, 0, 0, '2021-08-21 21:13:08', '2021-08-21 21:13:08', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (310, 89, 115, null, null, null, null, '<p>想玩lol，特别菜，不怕被骂，想练一练，但是不知道怎么玩这个游戏...想问问大家这个游戏怎么玩，有什么注意事项吗？感觉进入游戏以后他们都好凶.....（学生党，晚上有时间去练，但是做不到一整天都玩lol）</p>
', '134.195.101.35', 63005, 0, 0, '2021-08-21 21:15:15', '2021-08-21 21:15:15', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (311, 75, 115, null, null, null, null, '你练是打算练什么位置哟', '134.195.101.35', 19235, 0, 0, '2021-08-21 21:19:07', '2021-08-21 21:19:07', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (312, 90, 116, null, null, null, null, '<p>15号那天被气得挂了盘机，到现在排位打了2 30把了还一直是低优先级队列盘盘都等五分钟，简直是不让人玩了</p>
', '134.195.101.35', 37869, 0, 0, '2021-08-21 21:21:16', '2021-08-21 21:21:16', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (313, 90, 115, null, null, null, null, '打人机看b站', '134.195.101.35', 18493, 0, 0, '2021-08-21 21:22:06', '2021-08-21 21:22:06', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (314, 90, 16, null, null, null, null, '加个投票吧，有些事情想看看别人怎么看的', '134.195.101.35', 20143, 0, 0, '2021-08-21 21:23:08', '2021-08-21 21:23:08', '2021-08-21 21:23:26', 90, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (315, 90, 16, 307, 88, null, null, '+1', '134.195.101.35', 10557, 0, 0, '2021-08-21 21:23:59', '2021-08-21 21:23:59', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (316, 91, 117, null, null, null, null, '<p>一把打完退出来，客户端一直显示重新连接，强制关闭客户端重新登陆，就直接重连黑屏，已经三个小时了</p>
', '134.195.101.35', 24149, 0, 0, '2021-08-22 19:25:57', '2021-08-22 19:25:57', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (317, 91, 16, null, null, null, null, '?', '134.195.101.35', 20557, 0, 0, '2021-08-22 19:26:42', '2021-08-22 19:26:42', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (318, 92, 118, null, null, null, null, '<p>本人目前在第二章，没救迈卡没去唐斯那要钱，也没去见亚瑟的前女友，一切都挺好的就是拿不到滚轮闭锁式步枪，有没有什么方法能拿到</p>
', '134.195.101.35', 38405, 0, 0, '2021-08-22 19:28:54', '2021-08-22 19:28:54', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (319, 92, 117, null, null, null, null, '我也是', '134.195.101.35', 60833, 0, 0, '2021-08-22 19:29:19', '2021-08-22 19:29:19', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (320, 93, 119, null, null, null, null, '<p>因为使用wegame创建的lol快捷方式登录游戏，直接给我封了一天，我请问官方你礼貌吗？</p>
', '208.87.132.216', 34457, 0, 0, '2021-08-24 20:56:34', '2021-08-24 20:56:34', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (321, 93, 118, null, null, null, null, '任务', '208.87.132.216', 27033, 0, 0, '2021-08-24 20:57:17', '2021-08-24 20:57:17', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (322, 93, 16, null, null, null, null, '更新', '208.87.132.216', 63929, 0, 0, '2021-08-24 20:57:32', '2021-08-24 20:57:32', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (323, 94, 120, null, null, null, null, '<p>问下小伙伴们，排位华甲获取以后，新赛季会更新吗？还是说拿到了就永久有效了</p>
', '208.87.132.216', 63909, 0, 0, '2021-08-24 20:58:50', '2021-08-24 20:58:50', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (324, 94, 119, null, null, null, null, 'wegame本来就有一堆问题', '208.87.132.216', 14489, 0, 0, '2021-08-24 20:59:15', '2021-08-24 20:59:15', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (325, 4, 121, null, null, null, null, '<p>首先说一下 我是六月份回归玩家 手残党技术菜不玩pvp 只玩挑战pve 玩什么游戏基本都是不氪不玩 微氪党 六月回归到现在一个半月 粗略估计氪了两个w<br />
我属于那种盲目消费的类型 一般花了钱 睡一觉就忘了的那种 下文字数比较多 不愿意看的请绕道隔壁2.97元暗裔 白虎 王魅</p>
', '208.87.132.216', 23935, 0, 0, '2021-08-24 21:15:11', '2021-08-24 21:15:11', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (326, 3, 121, null, null, null, null, '抽不到也不必放个贞子在楼道吓人吧', '208.87.132.216', 43661, 0, 0, '2021-08-24 21:17:42', '2021-08-24 21:17:42', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (327, 67, 122, null, null, null, null, '<p>还有上个版本减速90的挺近，相比起来坦克法师刺客ad的神话装真不行。</p>
', '208.87.132.216', 15527, 0, 0, '2021-08-25 21:20:33', '2021-08-25 21:20:33', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (328, 67, 122, null, null, null, null, '<p>上版本挺近真就强无敌装备，没位移等于直接罚站，但已经被设计师一刀砍废了，那我想知道神分渴血什么时候砍?</p>', '208.87.132.216', 58617, 0, 0, '2021-08-25 21:20:41', '2021-08-25 21:20:41', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (329, 81, 123, null, null, null, null, '<p>top1，平衡性，现在的LOL，平衡性上可以说是最烂的一个版本，下水道英雄之多，令人惊讶，上单蛮王，炼金，大虫子，打野木木，龙龟，猪妹，皇子，蝎子，中路沙漠皇帝，狐狸，下路琴女，都是老牌英雄，基本都已经弱得可以删除的程度，现在把把只有艾克凯隐，神圣青钢影，一脚999，以前游戏就算是下水道英雄，只是玩的人少，现在的下水道英雄，都是已经弱到玩不了的程度，你看狐狸，以前玩的人不多吗？现在就是不行，但是设计师完全忽略了很多弱势英雄，但凡设计师愿意把调整格温弗耶戈阿克尚一半的心思放在船长巨魔蝎子沙皇这种老英雄身上，不至于让玩家诟病好几个版本</p>
', '208.87.132.216', 47819, 0, 0, '2021-08-25 21:21:39', '2021-08-25 21:21:39', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (330, 95, 124, null, null, null, null, '<p>人头多也秒杀不了对面的辅助泽拉斯，人家有闪现，征服者凭什么秒掉，感觉现在锐雯肉刮痧不说了，脆皮也是刮痧，副w和主w电刑穿透秒杀脆皮才快。穿甲流容错率低？战士流才低，操作失误一点就会差伤害，就可能导致<br />
崩盘，伤害高了qwa脆皮就没了，一刀半血。现在的征服者要很高操作不能失误才能秒杀人，一个r放跑的敌人还不多吗，穿透就是基础连招就可以秒了，而且er3awqrq对面滚起雪球的也能交不出闪现被秒杀，<br />
穿透r打到脆皮身上，至少掉60%的血，征服者r呵呵10%都不一定斩杀.没了真伤征服者就是个屁。</p>
', '208.87.132.216', 19831, 0, 0, '2021-08-25 21:23:20', '2021-08-25 21:23:20', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (331, 96, 123, null, null, null, null, '确实', '208.87.132.216', 63677, 0, 0, '2021-08-25 21:24:44', '2021-08-25 21:24:44', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (332, 96, 125, null, null, null, null, '<h3>玩了十年现在还混迹在黄金，我还有希望嘛</h3>
', '208.87.132.216', 57613, 0, 0, '2021-08-25 21:25:38', '2021-08-25 21:25:38', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (333, 96, 16, null, null, null, null, '1', '208.87.132.216', 16593, 0, 0, '2021-08-25 21:26:12', '2021-08-25 21:26:12', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (334, 97, 126, null, null, null, null, '<p>而且是那种游戏中可以设定躲谁的技能，不躲谁的，而且可以一键开关。真的离谱，官方再不加大力度，我想我真的要玩不下去了</p>
', '134.195.101.21', 50531, 0, 0, '2021-09-01 23:06:17', '2021-09-01 23:06:17', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (335, 98, 127, null, null, null, null, '<p>克隆是真杀币 官方 绝对有问题 为啥没把都对面比自己强 这把用寒冰对面用剑圣 下把用扎克对面又寒冰 克的死死的 真没意思 反正把把都没人家阵容强 一天了</p>
', '134.195.101.21', 31951, 0, 0, '2021-09-01 23:07:41', '2021-09-01 23:07:41', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (336, 98, 126, null, null, null, null, '已经碰见很多了', '134.195.101.21', 55301, 0, 0, '2021-09-01 23:08:36', '2021-09-01 23:08:36', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (337, 98, 16, null, null, null, null, '更新', '134.195.101.21', 33677, 0, 0, '2021-09-01 23:09:42', '2021-09-01 23:09:42', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (338, 99, 128, null, null, null, null, '', '134.195.101.21', 27483, 0, 0, '2021-09-02 23:07:58', '2021-09-02 23:07:58', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (339, 100, 129, null, null, null, null, '<p>退役退役，再也不想看到这人了，太装了！！！</p>
', '134.195.101.21', 48073, 0, 0, '2021-09-02 23:09:54', '2021-09-02 23:09:54', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (340, 100, 128, null, null, null, null, '小天就离谱', '134.195.101.21', 20359, 0, 0, '2021-09-02 23:10:49', '2021-09-02 23:10:49', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (341, 100, 16, null, null, null, null, '网站怎么不更新了', '134.195.101.21', 11947, 0, 0, '2021-09-02 23:11:36', '2021-09-02 23:11:36', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (342, 101, 130, null, null, null, null, '<p>希望一切顺利</p>
', '134.195.101.21', 18577, 0, 0, '2021-09-02 23:13:28', '2021-09-02 23:13:28', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (343, 3, 131, null, null, null, null, '<p><strong>python大致的阶段学习路线图：</strong><br />
<strong>1.python基础：</strong><br />
<strong>2.python高级编程：</strong><br />
<strong>3.python全栈前端、后端：</strong><br />
<strong>4.Linux编程学习：</strong><br />
<strong>5.python大数据、人工智能学习：</strong></p>
', '134.195.101.21', 7465, 0, 1, '2021-09-04 20:12:41', '2021-09-04 20:26:42', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (344, 3, 131, null, null, null, null, '', '134.195.101.21', 19981, 0, 0, '2021-09-04 20:19:47', '2021-09-04 20:19:47', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (345, 3, 132, null, null, null, null, '<p><strong>一、Python基础知识、变量、数据类型</strong><br />
<strong>二、Python条件结构、循环结构</strong><br />
<strong>三、Python函数</strong><br />
<strong>四、综合练习，做一个控制台的员工管理</strong></p>
<pre><code>&quot;&quot;&quot;
print(&quot;helloworld&quot;)
a=123
b=''a''
c=[1,2,3,4]
print(a,b,c,sep=''\\n'')

print(&quot;C:\\\\demo&quot;)

ch=&quot;南京&quot;
ch1=&quot;工程学院&quot;
ch2=&quot;学院&quot;
print(ch+ch1+ch2)
print(&quot;地址是：%s,\\n学校是：%s&quot;%(ch,ch1))

age=19
message=''我今年{}岁了,就读于{}''.format(age,ch)
print(message)

name=''admin''

print(id(name),name)

name1=name

print(id(name1),name1)

name2=&quot;admin&quot;
print(id(name2),name2)

num=8
print(id(num),num)

num+=5
print(id(num),num)

hell=3
print(hell**3)


print(&quot;hello&quot;*3)
&quot;&quot;&quot;
<span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span>##
''''''
需求：员工管理系统
功能：
1.添加员工信息
2.删除员工信息
3.修改员工信息
4.查看单个员工信息
5.查看所有员工信息
6.退出

KMOWLEDGE:函数，数据类型（列表字典），循环，条件语句
''''''
emps=[]

def choiceFunc():
        ''''''选择功能列表''''''
        print(&quot;*&quot;*30)
        print(&quot;1.添加员工信息&quot;)
        print(&quot;2.删除员工信息&quot;)
        print(&quot;3.修改员工信息&quot;)
        print(&quot;4.查看单个员工信息&quot;)
        print(&quot;5.查看所有员工信息&quot;)
        print(&quot;6.退出&quot;)

def addEmp():
        ''''''添加员工信息''''''
        Id=input(&quot;请输入员工编号：&quot;)
        name=input(&quot;请输入员工姓名：&quot;)
        gender=input(&quot;请输入员工性别：&quot;)
        age=input(&quot;请输入员工年龄:&quot;)
        emp={''Id'':Id,''name'':name,''gender'':gender,''age'':age}
        emps.append(emp)
        print(&quot;添加OK!&quot;)

def delEmp():
        choice=(int)(input(&quot;1.按编号删除\\\\2.按姓名删除：&quot;))
        if choice==1:
                ID=input(&quot;请输入要删除的员工编号:&quot;)
                for i in emps:
                        if i.get(''Id'')==ID:
                                emps.remove(i)
                                print(&quot;删除OK!&quot;)
                                break
                        else:
                                print(&quot;请输入正确的员工编号：&quot;)
        elif choice==2:
                name=input(&quot;请输入要删除的员工姓名：&quot;)
                for k in emps:
                        if k.get(''name'')==name:
                                emps.remove(k)
                                print(&quot;删除OK!&quot;)
                                break
                        else:
                                print(&quot;请输入正确的员工姓名：&quot;)
        else:
                print(&quot;请输入正确的指令：&quot;)

def updateEmp():
        ''''''修改员工信息''''''
        ID=input(&quot;请输入要修改的员工编号：&quot;)
        for elem in emps:
                if elem.get(''Id'')==ID:
                        elem[&quot;name&quot;]=input(&quot;请输入修改后的员工姓名：&quot;)
                        elem[&quot;gender&quot;]=input(&quot;请输入修改后的员工性别：&quot;)
                        elem[&quot;age&quot;]=input(&quot;请输入要修改后的员工年龄：&quot;)
                        print(&quot;修改成功！！！&quot;)
                        break
                else:
                        print(&quot;查无此人！&quot;)

def getEmpByld():
        ''''''查看单个员工信息''''''
        select=(int)(input(&quot;1.按编号查询\\\\2.按姓名查询：&quot;))
        if select==1:
                ID=input(&quot;请输入要查询的员工编号:&quot;)
                for emp in emps:
                        if emp.get(''Id'')==ID:
                                print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))
                                break
                        else:
                                print(&quot;查无此人!!!&quot;)
        elif select==2:
                name=input(&quot;请输入要查询的员工姓名：&quot;)
                for j in emps:
                        if j.get(''name'')==name:
                                print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(j[&quot;Id&quot;],j[&quot;name&quot;],j[&quot;gender&quot;],j[&quot;age&quot;]))
                                break
                        else:
                                print(&quot;查无此人!!!&quot;)
        else:
                print(&quot;请输入正确的指令：&quot;)


def getEmpAll():
        ''''''查看所有员工信息''''''
        for emp in emps:
                print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))
        print(&quot;一共查询到%d多少条数据信息&quot;%(len(emps)))



def Main():
        print(&quot;*******欢迎使用员工系统*******&quot;)
        while True:
                choiceFunc()
                num=(int)(input(&quot;请输入指令：&quot;))
                if num==1:
                        #pass
                        addEmp()
                elif num==2:
                        #pass
                        delEmp()
                elif num==3:
                        #pass
                        updateEmp()
                elif num==4:
                        #pass
                        getEmpByld()
                elif num==5:
                        #pass
                        getEmpAll()
                elif num==6:
                        print(&quot;您已退出系统！！！&quot;)
                        break
                else:
                        print(&quot;请输入正确的指令：&quot;)
Main()
</code></pre>
<p><strong>五、字符串</strong><br />
<strong>六、列表与元组</strong><br />
<strong>七、字典与集合</strong><br />
<strong>八、文件对象</strong><br />
<strong>九、模块与包(评论区)</strong> </p>
', '134.195.101.21', 21383, 0, 1, '2021-09-04 20:24:21', '2021-09-04 20:40:05', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (346, 3, 132, null, null, null, null, '', '134.195.101.21', 28503, 0, 0, '2021-09-04 20:24:51', '2021-09-04 20:24:51', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (347, 3, 132, null, null, null, null, '', '134.195.101.21', 58621, 0, 0, '2021-09-04 20:25:04', '2021-09-04 20:25:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (348, 3, 133, null, null, null, null, '<pre><code>  &quot;&quot;&quot;
  print(&quot;helloworld&quot;)
  a=123
  b=''a''
  c=[1,2,3,4]
  print(a,b,c,sep=''\\n'')
  
  print(&quot;C:\\\\demo&quot;)
  
  ch=&quot;南京&quot;
  ch1=&quot;工程学院&quot;
  ch2=&quot;学院&quot;
  print(ch+ch1+ch2)
  print(&quot;地址是：%s,\\n学校是：%s&quot;%(ch,ch1))
  
  age=19
  message=''我今年{}岁了,就读于{}''.format(age,ch)
  print(message)
  
  name=''admin''
  
  print(id(name),name)
  
  name1=name
  
  print(id(name1),name1)
  
  name2=&quot;admin&quot;
  print(id(name2),name2)
  
  num=8
  print(id(num),num)
  
  num+=5
  print(id(num),num)
  
  hell=3
  print(hell**3)
  
  
  print(&quot;hello&quot;*3)
  &quot;&quot;&quot;
  <span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span><span id="topic" value="1">##</span>##
  ''''''
  需求：员工管理系统
  功能：
  1.添加员工信息
  2.删除员工信息
  3.修改员工信息
  4.查看单个员工信息
  5.查看所有员工信息
  6.退出
  
  KMOWLEDGE:函数，数据类型（列表字典），循环，条件语句
  ''''''
  emps=[]
  
  def choiceFunc():
          ''''''选择功能列表''''''
          print(&quot;*&quot;*30)
          print(&quot;1.添加员工信息&quot;)
          print(&quot;2.删除员工信息&quot;)
          print(&quot;3.修改员工信息&quot;)
          print(&quot;4.查看单个员工信息&quot;)
          print(&quot;5.查看所有员工信息&quot;)
          print(&quot;6.退出&quot;)
  
  def addEmp():
          ''''''添加员工信息''''''
          Id=input(&quot;请输入员工编号：&quot;)
          name=input(&quot;请输入员工姓名：&quot;)
          gender=input(&quot;请输入员工性别：&quot;)
          age=input(&quot;请输入员工年龄:&quot;)
          emp={''Id'':Id,''name'':name,''gender'':gender,''age'':age}
          emps.append(emp)
          print(&quot;添加OK!&quot;)
  
  def delEmp():
          choice=(int)(input(&quot;1.按编号删除\\\\2.按姓名删除：&quot;))
          if choice==1:
                  ID=input(&quot;请输入要删除的员工编号:&quot;)
                  for i in emps:
                          if i.get(''Id'')==ID:
                                  emps.remove(i)
                                  print(&quot;删除OK!&quot;)
                                  break
                          else:
                                  print(&quot;请输入正确的员工编号：&quot;)
          elif choice==2:
                  name=input(&quot;请输入要删除的员工姓名：&quot;)
                  for k in emps:
                          if k.get(''name'')==name:
                                  emps.remove(k)
                                  print(&quot;删除OK!&quot;)
                                  break
                          else:
                                  print(&quot;请输入正确的员工姓名：&quot;)
          else:
                  print(&quot;请输入正确的指令：&quot;)
  
  def updateEmp():
          ''''''修改员工信息''''''
          ID=input(&quot;请输入要修改的员工编号：&quot;)
          for elem in emps:
                  if elem.get(''Id'')==ID:
                          elem[&quot;name&quot;]=input(&quot;请输入修改后的员工姓名：&quot;)
                          elem[&quot;gender&quot;]=input(&quot;请输入修改后的员工性别：&quot;)
                          elem[&quot;age&quot;]=input(&quot;请输入要修改后的员工年龄：&quot;)
                          print(&quot;修改成功！！！&quot;)
                          break
                  else:
                          print(&quot;查无此人！&quot;)
  
  def getEmpByld():
          ''''''查看单个员工信息''''''
          select=(int)(input(&quot;1.按编号查询\\\\2.按姓名查询：&quot;))
          if select==1:
                  ID=input(&quot;请输入要查询的员工编号:&quot;)
                  for emp in emps:
                          if emp.get(''Id'')==ID:
                                  print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))
                                  break
                          else:
                                  print(&quot;查无此人!!!&quot;)
          elif select==2:
                  name=input(&quot;请输入要查询的员工姓名：&quot;)
                  for j in emps:
                          if j.get(''name'')==name:
                                  print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(j[&quot;Id&quot;],j[&quot;name&quot;],j[&quot;gender&quot;],j[&quot;age&quot;]))
                                  break
                          else:
                                  print(&quot;查无此人!!!&quot;)
          else:
                  print(&quot;请输入正确的指令：&quot;)
  
  
  def getEmpAll():
          ''''''查看所有员工信息''''''
          for emp in emps:
                  print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))
          print(&quot;一共查询到%d多少条数据信息&quot;%(len(emps)))
  
  
  
  def Main():
          print(&quot;*******欢迎使用员工系统*******&quot;)
          while True:
                  choiceFunc()
                  num=(int)(input(&quot;请输入指令：&quot;))
                  if num==1:
                          #pass
                          addEmp()
                  elif num==2:
                          #pass
                          delEmp()
                  elif num==3:
                          #pass
                          updateEmp()
                  elif num==4:
                          #pass
                          getEmpByld()
                  elif num==5:
                          #pass
                          getEmpAll()
                  elif num==6:
                          print(&quot;您已退出系统！！！&quot;)
                          break
                  else:
                          print(&quot;请输入正确的指令：&quot;)
  Main()
</code></pre>
', '134.195.101.21', 34527, 0, 0, '2021-09-04 20:30:38', '2021-09-04 20:38:37', '2021-09-04 20:38:37', 3, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (349, 102, 134, null, null, null, null, '<p>想找几个一起玩的兄弟好难啊（主要是我太菜了）<br />
电一有没有兄弟每天晚上来整几把啊，正常水平，不看段位，别把兄弟们坑麻了就行:fanu:</p>
', '134.195.101.21', 36247, 0, 0, '2021-09-04 20:55:36', '2021-09-04 20:55:36', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (350, 102, 16, null, null, null, null, '怎么停更了', '134.195.101.21', 28553, 0, 0, '2021-09-04 20:56:20', '2021-09-04 20:56:20', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (351, 103, 135, null, null, null, null, '<p>有没有一起抢手游注册id呢，来组队，**我拉你，或者我进你队也可以</p>
', '134.195.101.21', 32273, 0, 0, '2021-09-04 21:07:10', '2021-09-04 21:07:10', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (352, 103, 134, null, null, null, null, '私聊你了', '134.195.101.21', 53443, 0, 0, '2021-09-04 21:08:05', '2021-09-04 21:08:05', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (353, 104, 136, null, null, null, null, '<p>想聊一些白银局很多人上分问题。（给那些真正想上分的人来看）<br />
1大环境：整体水平确实都提高了，特别是操作这块不比黄金差。意识呢有，但是不高，偶尔灵光但是大部分病态。还有很多前几个赛季在黄金和白金4，5水平的这几个赛季都有可能还在白银。导致水平参差不齐。<br />
2想上分就得研究版本，不能经常随着自己性子玩那些不强的英雄。多玩强势和近期好上分英雄是首选。在白银局有很大一批坑都是一直玩瑞文，亚索的。这些英雄特点就是操作难度极高，控制不稳定不好配合打野。打团容错率极低，熟练度和意识要求极高。吃天赋，真正有天赋的玩这些早钻石以上了。那些玩了几百上千还在白银的，真的想劝劝你们放弃这几个英雄排位。匹配娱乐随你们玩。<br />
3对线意识。很多可以说大部分白银对线意识确实差的离谱，甚至连兵线原理不懂，不知道如何利用兵线建立优势以及开阔视野。这些控线细节直接决定你是否能击杀对面和防止打野抓死。所以经常看到很多人即使玩那种很好单杀的英雄比如劫，男刀等等。对线了几十分钟却拿不到一个人头，而且极大可能还会被对面打野抓蹦。然后这把能不能赢只能靠其他队友是否能c。说到底线上取得不了优势就是自己问题。一把，两把可能不是自己问题，经常这样只能说对线细节太差，即使不死，也只能靠混上分。这样肯定上不了分。<br />
4再说版本。当前版本装备和技能数值伤害溢出，护甲和血量成长不高。大家进场都是各种秒。很多玩家还是不研究版本去玩那种自己没熟练度和意识驾驭不起来的英雄。比如经常可以看见的vn(进场容易被秒，前期发育碰到手长的根本没法对线，队友给不了输出环境，即使有装备也打不了多少输出)所以这种英雄还是少玩，白银路人局不会有人保自己ad。<br />
5游戏玩的少的玩家，这个是硬伤。很多英雄熟练度不够，英雄池潜，对自己英雄伤害都没有把握更不用说对自己队友伤害。所以经常有入场时机不对，或者跟不上队友情况。这个英雄理解是参差不齐的，所以这也是白银局配合极差的主要原因。<br />
6辅助位我单独说一下。白银局已经几乎看不到正常和会一点点的辅助了。其实想上分就是考验自己游戏理解和基本功，这个没有捷径可言，辅助位置是可以增加自己和队友配合以及游走意识的最好位置。如果每个人不花时间去玩下辅助我敢打包票，你的游戏水平绝对有个长期瓶颈和无法突破的点。<br />
最后上分干货：两种玩家分别说。第一老玩家：1赶快去找版本上分强势英雄。找一个最适合自己的，然后多练练。尽量争取每把都可以把对面打爆，这是最低要求。（因为路人局单排上分最少要一打3才能赢，对线都没有优势更别谈上分了）2碰到不合理阵容一定要沟通，沟通不了要舍得秒，不然进去也是输。什么是不合理阵容，打个比方对面一堆控，你们这边基本没稳定控制和打团配合，开团等英雄大概率会输。3不要下路上分，建议放弃。实在要玩下路建议玩游走类型辅助，老玩家应该知道什么是游走型，风女就是很好例子。下路没优势或者有优势都需要去其他路帮忙，扩大优势。4单排过程中一定要发掘玩的好或者配合度好的英雄，拉他们以后进行双排，有条件的请高段位陪玩一起。5当自己双排队友没上线，自己又想玩建议克制自己，尽量不要单排，单排只会无限增加你上分速度，赢1把输一把没有任何含义。宁愿去玩匹配等自己玩的好队友上线再排位。否则即使你把把单路把对面杀穿，系统还是会安排让你上不了分的队友。懂的都懂。<br />
下面说下新手玩家怎么上分：1上面有说到，版本装备和技能数值溢出来所以选择英雄是决定你上分关键。多玩不需要太多操作但是伤害爆炸英雄，比如石头人。2不要玩下路和打野，新手没几万把游戏经验，驾驭不了这几个位置。只玩中和上路。3实在线上打不出优势改完上路装甲坦克，保证不死到打团混分就行。或者玩控多猥琐英雄，比如小法。打团可以打团控和aoe伤害.<br />
4.留意打的好的打野队友，拉进去双排，多帮你抓。当然如果打野比你强，你英雄熟练度又一般，建议选硬控多的这样配合更容易，比如小法，石头人，泰坦，潘森。5不要好奇玩那些高操作或者需要高熟练度的英雄，一定要忍住，不然玩一次自己坑自己一次。6新手号其实系统一般比较友好，匹配到的队友不会太离谱。平时多看看回放和别人视频，增加对游戏理解。<br />
插曲ad方面：个人认为版本最好白银局上分ad就是轮子妈，而且也是唯一不依靠辅助的ad，即使辅助玩的跟屎一样，或者躲你后面放技能完全不影响。先说原理：1符文方面带艾离和血量高于百分之70增加伤害那个，副系选红色增加伤害眼石，以及增加非战争状态下移动速度，或者吸血。这套符文的好处就是最大化把你数值增加，前期你的平a和q将会比百分之99，ad输出都高。<br />
2打架尽量放弃你平a想法（除非输出环境很好），你把你q用好，刮2下，比你任何平a伤害都高。关键是还可以保命，你能平a到对面，对面技能或者平a也能打到你。在这个版本打团基本ad还没平a几次就暴毙了！3利用好清线最快的优势。比如对面打野喜欢抓下，一波兵一个q加几下w平a基本就收掉了，然后没兵缩自己塔下，打野不可能还会来抓你。如果队友崩了，你也可以用同样原理快速清线，让线很难进塔，守家第一人。最后，熟练度高可以根据阵容把艾利换成黑暗收割，核心打法还是尽量抛弃平a，用q打伤害。不太建议用ad上分，但是这个ad可以试试。<br />
最后最后，系统强制匹配队友保持胜率这点的克星只能是双排，白银玩家不要幻想一夜到钻石，这个很吃天赋。好好双排加上我上面的建议，上分是最快的。</p>
', '134.195.101.21', 50085, 0, 0, '2021-09-07 21:34:54', '2021-09-07 21:34:54', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (354, 104, 135, null, null, null, null, '来我的', '134.195.101.21', 27531, 0, 0, '2021-09-07 21:36:03', '2021-09-07 21:36:03', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (355, 105, 136, null, null, null, null, '还有一个 系统制裁 就给我卡黄金四 要么队友开局犯病一级团送头心态爆炸 要么打一半挂机恶心队友 我自己也就只能做到不坑不c 对线几乎都能赢 但是队友就硬给养出个大爹', '134.195.101.21', 5599, 0, 0, '2021-09-07 21:37:04', '2021-09-07 21:37:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (356, 105, 137, null, null, null, null, '<p>我打完一把游戏，突然多了一个什么回归大礼的活动，先是整个客户端放了一大段以前cg的混剪，然后完事，出来一个信封让我点，我一点就说访问人数过多，我重新登陆发下不见了，叫回归大礼那个活动，在客户端里面，没去网吧，在家里</p>
', '134.195.101.21', 62747, 0, 0, '2021-09-07 21:37:22', '2021-09-07 21:37:22', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (357, 105, 138, null, null, null, null, '<p>养老玩家求收，只玩官服，上班党，时间不固定，需要的留下联系方式我加。</p>
', '134.195.101.21', 8535, 0, 0, '2021-09-07 21:38:48', '2021-09-07 21:38:48', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (358, 106, 139, null, null, null, null, '<p>官方和平服现在还有恶意占地的现象吗？我不想玩战争服，不想自己辛辛苦苦建立起来的东西一夜就被打没了，而且喜欢自己一个人玩，不太希望加入部落。<br />
还有就是，这游戏现在多大？不是刚安装完的大小，而是玩了一段时间之后的大小。</p>
', '134.195.101.21', 3063, 0, 0, '2021-09-07 21:39:49', '2021-09-07 21:39:49', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (359, 106, 16, null, null, null, null, '现在网站没人管了吗', '134.195.101.21', 29631, 0, 0, '2021-09-07 21:40:29', '2021-09-07 21:40:29', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (360, 106, 138, null, null, null, null, '一起啊，**2840493212', '134.195.101.21', 30765, 0, 0, '2021-09-07 21:40:50', '2021-09-07 21:40:50', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (361, 107, 139, null, null, null, null, '准备500G', '134.195.101.21', 17509, 0, 0, '2021-09-07 21:43:18', '2021-09-07 21:43:18', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (362, 107, 140, null, null, null, null, '<p>烧！卡婊 我滴超人</p>
', '134.195.101.21', 61943, 0, 0, '2021-09-07 21:43:45', '2021-09-07 21:43:45', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (363, 107, 57, null, null, null, null, '还行', '134.195.101.21', 61311, 0, 0, '2021-09-07 21:46:08', '2021-09-07 21:46:08', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (364, 108, 141, null, null, null, null, '<p>感觉好难写出那种社会分层的割裂感。<br />
很想写出那种从破败街道底层慢慢上升到整个霓虹灯闪烁的摩天大厦的震撼场景。</p>
', '134.195.101.21', 64745, 0, 0, '2021-09-07 21:53:12', '2021-09-07 21:53:12', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (365, 108, 140, null, null, null, null, '这腿:tiaopi:', '134.195.101.21', 17663, 0, 0, '2021-09-07 21:55:04', '2021-09-07 21:55:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (366, 108, 16, null, null, null, null, '网站已经废了吗？', '134.195.101.21', 16645, 0, 0, '2021-09-07 21:55:52', '2021-09-07 21:55:52', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (367, 109, 142, null, null, null, null, '<p>好久没怎么玩了，最近又想回来上上分练练ad</p>
', '134.195.101.21', 49474, 0, 0, '2021-09-11 14:12:54', '2021-09-11 14:12:54', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (368, 110, 143, null, null, null, null, '<p>已经摸清规律了，这就是为什么很多钻石大师虽然段位上去了，依然很辣鸡的原因，并不是因为他们有多强（当然有双排带上去和真的很强的人，想必各位钻石，大师，王者高段位大神也在自己段位遇到这过这种辣鸡队友吧），但是依然能上去分。<br />
1强行胜率百分之五十左右，这个大家都知道不是什么秘密了。<br />
2几天不打，一上来就连胜，连胜后必连败。<br />
3冲点钱，大概率匹配会玩的队友，长时间不充钱就给你辣鸡队友。<br />
4每天第一把赢了后再打，直到输为止，输一把就下线，然后第二天或者第三天再玩，反复这样做，后台系统就会读取你是娱乐玩家，经常给你好队友，为了最大化留住你。<br />
5如果你是死磕那种人，连输了还不走，就经常给你辣鸡队友，或者经常给你不玩的位置（我最离谱的一把是五个队友都不是在自己的位置，辛好那把我沟通后有四个人换过来了，强行赢了一把），就这样利用心理学pua你。<br />
6系统会每天读取你的盘数，盘数多的利用心理学pua附着粘性，盘数一般的五五开，盘数少的利用胜多败少吸引。</p>
', '134.195.101.21', 14459, 0, 0, '2021-09-15 21:47:44', '2021-09-15 21:47:44', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (369, 110, 140, null, null, null, null, '玩吗', '134.195.101.21', 38281, 0, 0, '2021-09-15 21:52:50', '2021-09-15 21:52:50', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (370, 111, 144, null, null, null, null, '<p>1.弱势路没人选，强势路选的人太多！<br />
从面板数值可以看出，上路的强度是所有位置中高得离谱的。如果两个上路选手有较大的水平差距，那么打野是照顾不了的。一是等级和装备的劣势，二是上路的路程太长，往返消耗掉太多时间！</p>
<p>2.资源分配不合理<br />
下路放龙，上路放峡谷。如果你是一名主攻ADC的玩家，前期如果其他路逆风，只有下路对线有一定优势，你肯定需要抢峡谷先锋来尽快抱团，结束又长又臭的对线期。<br />
如果你是一名打野，更想要的是小龙，而不是峡谷先锋。如果小龙放在上路，一是可以制约过强的上路属性，二是下路被打得逆风，小龙位置放在下路打野是很难拿到小龙的。加上打野不是靠刷野起来的英雄。和线上对刷没有任何优势！</p>
<p>3.强度分配不合理<br />
打野难以建立优势（等级低线上崩了带不了节奏）<br />
辅助没有成长优势（前期有强度但没人理，后期肉起来也很难肉过上单）<br />
<br />
4.神话装备能契合的英雄不多<br />
所以神话装造就了两个问题，要么选契合度高的英雄赢下比赛，要么选契合度低的英雄获得失败！造成了玩法过于的单调！</p>
', '134.195.101.21', 50629, 0, 0, '2021-09-15 21:55:39', '2021-09-15 21:55:39', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (371, 111, 143, null, null, null, null, '确实', '134.195.101.21', 28139, 0, 0, '2021-09-15 21:56:04', '2021-09-15 21:56:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (372, 111, 16, null, null, null, null, '不更？', '134.195.101.21', 44041, 0, 0, '2021-09-15 21:57:26', '2021-09-15 21:57:26', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (373, 3, 145, null, null, null, null, '<p>811231806<br />
13213630562</p>
', '134.195.101.21', 7123, 0, 0, '2021-09-18 00:02:49', '2021-09-18 00:02:49', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (374, 112, 146, null, null, null, null, '<p>晚上想着玩两把LOL，上号发现一个人在玩，而且玩了好几局游戏了，我就改了个密码，然后发现号被封了七天，理由是第三方软件，本来想着自认倒霉，申请处罚减免，结果现在七天变三年了，有没有大佬出出主意有啥办法，玩了六七年了，挺不甘心的.</p>
', '104.168.83.91', 33628, 0, 0, '2021-09-21 21:17:19', '2021-09-21 21:17:19', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (375, 112, 145, null, null, null, null, '????', '104.168.83.91', 33726, 0, 0, '2021-09-21 21:17:43', '2021-09-21 21:17:43', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (376, 112, 145, null, null, null, null, '什么鬼', '104.168.83.91', 33770, 0, 0, '2021-09-21 21:17:53', '2021-09-21 21:17:53', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (377, 112, 16, null, null, null, null, '<span id="member" value="2">@Jerome</span>', '104.168.83.91', 33908, 0, 0, '2021-09-21 21:18:15', '2021-09-21 21:18:15', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (378, 113, 147, null, null, null, null, '<p>用心做皮肤用脚做游戏，打一把一把掉，还无法重连….有没有人知道，网络绝对没问题</p>
', '104.168.83.91', 34764, 0, 0, '2021-09-21 21:20:29', '2021-09-21 21:20:29', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (379, 113, 146, null, null, null, null, 'LOL现在就是这样', '104.168.83.91', 34922, 0, 0, '2021-09-21 21:20:57', '2021-09-21 21:20:57', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (380, 113, 146, null, null, null, null, '垃圾游戏一个', '104.168.83.91', 34932, 0, 0, '2021-09-21 21:21:09', '2021-09-21 21:21:09', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (381, 113, 16, null, null, null, null, '?', '104.168.83.91', 34990, 0, 0, '2021-09-21 21:21:32', '2021-09-21 21:21:32', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (382, 114, 147, null, null, null, null, 'LOL不一直都是这样', '104.168.83.91', 35374, 0, 0, '2021-09-21 21:23:09', '2021-09-21 21:23:09', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (383, 114, 148, null, null, null, null, '<p>这个有技巧嘛？今天转到了站台载具，这个东西贵吗。新人不太懂，麻烦告诉一下</p>
', '104.168.83.91', 35512, 0, 0, '2021-09-21 21:23:24', '2021-09-21 21:23:24', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (384, 8, 148, null, null, null, null, '手放上去10秒在转', '104.168.83.91', 35822, 0, 0, '2021-09-21 21:24:29', '2021-09-21 21:24:29', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (385, 3, 149, null, null, null, null, '<p>inquire</p>
<p> </p>
', '104.168.83.91', 40546, 0, 0, '2021-09-21 21:49:49', '2021-09-21 21:49:49', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (386, 3, 1, null, null, null, null, 'https://www.zhihu.com/question/321913492?utm_source=wechat_session', '104.168.83.91', 42354, 0, 0, '2021-09-21 22:00:08', '2021-09-21 22:00:08', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (387, 3, 145, null, null, null, null, '906839075', '134.195.101.35', 61543, 0, 0, '2021-09-25 21:53:26', '2021-09-25 21:53:26', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (388, 115, 150, null, null, null, null, '<p>开电脑好好的，开进加载界面直接笔记本断网，连无线网的选项都没有，什么鬼啊到底是</p>
', '134.195.101.21', 8771, 0, 0, '2021-09-30 22:20:50', '2021-09-30 22:20:50', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (389, 95, 151, null, null, null, null, '<p>能不能别乱带节奏啊，不看兵线抓上，<br />
结果导致上路崩盘，亏不亏心里没数吗，<br />
劣势路可以帮但是要在兵线很好的时候，<br />
兵线进塔年来抓，杀掉还亏死</p>
', '134.195.101.21', 7033, 0, 0, '2021-09-30 22:23:05', '2021-09-30 22:23:05', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (390, 95, 149, null, null, null, null, '什么东西', '134.195.101.21', 6585, 0, 0, '2021-09-30 22:23:48', '2021-09-30 22:23:48', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (391, 95, 134, null, null, null, null, '1', '134.195.101.21', 3071, 0, 0, '2021-09-30 22:24:27', '2021-09-30 22:24:27', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (392, 95, 150, null, null, null, null, ':fadai:', '134.195.101.21', 22733, 0, 0, '2021-09-30 22:25:09', '2021-09-30 22:25:09', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (393, 116, 152, null, null, null, null, '<p>登录后，选完区，就不显示了，防火墙关了、电脑管家卸载了，还是没用，有人知道怎么搞吗？？？</p>
', '134.195.101.21', 30955, 0, 0, '2021-09-30 22:27:12', '2021-09-30 22:27:12', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (394, 116, 150, null, null, null, null, '买个新主机', '134.195.101.21', 9499, 0, 0, '2021-09-30 22:27:42', '2021-09-30 22:27:42', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (395, 116, 151, null, null, null, null, '盲猜，白银黄金上单平时要么压在对面塔下或被压在自己塔下，打不赢就怪打野', '134.195.101.21', 17067, 0, 0, '2021-09-30 22:27:52', '2021-09-30 22:27:52', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (396, 116, 16, null, null, null, null, 'S', '134.195.101.21', 4519, 0, 0, '2021-09-30 22:28:13', '2021-09-30 22:28:13', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (397, 117, 153, null, null, null, null, '<p>上午刚刚买的战斗学院EZ，下午就没了</p>
', '103.152.113.197', 1088, 0, 0, '2021-10-03 21:22:38', '2021-10-03 21:22:38', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (398, 118, 153, null, null, null, null, '怎么可能', '103.152.113.35', 1716, 0, 0, '2021-10-03 21:23:29', '2021-10-03 21:23:29', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (399, 118, 154, null, null, null, null, '<p>啥都不会那种:xieyanxiao:<br />
纯纯过来练心态那种</p>
', '103.152.113.225', 2036, 0, 0, '2021-10-03 21:24:07', '2021-10-03 21:24:07', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (400, 119, 154, null, null, null, null, '哪个区', '103.152.113.116', 2714, 0, 0, '2021-10-03 21:25:23', '2021-10-03 21:25:23', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (401, 119, 155, null, null, null, null, '<p>我不用wegame就只能下载补丁是怎么回事？强行让人用你伴生软件？</p>
', '103.152.113.1', 2880, 0, 0, '2021-10-03 21:25:48', '2021-10-03 21:25:48', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (402, 8, 155, null, null, null, null, '我四五天前都有下载器下载的选项，今天去看就只有wegame了', '103.152.113.35', 3140, 0, 0, '2021-10-03 21:26:25', '2021-10-03 21:26:25', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (403, 8, 154, null, null, null, null, '玩个猫 带飞', '103.152.113.88', 3310, 0, 0, '2021-10-03 21:26:44', '2021-10-03 21:26:44', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (404, 8, 152, null, null, null, null, '重装', '103.152.113.228', 3608, 0, 0, '2021-10-03 21:27:04', '2021-10-03 21:27:04', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (405, 8, 151, null, null, null, null, '正常', '103.152.113.163', 3716, 0, 0, '2021-10-03 21:27:15', '2021-10-03 21:27:15', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (406, 120, 156, null, null, null, null, '<p>这个游戏到底怎么了？匹配机制越来越沙雕了，我想问问，这是故意的么？</p>
', '103.152.113.191', 4516, 0, 0, '2021-10-03 21:28:49', '2021-10-03 21:28:49', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (407, 120, 155, null, null, null, null, '腾讯不一直是这样吗', '103.152.113.249', 4798, 1, 0, '2021-10-03 21:29:23', '2021-10-03 21:29:23', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (408, 120, 155, 407, 120, null, null, '强制让使用自己的软件', '103.152.113.24', 5350, 0, 0, '2021-10-03 21:30:38', '2021-10-03 21:30:38', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (409, 122, 157, null, null, null, null, '<p>换了个电脑，mk2只能鼠标开火了，以前在小破站上看教程把开火键改成0，现在换了个电脑改不回去了，那个教程也找不到了，有没有知道的大佬告知一下:hecai::hecai::hecai:</p>
', '103.152.113.62', 62634, 0, 0, '2021-10-18 21:49:18', '2021-10-18 21:49:18', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (410, 122, 16, null, null, null, null, 'bug有点多', '103.152.113.19', 63148, 0, 0, '2021-10-18 21:49:48', '2021-10-18 21:49:48', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (411, 122, 156, null, null, null, null, '已经退游了', '103.152.113.179', 63856, 0, 0, '2021-10-18 21:50:26', '2021-10-18 21:50:26', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (412, 123, 158, null, null, null, null, '<p>有偿 速通 有没有大佬能带一下！ 感谢感谢！ 最好能通宵</p>
', '103.152.113.122', 65380, 0, 0, '2021-10-18 21:52:00', '2021-10-18 21:52:00', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (413, 123, 157, null, null, null, null, '默认', '103.152.113.134', 1356, 0, 0, '2021-10-18 21:52:30', '2021-10-18 21:52:30', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (414, 123, 16, null, null, null, null, '提示我账号异常能看一下怎么回事吗', '103.152.113.49', 1734, 0, 0, '2021-10-18 21:52:49', '2021-10-18 21:52:49', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (415, 124, 159, null, null, null, null, '<p>不会玩猫咪就办了不行吗？非要去抢猫咪。<br />
劣势一点翻盘点都没有。lpl优势就是打架啊，不选抓机会开团辅助，玩啥呢？<br />
你看看几个队伍玩的猫咪，真的浪费辅助一个位置。真是谁上谁都行。反正就挂机嘛</p>
', '103.152.113.150', 4160, 0, 0, '2021-10-18 21:55:26', '2021-10-18 21:55:26', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (416, 124, 158, null, null, null, null, '私聊', '103.152.113.198', 5120, 0, 0, '2021-10-18 21:56:40', '2021-10-18 21:56:40', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (417, 125, 160, null, null, null, null, '<p>卢仙娜美组合，不愧是下路T0组合，我的娜美基本是Q不到人的，但是只要点出电刑这个天赋，对线必特么优势，卧槽。<br />
卢仙滑步过去点点，我上个w，触发电刑，一套下去对面AD直接大残好家伙，艾欧尼亚好几个千场白金的AD选手，在我的教唆下使用卢仙，都说太爽了，那伤害直接拉满，操作都透着一股子自信的味道，对线压制力拉满，团战疯狂操作输出，强得像个大师，卢仙娜美，不愧是版本T0，大家还有别的下路T0组合吗。</p>
', '103.152.113.122', 7142, 0, 0, '2021-10-18 21:58:35', '2021-10-18 21:58:35', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (418, 125, 158, null, null, null, null, 'ID多少', '103.152.113.215', 8110, 0, 0, '2021-10-18 21:59:26', '2021-10-18 21:59:26', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (419, 125, 159, null, null, null, null, '今年没希望了，烂掉了', '103.152.113.227', 8260, 0, 0, '2021-10-18 21:59:43', '2021-10-18 21:59:43', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (420, 125, 16, null, null, null, null, '卖东西吗', '103.152.113.27', 8648, 0, 0, '2021-10-18 22:00:12', '2021-10-18 22:00:12', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (421, 126, 161, null, null, null, null, '<p>看了今年的比赛，感觉和s7到s10的lpl相比就是没有一个或多个选手能站出来。比如s7的mlxg和uzi，s8的ig三叉戟，s9的天，s10的阿bin，今年没啥让人眼前一亮可以靠自己操作逆天改命的，全都打的比较稳健，优势送机会，劣势没能力找机会:cahan:这样的比赛看着也郁闷啊。</p>
<p> </p>
', '103.152.113.63', 10410, 0, 0, '2021-10-18 22:01:34', '2021-10-18 22:01:34', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (422, 127, 162, null, null, null, null, '<p>之前ns版的时候因为正式版快出了就没想着练这怪了，这两天趁着pc试玩练了几天终于打过了</p>
<p>:liulei::liulei::liulei:</p>
<p>打起来有当年打王咩的感觉了:xieyanxiao::xieyanxiao:</p>
<p> </p>
', '103.152.113.70', 16920, 0, 0, '2021-10-18 22:08:31', '2021-10-18 22:08:31', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (423, 127, 161, null, null, null, null, ':juhua:', '103.152.113.1', 18014, 0, 0, '2021-10-18 22:09:39', '2021-10-18 22:09:39', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (424, 127, 16, null, null, null, null, '没办法使用', '103.152.113.38', 18584, 0, 0, '2021-10-18 22:10:10', '2021-10-18 22:10:10', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (425, 3, 163, null, null, null, null, '<p><strong>======================</strong></p>
<p><strong>第一天</strong></p>
<p><strong>================</strong></p>
<p><strong>1.Spring框架作用和优点</strong></p>
<p><strong>Spring提供了一个整合应用平台。<br />
该框架具有IOC和AOP机制的实现，<br />
基于这些特性开发系统，<br />
可以提高系统结构的灵活性，<br />
降低组件之间的耦合度。</strong></p>
<pre><code>在整合应用，
我们会将应用程序的Action,DAO,Service组件交给Spring框架负责管理，
使用Spring框架的IOC和AOP机制以低耦合方式建立关联。
</code></pre>
<p>*<strong>2.Spring框架容器</strong></p>
<pre><code>Spring框架提供了一个容器，主要在该容器中管理应用程序的各个组件，建立组件关联</code></pre>
<p><strong>1）容器特性，如何实例化</strong></p>
<pre><code>Spring容器首先具有工厂特性，除此之外还具备了IOC和AOP机制的实现。</code></pre>
<p><strong>BeanFactory&lt;-继承-ApplicationContext<br />
两个实现类:<br />
ClassPathApplicationContext<br />
FileSystemApplicationContext</strong></p>
<p><strong>2）容器如何对Bean组件管理</strong></p>
<pre><code>当将一个Bean组件交给Spring容器后，Spring容器可以负责创建、销毁该对象。


*a.Bean对象创建模式

 Spring容器支持singleton和prototype两种模式创建对象。
 默认为singleton，如果想改变可以使用scope属性定义。
 （如果在Web整合应用，还支持request,session等值）


b.Bean对象的创建时机

singleton 模式对象在容器实例化时创建，
通过lazy=true属性可以将创建推迟到getBean方法。
prototype 模式对象在getBean方法时创建
</code></pre>
<p><strong>c.Bean对象初始化设置</strong></p>
<p><strong>通过init-method属性可以指定一个方法当做初始化方法，<br />
在对象创建后自动执行。</strong></p>
<p><strong>通过destroy-method属性可以指定一个销毁方法，<br />
在对象被垃圾回收前自动执行。<br />
（仅对singleton对象有效）</strong></p>
<p>*<strong>3.Spring框架的IOC机制</strong></p>
<p><strong>1)IOC概念</strong></p>
<pre><code>Inverse of Controller 被称为反向控制、控制反转。
更确切的讲应该是控制的转移。
</code></pre>
<p><strong>意思是当两个组件之间具有使用关系时，<br />
原有将对象创建和关系指定逻辑交给了使用一方负责。<br />
最终导致了两个组件耦合度过高，<br />
为维护和组件替换带来的不便。<br />
采用了IOC机制后，<br />
会将对象创建和关系指定这些逻辑交给第三方框架或容器负责，<br />
将这些控制逻辑转移给了第三方负责，<br />
这样发生变更后，只需要修改第三方配置就可以了。</strong></p>
<p><strong>2)DI概念（Dependency Injection）</strong></p>
<pre><code>DI被称为依赖注入。Spring框架中IOC机制是通过DI技术实现的。
DI注入技术有以下几种实现：
</code></pre>
<p>*<strong>a.setter方式注入（推荐）</strong></p>
<pre><code> 依靠setter方法接收注入的对象实例
 --添加setter方法
 --采用&lt;property&gt;描述
</code></pre>
<p><strong>b.constructor方式注入</strong></p>
<pre><code> 依靠构造方法接收注入的对象实例
 --添加带参数构造方法
 --采用&lt;constructor-arg&gt;描述
</code></pre>
<p><strong>4.DI注入的使用</strong></p>
<h1>可以通过注入技术注入各种不同类型的数据</h1>
<p><strong>1)注入一个Bean对象<br />
采用ref=&quot;Bean的ID名称&quot;<br />
<code>   &lt;property name=&quot;costDao&quot; ref=&quot;hibernateCostDao&quot;&gt;</code> <br />
<code>&lt;/property&gt;</code> <br />
2)注入一个基本类型数据<br />
采用value=&quot;值&quot;<br />
<code>   &lt;property name=&quot;password&quot; value=&quot;123456&quot;&gt;</code> <br />
<code>&lt;/property&gt;</code> <br />
3)注入集合类型数据<br />
List,Set,Map,Properties</strong></p>
<p><strong>第二天</strong></p>
<p><strong>================</strong></p>
<p><strong>1.Spring框架的AOP机制</strong></p>
<p><strong>1)什么是AOP和优点</strong></p>
<p><strong>Apsect Oriented Programming面向方面编程。<br />
面向方面编程是以OOP面向对象编程为基础。<br />
AOP关注的是共通处理问题，可以将共通处理封装成一个组件（方面组件），<br />
然后采用AOP机制可以以低耦合方式作用到指定的目标组件上。</strong></p>
<p><strong>2)AOP使用步骤</strong></p>
<pre><code>a.引入Spring的IOC和AOP开发包
b.添加Spring容器配置文件
c.将共通处理封装成一个独立Bean组件
d.采用AOP配置将Bean组件作用到其它目标组件及其方法上
</code></pre>
<p><strong>3)AOP相关概念</strong></p>
<pre><code> *a.方面(Aspect)
  方面指的封装共通处理的组件。可以灵活的切入到目标对象及方法上。
 *b.切入点(Pointcut)
  切入点用于指定目标对象及方法，利用特定表式指定目标对象及方法
 c.连接点(JoinPoint)
 连接点指的是方面和某一个目标方法的关联点。切入点是连接点的集合
 *d.通知(Advice)
  通知用于指定方面功能在目标对象方法上执行的时机。
  例如方法前、方法后、异常发生后等。
 e.目标组件(Target)
  使用方面功能的Bean组件，或者切入点指定的Bean组件
 f.动态代理(AutoProxy)
 动态代理机制是AOP机制的实现原理.
 Spring框架在使用AOP配置后，返回的Bean对象，
 是采用动态代理机制生成的一个新类型。
 该类型的方法负责去执行方面组件和目标组件的处理。
</code></pre>
<p><strong>Spring框架采用了两种方式生成动态代理类。<br />
--采用CGLIB工具生成(目标对象没有接口)<br />
public class 代理类 extends 原目标组件{<br />
// 重写原目标组件的方法<br />
}<br />
--采用JDK Proxy API生成(目标对象有接口)<br />
public class 代理类 implements 原目标组件接口{<br />
// 重写原目标组件的方法<br />
}</strong></p>
<p>*<strong>4)切入点表达式</strong></p>
<pre><code>利用表达式指定目标组件及方法。</code></pre>
<p><em><em><em><em><em>a.方法限定表达式<br />
execution(修饰符?<br />
返回类型 方法名(参数列表) throws异常?)<br />
示例1:匹配容器中所有组件以add开始的方法<br />
execution(</em> add</em> (..))<br />
示例2:匹配CostService组件的所有方法<br />
execution(</em><br />
org.tarena.service.CostService.<em>(..))<br />
示例3:匹配service包下所有类的所有方法<br />
execution(</em> org.tarena.service.<em>.</em> (..))<br />
示例4:匹配service包下及其子包中所有类的所有方法<br />
execution(</em> org.tarena.service..<em>.</em> (..))</em>***</p>
<p>**<em><em><em>b.类型限定表达式<br />
within(类型)<br />
示例1:匹配CostService类中所有方法<br />
within(org.tarena.service.CostService)<br />
示例2:匹配service包下所有类的所有方法<br />
within(org.tarena.service.</em> )<br />
示例3:匹配service包及其子包所有类所有方法<br />
within(org.tarena.service..</em> )</em> ***</p>
<p>*<em><strong>c.Bean名称限定表达式<br />
bean(Bean的id或name属性值)<br />
示例1:匹配id=costAction的Bean组件方法<br />
bean(costAction)<br />
示例2:匹配名称以DAO结尾的Bean组件方法<br />
bean(<em>DAO)<br />
d.参数限定表达式<br />
args(参数列表)<br />
示例1:匹配只有一个参数，并且符合Serializable类型<br />
args(java.io.Serializable)<br />
(注意:上述表达式可以采用&amp;&amp;,||连接在一起)</em></strong></em></p>
<p><strong>5)通知类型</strong></p>
<p><strong>通知主要用于指定方面组件在目标组件方法上作用的时机。<br />
a.前置通知<a href="aop:before">aop:before</a><br />
方面组件在目标方法之前调用<br />
b.后置通知<a href="aop:after-returnning">aop:after-returnning</a><br />
方面组件在目标方法之后调用，如果目标方法抛出异常，将不再执行方面组件<br />
c.最终通知<a href="aop:after">aop:after</a><br />
方面组件在目标方法之后调用，目标方法有无异常都会执行<br />
d.异常通知<a href="aop:after-throwing">aop:after-throwing</a><br />
方面组件在目标方法抛出异常后执行。<br />
e.环绕通知<a href="aop:around">aop:around</a><br />
方面组件在目标方法之前和之后都要执行<br />
try{<br />
// 前置通知--执行方面组件<br />
// 执行目标方法<br />
// 后置通知--执行方面组件<br />
}catch(Exception ex){<br />
// 异常通知--执行方面组件<br />
}finally{<br />
// 最终通知--执行方面组件<br />
}</strong></p>
<p><strong>6)采用AOP记录异常日志信息</strong></p>
<p><strong>a.编写记录异常信息的方面组件ExceptionBean<br />
b.将方面组件定义到Spring容器<br />
c.添加AOP配置，定义切入点，方面和通知元素</strong></p>
<p><strong>7)Log4j工具简介</strong></p>
<p><strong>Log4j是一款日志工具。<br />
优点：该日志器可以灵活的控制输出信息的级别和输出的方式。<br />
Log4j主要由以下3部分构成：<br />
a.日志器组件<br />
(Logger)</strong></p>
<h1>提供了消息输出的方法，可以按消息级别输出</h1>
<p><strong>b.输出器组件(Appender)<br />
用于指定消息采用哪种方式输出。例如以文件形式输出，以控制台形式输出<br />
c.布局器组件(Layout)<br />
用于指定消息输出的格式。<br />
一个日志器可以指定多个不同的输出器，每个输出器只能对应一个布局器。</strong></p>
<p><strong>第三天</strong></p>
<p><strong>===========</strong></p>
<p><strong>1.Spring注解配置的使用</strong></p>
<p><strong>注解技术源于JDK 5.0,从Spring2.5版本开始支持注解配置形式，可以替代原有的XML配置。<br />
注解可以在类定义、方法定义、成员定义前使用。</strong></p>
<p><strong>1)<code>&lt;bean&gt;</code>  元素和注入的配置</strong></p>
<pre><code> 可以采用组件扫描技术替代原有的&lt;bean&gt;定义和注入配置。
 使用方法如下：
 a.在applicationContext.xml中开启组件扫描功能，指定要扫描的package路径  
 b.如果需要将组件扫描到Spring容器，需要在组件类定义前使用以下注解标记。
  --@Controller
  --@Service
  --@Repository
  --@Component
 默认扫描到容器采用类名首字母小写当id值，
 如果需要指定可采用@Service(&quot;id值&quot;)格式指定。
 如果需要修改scope创建对象的模式，
 可使用@Scope(&quot;prototype&quot;)格式指定
c.如果两个组件之间有注入关系，可以在变量定义前或setter方法前使用下面注解标记
 --@Resource
 --@Autowired
 如果不指定注入的id名，会采用类型匹配注入。
 @Resource(name=&quot;costDao&quot;)将指定的costDao对象注入。
</code></pre>
<p><strong>2)<code>&lt;aop&gt;</code>  元素配置</strong></p>
<pre><code> AOP注解配置的使用方法如下：
a.在applicationContext.xml中开启AOP注解配置。
b.在方面组件中使用以下注解标记。
--@Aspect // 将Bean组件定义成方面，类定义前使用
--@Pointcut// 定义切入点表达式,方法定义前使用。因此需要编写个空方法，才能使用该标记。
--通知定义,@Around,@Before,
  @After,@AfterReturning,
  @AfterThrowing,在方法前使用
</code></pre>
<p><strong>2.利用Spring整合JDBC和Hibernate</strong></p>
<p><strong>1)Spring框架对数据库访问技术提供了以下支持</strong></p>
<pre><code>a.提供了一致的异常处理层次.提供了一套异常类型，例如DataAccessException  
b.提供了编写DAO的一套工具类,主要有DaoSupport和Template两种封装类型。
</code></pre>
<p><strong>JDBC技术:JdbcDaoSupport,JdbcTemplate<br />
Hibernate技术:HibernateDaoSupport,<br />
HibernateTemplate<br />
c.提供了事务管理的支持。只需要添加AOP配置即可。</strong></p>
<p><strong>2)Spring和Jdbc技术的整合</strong></p>
<p><strong>--新建工程，引入jar包<br />
(spring开发包,ojdbc.jar,dbcp开发包)<br />
--在src下添加applicationContext.xml<br />
--针对COST表编写实体类<br />
--编写CostDAO接口,定义要实现的方法<br />
--编写JdbcCostDAO实现类<br />
(继承JdbcDaoSupport,在方法体中使用JdbcTemplate类完成增删改查操作)<br />
update:用于增、删、改操作<br />
queryForObject:用于查询一条记录<br />
query:用于查询多条记录<br />
queryForInt:用于查询一个数值的<br />
--将JdbcCostDAO在Spring容器中定义<br />
--追加一个连接池，在Spring容器中定义一个dataSource组件对象Bean，<br />
并将该Bean组件对象给JdbcCostDAO注入。<br />
(JdbcDaoSupport里有一个setDataSource方法，<br />
接收容器注入的DataSource对象，<br />
利用DataSource对象实例化JdbcTemplate)</strong></p>
<p><strong>3)Spring和Hibernate技术的整合</strong></p>
<pre><code>--创建工程，引入开发包
(spring开发包,ojdbc.jar,dbcp连接池,hibernate框架开发包)
--在src下添加applicationContext.xml
--针对数据表添加实体类和映射描述文件
  (Cost类,Cost.hbm.xml)
--编写CostDAO接口
--编写实现类HibernateCostDAO
 (继承HibernateDaoSupport,采用HibernateTemplate的方法完成增删改查)
  save():添加
  update():更新
  delete():删除
  load(),get():按主键查询
  find():执行HQL语句
--在Spring容器配置HibernateCostDAO
</code></pre>
<p><strong>需要事先定义DataSource,SessionFactory<br />
组件对象，按DataSource-注入-&gt;<br />
SessionFactory-注入-&gt;<br />
HibernateCostDAO顺序建立关联</strong></p>
<h1>提示：如果需要在DAO中使用Session，</h1>
<p><strong>可以采用DaoSupport的getSession()获取，<br />
也可以通过HibernateTemplate.execute方法以回调方式使用。<br />
(参考spring_03_2中HibernateCostDAO.java的useSession()方法)</strong></p>
<p><strong>第四天</strong></p>
<p><strong>================</strong></p>
<p><strong>1.Spring框架整合Struts2步骤</strong></p>
<p>*<em><strong>a.创建工程，引入开发包<br />
Struts开发包,Spring开发包<br />
b.添加Struts控制器配置和struts.xml配置文件<br />
<em>c.引入struts2-spring-plugin.jar整合包<br />
然后将 <code>&lt;action&gt;</code>  配置的class指定为Spring容器中Action组件定义的id值。<br />
(plugin.jar整合包提供一个StrutsSpringObjectFactory,采用该组件获取Action对象。<br />
该组件可以访问Spring容器，获取容器中定义的Bean对象)</em></strong></em></p>
<p>*<strong>d.在web.xml中添ContextLoaderListener组件,用于在启动服务器时实例化Spring容器</strong></p>
<p><strong>2.struts-spring-plugin.jar作用</strong></p>
<p><strong>该plugin.jar提供了一个StrutsSpringObjectFactory类，<br />
当引入该jar后，Struts2会采用该组件获取Action对象<br />
ObjectFactory在获取Action对象时，有以下两种途径：</strong></p>
<p>****a.利用 <code>&lt;action&gt;</code>  元素的class属性值去Spring容器中寻找Bean对象，寻找规则是id=class值<br />
参考(ssh2-2.jpg结构图)<br />
b.如果利用 <code>&lt;action&gt;</code>  的class属性值去Spring容器获取不到Bean对象，<br />
ObjectFactory会利用反射机制创建一个Action对象，<br />
然后访问Spring容器，<br />
将容器中id名与Action属性一致的Bean对象注入给Action。<br />
参考(ssh2-1.jpg结构图)<br />
try{<br />
// 第一种利用class值去Spring获取Bean对象<br />
}catch(){<br />
// 第二种自己创建一个Action，之后将Spring中的Bean对象给Action属性注入。<br />
//注入规则是属性名=id值<br />
}****</p>
<p><strong>3.SSH学习建议</strong></p>
<p><strong>XML和注解配置，XML配置方式了解，学会使用注解配置形式。<br />
Struts2+Spring整合，建议采用ssh2-1.jpg结构整合。<br />
掌握：ssh2-1.jpg采用注解方法整合应用。<br />
（参考spring_04_4的demo2案例）</strong></p>
<p><strong>======================</strong></p>
<p><strong>第五天</strong></p>
<p><strong>===================</strong></p>
<p>*<strong>1.重构netctoss系统的资费管理模块处理</strong></p>
<p><strong>1)重构资费列表显示功能<br />
a.梳理处理流程<br />
/cost/list.action--&gt;ListCostAction<br />
--&gt;CostDAO.findAll/getTotalPages<br />
--&gt;cost_list.jsp<br />
b.重构CostDAO的findAll/getTotalPages<br />
（参考原来总结过的Spring+Hibernate步骤）<br />
c.测试Spring容器中的DAO<br />
d.改造ListCostAction<br />
--引入struts-spring-plugin.jar<br />
--将Spring容器中的DAO给Action注入<br />
e.在web.xml中添加ContextLoaderListener配置，启动服务器时实例化Spring容器对象。</strong></p>
<p><strong>2)重构资费修改操作</strong></p>
<p><strong>a.梳理处理流程<br />
/cost/detail.action--&gt;DetailCostAction<br />
--&gt;CostDAO.findById--&gt;cost_detail.jsp<br />
b.重构CostDAO.findById方法<br />
由于前面重构已经将CostDAO交给Spring容器管理，因此只要将findById实现就可以了<br />
c.重构DetailCostAction<br />
--将Spring容器中的DAO给Action注入<br />
d.测试功能</strong></p>
<p>*<strong>3)Spring对Hibernate延迟加载操作的支持<br />
为了支持Hibernate延迟加载操作，<br />
Spring提供了一个Filter组件，<br />
该组件为OpenSessionInViewFilter。<br />
可以在web.xml中定义该Filter。<br />
这样可以将Template方法关闭Session时机推迟到JSP解析之后。<br />
注意：定义在StrutsFilter之前才有效</strong></p>
<p>*<strong>2.Spring的事务管理</strong></p>
<pre><code>Spring提供了以下两种事务管理方法</code></pre>
<p>*<strong>a.声明式事务管理<br />
以AOP配置的形式实现事务管理<br />
JDBC事务管理的方面组件：<br />
（DataSourceTransactionManager）<br />
Hibernate事务管理的方面组件：<br />
（HibernateTransactionManager）<br />
事务管理通知：&lt;tx:advice&gt;<br />
切入点：根据实际情况编写表达式<br />
-----如果采用注解方式配置事务------<br />
首先在applicationContext中开启事务注解<br />
<code>   &lt;bean id=&quot;txManager&quot; class=&quot;org.springframework.orm.hibernate3.HibernateTransactionManager&quot;&gt;</code> <br />
<code>   &lt;property name=&quot;sessionFactory&quot; ref=&quot;sessionFactory&quot;&gt;</code> <br />
<code>&lt;/property&gt;</code> <br />
<code>&lt;/bean&gt;</code> <br />
&lt;tx:annotation-driven<br />
transaction-manager=&quot;txManager&quot;/&gt;<br />
然后在目标组件中，使用@Transactional.<br />
该标记可用在类定义和方法定前。类定义前指定全局，方法定以前指定当前方法。<br />
b.编程式事务管理(简单了解)<br />
在业务组件中添加事务管理代码.<br />
代码中使用TransactionTemplate控制事务</strong></p>
<p><strong>3.Spring MVC框架</strong></p>
<p><strong>1)了解Spring MVC主要实现<br />
Spring提供的MVC框架主要有以下实现组件：<br />
控制器DispatcherServlet，Controller<br />
映射处理器HandlerMapping<br />
视图解析器ViewResolver<br />
模型和视图ModelAndView</strong></p>
<p><strong>2)了解Spring MVC的处理流程<br />
a.客户端发送请求，请求交给DispatcherServlet控制器<br />
b.DispatcherServlet控制器调用HandlerMapping映射器组件，<br />
根据请求找到对应的Controller组件<br />
(HandlerMapping组件负责维护请求和Controller组件的对应关系)<br />
c.控制器调用请求对应的Controller处理请求，也可以调用DAO实现对数据库的操作<br />
d.Controller处理完毕后，会返回一个ModelAndView对象。<br />
(ModelAndView负责封装响应数据和视图名)<br />
e.控制器会调用ViewResolver组件，<br />
根据ModelAndView信息，<br />
定位到指定的JSP，生成响应的HTML结果<br />
f.将响应结果输出，为客户浏览器显示</strong></p>
<p><strong>3)入门示例<br />
--基于XML配置的示例<br />
a.引入spring ioc和springmvc开发包<br />
b.在src下添加applicationContext.xml<br />
c.在web.xml中添加DispatcherServlet配置,<br />
指定classpath:applicationContext.xml<br />
d.编写Controller组件，实现Controller接口，<br />
实现handleRequest方法。<br />
e.在Spring配置文件中定义Controller组件，<br />
定义handlerMapping和viewResolver组件</strong></p>
<pre><code> --基于注解配置的示例(推荐)
   a.引入spring ioc和springmvc开发包
   b.在src下添加applicationContext.xml
   c.在web.xml中添加DispatcherServlet配置,
   指定classpath:applicationContext.xml
   d.在applicationContext.xml中定义
</code></pre>
<p><strong>AnnotationMethodHandlerAdapter（支持注解的handlerMapping组件）和viewResolver组件。<br />
开启组件扫描配置。<br />
e.编写Action组件。<br />
Action类定义前使用@Controller将Action扫描到容器。<br />
业务方法前使用@RequestMapping,指定该方法处理哪个请求<br />
————————————————</strong></p>
', '42.228.228.203', 5185, 0, 0, '2021-10-22 13:27:41', '2021-10-22 13:30:34', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (426, 128, 164, null, null, null, null, '<p>什么话都不说 就一直拉人 拒绝了又拉 而且还是不同的人<br />
也不是最近一起游戏的人 我看ID 近期几十盘里面都没有</p>
', '42.228.228.203', 7006, 0, 0, '2021-10-22 13:50:09', '2021-10-22 13:50:09', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (427, 128, 164, null, null, null, null, '<p>邀请的都是自定义 进去了没人 然后突然又加进来几个 我问他们也不回</p>ID都是那种装可爱的妹子的 总有种不好的预感 来个大神告诉我是什么情况', '42.228.228.203', 6004, 0, 0, '2021-10-22 13:50:32', '2021-10-22 13:50:32', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (428, 128, 163, null, null, null, null, '？？？', '42.228.228.203', 5782, 0, 0, '2021-10-22 14:00:10', '2021-10-22 14:00:10', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (429, 3, 165, null, null, null, null, '<p>21°12''09&quot;S 159°49''23&quot;W</p>
<p> </p>
', '134.195.101.38', 3796, 0, 0, '2021-11-01 19:22:37', '2021-11-01 19:22:37', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (430, 129, 166, null, null, null, null, '<p>第一把给DK打这B样 那dk中单许秀怎么就能添个逼脸说3比0 太装逼了 牙给他掰下去！  <span id="topic" value="2">#EDG 3:0 DK#</span>   </p>
<p> </p>
', '103.172.116.78', 35292, 0, 0, '2021-11-06 21:30:35', '2021-11-06 21:34:09', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (431, 8, 166, null, null, null, null, '今年装了比的都死了', '103.172.116.78', 36820, 0, 0, '2021-11-06 21:35:03', '2021-11-06 21:35:03', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (432, 130, 167, null, null, null, null, '<p>一天打了十三把输了十把，输的十把里除去打的坑和菜的下路，足足有四把下路是在恶心人，而且是变本加厉连着来。黄金局环境没救了真的我为什么不去考个证来玩这种东西，我也该给自己来一刀</p>
', '103.172.116.78', 38866, 0, 0, '2021-11-06 21:36:10', '2021-11-06 21:36:10', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (433, 130, 166, null, null, null, null, '许秀那小矮骡子:tiaopi:看他丧着个脸就开心', '103.172.116.78', 40142, 0, 0, '2021-11-06 21:37:00', '2021-11-06 21:37:00', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (434, 131, 168, null, null, null, null, '<p>如题。。解锁我倒是解锁了，打了8天，差不多80几把人机。第八天早上第一次登陆后显示解锁。即11日早晨，目前到今天一共打了121把人机，每天10把，穿插5,6把其他模式，人机基本每把都有点赞，个别几天运气好一把会有2,3个，总体大约有150个点赞了。<br />
我到处翻阅各种帖子基本都是去年或者年初的，<em>1**2级的时候大多数都是</em>7 10天1个里程点。不过他们多数都是打乱斗或者其他模式。难道赛季末他改成人机不加里程了?有最近刚刷回去，而且基本只打人机的老哥吗？给我吃个定心丸啊</p>
', '103.172.116.78', 36700, 0, 0, '2021-11-07 19:51:57', '2021-11-07 19:52:36', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (435, 131, 168, null, null, null, null, '<p>真的是给我整麻了。。</p>', '103.172.116.78', 36294, 0, 0, '2021-11-07 19:52:12', '2021-11-07 19:52:12', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (436, 3, 16, null, null, null, null, '我感觉应该优化一下后台速度', '103.172.116.78', 57432, 1, 2, '2021-11-07 22:00:51', '2021-11-07 22:00:51', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (437, 1, 16, 436, 3, null, null, '已优化', '103.172.116.78', 37898, 0, 2, '2021-11-07 22:03:39', '2021-11-07 22:03:39', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (438, 132, 169, null, null, null, null, '<p>今天难得想起玩LOL开开心心地打了一把匹配，结果第一把就被队友骂的破防。本人S2玩的英雄联盟，因为学业及生活原因S5左右就不玩了。后面几个赛季就看看比赛，玩的也少。今天上线打了一把匹配，我选的中单小鱼人，对面中单时光老头。开局正常发育，到中期时没节奏AD就一直骂辅助菜，上单也跟着骂（疑是上单和AD一起的）。我玩小鱼人只敢呆在塔下补塔刀争取不死，直到一波对面3个人强抓死我然后放峡谷破掉中路2座塔之后我们家节奏就炸了。之后AD和上单就从辅助转移到我身上，说什么小鱼人打不过时光第一次见，之后就各种嘲讽什么小鱼人用脚都能单杀时光之类的。我是打的挺难受的，打野一次没来过，连对面抓我放峡谷那波也没有一个人过来守塔。本来玩个游戏开心就好，这又不是排位非要带入这么重的输赢观念。队友有点失误或菜就各种骂各种嘲讽，自己不看小地图自己浪怪队友不支援。觉得队友菜没用就自己吃3路试图1打5。游戏环境感觉是越来越差了，经历了这次之后我是真的一点没心思玩这个游戏了，以后看看比赛就好。</p>
', '45.88.42.171', 50964, 0, 0, '2021-12-16 14:12:02', '2021-12-16 14:12:02', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (439, 133, 170, null, null, null, null, '<p>刚刚花了150去抽葫芦娃一个背包一个赤血龙魂那把枪扎心了好多鸡腿没有了心拔凉拔凉的</p>
', '45.88.42.171', 54044, 0, 0, '2021-12-16 14:15:14', '2021-12-16 14:15:14', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (440, 134, 171, null, null, null, null, '<p>我真服了，每次都有几个任务显示未完成。做完了还是显示未完成，垃圾策划:zhouma:</p>
<p> </p>
', '45.88.42.171', 57944, 0, 0, '2021-12-16 14:19:34', '2021-12-16 14:19:34', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (441, 135, 168, null, null, null, null, 'CF买号卖号群：3717397', '45.88.42.171', 59522, 0, 0, '2021-12-16 14:20:52', '2021-12-16 14:20:52', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (442, 135, 169, null, null, null, null, 'CF买号卖号群：3717397', '45.88.42.171', 59622, 0, 0, '2021-12-16 14:20:58', '2021-12-16 14:20:58', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (443, 135, 170, null, null, null, null, 'CF买号卖号群：3717397', '45.88.42.171', 59752, 0, 0, '2021-12-16 14:21:03', '2021-12-16 14:21:03', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (444, 135, 171, null, null, null, null, 'CF买号卖号群：3717397', '45.88.42.171', 60044, 0, 0, '2021-12-16 14:21:23', '2021-12-16 14:21:23', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (445, 135, 167, null, null, null, null, 'CF买号卖号群：3717397', '45.88.42.171', 60140, 0, 0, '2021-12-16 14:21:33', '2021-12-16 14:21:33', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (446, 3, 172, null, null, null, null, '<p>25°44''18&quot;N 90°15''42&quot;W</p>
', '45.88.42.171', 38650, 0, 0, '2021-12-16 16:03:56', '2021-12-16 16:03:56', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (447, 121, 16, null, null, null, null, '？？？？', '42.224.225.219', 15413, 1, 1, '2022-01-15 15:00:16', '2022-01-15 15:00:16', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (448, 137, 16, 447, 121, null, null, '？？？？？？？？', '42.224.225.219', 15650, 0, 1, '2022-01-15 15:03:05', '2022-01-15 15:03:05', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (449, 3, 173, null, null, null, null, '<p>936961473<br />
wk200266</p>
', '185.200.34.110', 44729, 0, 0, '2022-01-16 18:38:21', '2022-01-16 18:38:21', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (450, 138, 174, null, null, null, null, '<p>???</p>
', '185.200.34.110', 40695, 0, 0, '2022-01-20 21:34:31', '2022-01-20 21:34:31', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (451, 139, 175, null, null, null, null, '<p>来个厉害点的好队友，单排被自己家的队友要气死了！带我满地图追野怪！就是不打对面！就定位在了白银</p>
<p>:zhouma:</p>
', '185.200.34.110', 38889, 0, 0, '2022-01-20 21:36:57', '2022-01-20 21:36:57', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (452, 139, 16, null, null, null, null, '没人管了吗', '185.200.34.110', 33763, 0, 0, '2022-01-20 21:37:12', '2022-01-20 21:37:12', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (453, 139, 174, null, null, null, null, '好了点', '185.200.34.110', 36329, 0, 0, '2022-01-20 21:37:32', '2022-01-20 21:37:32', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (454, 139, 173, null, null, null, null, '????', '185.200.34.110', 45577, 0, 0, '2022-01-20 21:37:40', '2022-01-20 21:37:40', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (455, 139, 163, null, null, null, null, '1', '185.200.34.110', 39033, 0, 0, '2022-01-20 21:37:52', '2022-01-20 21:37:52', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (456, 140, 176, null, null, null, null, '<p>这不剑圣嘛</p>
', '185.200.34.110', 37827, 0, 0, '2022-01-20 21:39:44', '2022-01-20 21:39:44', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (457, 140, 16, null, null, null, null, '我好像认识你', '185.200.34.110', 43629, 0, 0, '2022-01-20 21:40:26', '2022-01-20 21:40:26', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (458, 140, 16, null, null, null, null, '是徐玉龙吗', '185.200.34.110', 42201, 0, 0, '2022-01-20 21:40:35', '2022-01-20 21:40:35', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (459, 140, 16, null, null, null, null, '是了回个话', '185.200.34.110', 41913, 0, 0, '2022-01-20 21:40:50', '2022-01-20 21:40:50', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (460, 141, 177, null, null, null, null, '', '185.200.34.110', 42473, 0, 0, '2022-01-20 21:42:32', '2022-01-20 21:42:32', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (461, 141, 176, null, null, null, null, '手机坏了？', '185.200.34.110', 33833, 1, 0, '2022-01-20 21:43:00', '2022-01-20 21:43:00', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (462, 141, 16, null, null, null, null, '？？？', '185.200.34.110', 34967, 0, 0, '2022-01-20 21:43:12', '2022-01-20 21:43:12', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (463, 142, 178, null, null, null, null, '<p>我是网二很多年的一名钻石守门🐶了，主打上单打野，打自己的号有时候能c，打不过也能稳住不爆炸，被军训除外。打野的话，只能在线上有优势的情况下会带节奏，逆风就比较混。<br />
我看过很多高端局直播，不存在看不懂的地方，觉得自己该有的意识和思路都有，但就是上不去分，胜率无限接近赢一把输一把的样子。<br />
昨天看小明剑魔的直播，峡谷宗师四百多分的局，小明和打野双排的，已经连胜很多把了，中单是某战队青训队员。但下路ad意外混进来一名钻4玩家，其他9人都是宗师，然后下路线上无限被杀爆，其他路都是优势，就下路一直死，最后成为突破口被翻盘。<br />
因为看的是上单第一视角，不清楚下路对线是个什么情况，但钻4在宗师面前真的就毫无还手之力吗？还有个宗师的辅助在呢。<br />
钻4到钻一钻二的差距又有多大，差在哪里，求求从钻4打出去的大佬们hxdm指点一下:xiaojiujie::xiaojiujie::xiaojiujie:</p>
', '185.200.34.110', 33917, 0, 0, '2022-01-20 21:45:23', '2022-01-20 21:45:23', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (464, 143, 179, null, null, null, null, '<p>无限乱斗到哪天结束啊，从今天开始，我将一场别的模式都不打。</p>
<p>另外虎年那个提莫皮肤售卖到什么时候结束啊，我本来以为199不想买了，就把这个月优惠券用了，这一看99，我又想用20元优惠券买了，可是下批优惠券应该是2月8号才发，那时候还卖吗？</p>
', '185.200.34.110', 45555, 0, 0, '2022-01-20 21:53:45', '2022-01-20 21:53:45', null, null, 1, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (465, 143, 178, null, null, null, null, '钻石以上只有不到3%的玩家 贴吧人均王者 根本不理解你说的', '185.200.34.110', 39257, 0, 0, '2022-01-20 21:54:07', '2022-01-20 21:54:07', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (466, 143, 177, null, null, null, null, '0', '185.200.34.110', 35139, 0, 0, '2022-01-20 21:54:28', '2022-01-20 21:54:28', null, null, 0, 0, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (467, 143, 176, 461, 141, null, null, '1', '185.200.34.110', 37279, 0, 0, '2022-01-20 21:54:37', '2022-01-20 21:54:37', null, null, 0, 1, 1);
INSERT INTO evolve.posts (id, user_id, thread_id, reply_post_id, reply_user_id, comment_post_id, comment_user_id, content, ip, port, reply_count, like_count, created_at, updated_at, deleted_at, deleted_user_id, is_first, is_comment, is_approved) VALUES (468, 143, 16, null, null, null, null, '有生意先付款做吗', '185.200.34.110', 44757, 0, 0, '2022-01-20 21:55:02', '2022-01-20 21:55:03', null, null, 0, 0, 1);
