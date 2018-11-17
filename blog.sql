/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-11-15 23:05:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `article_blogger_id` int(10) unsigned DEFAULT '1' COMMENT '文章作者id',
  `article_menu_id` int(10) DEFAULT NULL,
  `article_title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `article_content` mediumtext COMMENT '文章内容',
  `article_tag_ids` varchar(50) DEFAULT NULL COMMENT '文章的标签',
  `article_view_count` int(10) DEFAULT '0' COMMENT '文章浏览总数',
  `article_comment_count` int(5) DEFAULT '0' COMMENT '文章评论总数',
  `article_like_count` int(5) DEFAULT '0' COMMENT '文章点赞总数',
  `article_post_time` datetime DEFAULT NULL COMMENT '文章上传时间',
  `article_update_time` datetime DEFAULT NULL COMMENT '文章更新时间',
  `article_is_comment` int(2) unsigned DEFAULT NULL COMMENT '文章是否被评论',
  `article_status` int(2) unsigned DEFAULT '1',
  `article_order` int(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '1', 'JSP九大内置对象的作用和用法', '<p>JSP中一共预先定义了9个这样的对象，分别为：request、response、session、application、out、pagecontext、config、page、exception</p><br><br><br><br><br><br><br>\r\n	<p>\r\n		<strong>1、request对象javax.servlet.http.HttpServletRequest</strong>\r\n	</p>\r\n	<p>request对象代表了客户端的请求信息，主要用于接受通过HTTP协议传送到服务器的数据。（包括头信息、系统信息、请求方式以及请求参数等）。request对 象的作用域为一次请求。</p>\r\n	<p>当Request对象获取客户提交的汉字字符时，会出现乱码问题，必须进行特殊处理。首先，将获取的字符串用ISO-8859－1进行编码，并将编码存发岛一个字节数组中，然后再将这个数组转化为字符串对象如下</p>\r\n	<p>Request常用的方法：getParameter(String strTextName) 获取表单提交的信息</p>\r\n	<p>getProtocol() 获取客户使用的协议。</p>\r\n	<p>String strProtocol=request.getProtocol();</p>\r\n	<p>getServletPath() 获取客户提交信息的页面。String strServlet=request.getServletPath();</p>\r\n	<p>getMethod() 获取客户提交信息的方式 String strMethod=request.getMethod();</p>\r\n	<p>getHeader() 获取HTTP头文件中的accept,accept-encoding和Host的值,String strHeader=request.getHeader();</p>\r\n	<p>getRermoteAddr() 获取客户的IP地址。String strIP=request.getRemoteAddr();</p>\r\n	<p>getRemoteHost() 获取客户机的名称。String clientName=request.getRemoteHost();</p>\r\n	<p>getServerName() 获取服务器名称。 String serverName=request.getServerName();</p>\r\n	<p>getServerPort() 获取服务器的端口号。 int serverPort=request.getServerPort();</p>\r\n	<p>getParameterNames() 获取客户端提交的所有参数的名字。</p>\r\n	\r\n	<p>\r\n		<strong>2、response对象 javax.servlet.http.HttpServletResponse</strong>\r\n	</p>\r\n	<p>response 代表的是对客户端的响应，主要是将JSP容器处理过的对象传回到客户端。response对象也具有作用域，它只在JSP页面内有效。</p>\r\n	<p>具有动态响应contentType属性,当一个用户访问一个JSP页面时，如果该页面用page指令设置页面的contentType属性是text/html，那么JSP引擎将按照这个属性值做出反应。</p>\r\n	<p>如果要动态改变这换个属性值来响应客户，就需要使用Response对象的setContentType(String s)方法来改变contentType的属性值。</p>\r\n	<p>response.setContentType(String s);  参数s可取text/html,application/x-msexcel,application/msword等。</p>\r\n	<p>在某些情况下，当响应客户时，需要将客户重新引导至另一个页面，可以使用Response的sendRedirect(URL)方法实现客户的重定向。</p>\r\n	<p>例如response.sendRedirect(index.jsp);</p>\r\n	\r\n	<p>\r\n		<strong>3、session对象 javax.servlet.http.HttpSession</strong>\r\n	</p>\r\n	<p>Session对象是一个JSP内置对象，它在第一个JSP页面被装载时自动创建，完成会话期管理。从一个客户打开浏览器并连接到服务器开始，到客户关闭浏览器离开这个服务器结束，被称为一个会话。当一个客户访问一个服务器时，可能会在这个服务器的几个页面之间切换，服务器应当通过某种办法知道这是一个客户，就需要Session对象。</p>\r\n	<p>当一个客户首次访问服务器上的一个JSP页面时，JSP引擎产生一个Session对象，同时分配一个String类型的ID号，JSP引擎同时将这换个ID号发送到客户端，存放在Cookie中，这样Session对象，直到客户关闭浏览器后，服务器端该客户的Session对象才取消，并且和客户的会话对应关系消失。当客户重新打开浏览器再连接到该服务器时，服务器为该客户再创建一个新的Session对象。</p>\r\n	<p>session 对象是由服务器自动创建的与用户请求相关的对象。服务器为每个用户都生成一个session对象，用于保存该用户的信息，跟踪用户的操作状态。</p>\r\n	<p>session对象内部使用Map类来保存数据，因此保存数据的格式为 “Key/value”。 session对象的value可以使复杂的对象类型，而不仅仅局限于字符串类型。</p>\r\n	<p>public String getId()：获取Session对象编号。</p>\r\n	<p>public void setAttribute(String key,Object obj)：将参数Object指定的对象obj添加到Session对象中，并为添加的对象指定一个索引关键字。</p>\r\n	<p>public Object getAttribute(String key)：获取Session对象中含有关键字的对象。</p>\r\n	<p>public Boolean isNew()：判断是否是一个新的客户</p>', '6', '10', '2', '2', '2018-10-30 20:54:18', null, '1', '1', '1');
INSERT INTO `article` VALUES ('2', '1', '2', 'final修饰基本类型变量和引用变量区别', '<p>\r\n		<strong>1、final修饰基本数据类型</strong>\r\n	</p>\r\n	<p>当使用final修饰基本数据类型时，不能对其重新赋值，不能被改变。</p><br><br><br><br><br>\r\n	<p>\r\n		<strong>2、final修饰引用类型变量</strong>\r\n	</p>\r\n	<p>当使用final修饰引用类型变量时，它仅仅保证他的地址不变，即一直引用同一个对象，但这个对象完全可以发生改变。</p>\r\n	<p>即:使用final修饰的引用不能被重新赋值，但可以改变引用类型所引用对象的内容。</p>', '1', '3', '4', '2', '2018-10-30 20:55:35', null, '1', '1', '1');
INSERT INTO `article` VALUES ('3', '1', '3', 'setTimeout()的用法', '<p>setTimeout( ) 是属于 window 的 method, 但我们都是略去 window 这顶层容器名称, 这是用来设定一个时间, 时间到了, 就会执行一个指定的 method</p><br><br><br><br><br><br><br>\r\n	<p>\r\n		<strong>1、setTimeout( ) 语法例子</strong>\r\n	</p>\r\n	<p><img src=\"../resource/assets/img/slider/at1.png\" alt=\"\"></p>\r\n	<p>\r\n		<strong>2.　留意网页开启后三秒, 就会出现一个 alert 对话盒。</strong>\r\n	</p>\r\n	<p><img src=\"../resource/assets/img/slider/at2.png\" alt=\"\"></p>\r\n	<p>以上这段代码是实现一个在3秒钟之后进行更换文本的内容，在更换内容的时候调用了方法changeState()方法</p>\r\n	<p>\r\n		<strong>3、有了以上基础，我们可以实现一个自动运行的按照时间递加的计数器，如下面所示代码：</strong>\r\n	</p>\r\n	<p><img src=\"../resource/assets/img/slider/at3.png\" alt=\"\"></p>\r\n	<p>在上面代码中，当点击按钮启动changeState( )后, 就会启动 setTimeout( ), 这个 method 在一秒后又启动 changeState( ), changeState( )启动后又启动 setTimeout( ) , 所以得出的结果是 changeState( )每秒执行一次，继而实现数值的递增。</p>', '7', '6', '1', '2', '2018-11-02 16:19:56', null, '1', '1', '1');
INSERT INTO `article` VALUES ('4', '1', '4', '二叉树介绍', '<p>\r\n		<strong>一、树的定义</strong>\r\n	</p>\r\n	<p>树是一种数据结构，它是由n（n&gt;=1）个有限结点组成一个具有层次关系的集合。</p><br><br><br><br><br><br>\r\n	<p></p>\r\n	<p>\r\n		<img\r\n			src=\"../resource/assets/img/slider/1.png\"\r\n			alt=\"\"  width=\"688\">\r\n	</p>\r\n	<p>树具有的特点有：</p>\r\n	<p>（1）每个结点有零个或多个子结点</p>\r\n	<p>（2）没有父节点的结点称为根节点</p>\r\n	<p>（3）每一个非根结点有且只有一个父节点</p>\r\n	<p>（4）除了根结点外，每个子结点可以分为多个不相交的子树。</p>\r\n	<p></p>\r\n	<p>树的基本术语有：</p>\r\n	<p>\r\n		若一个结点有子树，那么该结点称为子树根的“<strong>双亲</strong>”，子树的根称为该结点的“<strong>孩子</strong>”。有相同双亲的结点互为“<strong>兄弟</strong>”。一个结点的所有子树上的任何结点都是该结点的<strong>后裔</strong>。从根结点到某个结点的路径上的所有结点都是该结点的<strong>祖先</strong>。\r\n\r\n	</p>\r\n	<p>\r\n		<strong>结点的度</strong>：结点拥有的子树的数目\r\n	</p>\r\n	<p>\r\n		<strong>叶子结点</strong>：度为0的结点\r\n	</p>\r\n	<p>\r\n		<strong>分支结点</strong>：度不为0的结点\r\n	</p>\r\n	<p>\r\n		<strong>树的度</strong>：树中结点的最大的度\r\n	</p>\r\n	<p>\r\n		<strong>层次</strong>：根结点的层次为1，其余结点的层次等于该结点的双亲结点的层次加1\r\n	</p>\r\n	<p>\r\n		<strong>树的高度</strong>：树中结点的最大层次\r\n	</p>\r\n	<p>\r\n		<strong>森林</strong>：0个或多个不相交的树组成。对森林加上一个根，森林即成为树；删去根，树即成为森林。\r\n	</p>\r\n	<p>\r\n		<strong>二、二叉树</strong>\r\n	</p>\r\n	<p>\r\n		<strong>1、二叉树的定义</strong>\r\n	</p>\r\n	<p>二叉树是每个结点最多有两个子树的树结构。它有五种基本形态：二叉树可以是空集；根可以有空的左子树或右子树；或者左、右子树皆为空。\r\n	</p>\r\n	<p>\r\n		<img\r\n			src=\"../resource/assets/img/slider/2.png\"\r\n			alt=\"\"  width=\"688\"/>\r\n	</p>\r\n	<p>\r\n		<strong><br /></strong>\r\n	</p>\r\n	<p>\r\n		<strong>2、二叉树的性质</strong>\r\n	</p>\r\n	<p>\r\n		性质1：二叉树第i层上的结点数目最多为2<sup>i-1</sup>(i&gt;=1)\r\n\r\n	</p>\r\n	<p>\r\n		性质2：深度为k的二叉树至多有2<sup>k</sup>-1个结点（k&gt;=1）\r\n\r\n	</p>\r\n	<p>\r\n		性质3：包含n个结点的二叉树的高度至少为(log<sub>2</sub>n)+1\r\n\r\n	</p>\r\n	<p>\r\n		性质4：在任意一棵二叉树中，若终端结点的个数为n<sub>0</sub>，度为2的结点数为n<sub>2</sub>，则n<sub>0</sub>=n<sub>2</sub>+1\r\n\r\n	</p>\r\n	<p>\r\n		<strong>3、性质4的证明</strong>\r\n	</p>\r\n	<p>\r\n		性质4：在任意一棵二叉树中，若终端结点的个数为n<sub>0</sub>，度为2的结点数为n<sub>2</sub>，则n<sub>0</sub>=n<sub>2</sub>+1\r\n\r\n	</p>\r\n	<p>\r\n		证明：因为二叉树中所有结点的度数均不大于2，不妨设n<sub>0</sub>表示度为0的结点个数，n<sub>1</sub>表示度为1的结点个数，n<sub>2</sub>表示度为2的结点个数。三类结点加起来为总结点个数，于是便可得到：n=n<sub>0</sub>+n<sub>1</sub>+n<sub>2\r\n		</sub>(1)\r\n\r\n	</p>\r\n	<p>\r\n		由度之间的关系可得第二个等式：n=n<sub>0</sub>*0+n<sub>1</sub>*1+n<sub>2</sub>*2+1即n=n<sub>1</sub>+2n<sub>2</sub>+1\r\n		(2)\r\n\r\n	</p>\r\n	<p>\r\n		将（1）（2）组合在一起可得到n<sub>0</sub>=n<sub>2</sub>+1\r\n\r\n	</p>\r\n	<p>\r\n		<strong>三、满二叉树、完全二叉树和二叉查找树</strong>\r\n	</p>\r\n	<p>\r\n		<strong>1、满二叉树</strong>\r\n	</p>\r\n	<p>\r\n		<strong>定义</strong>：高度为h，并且由2<sup>h</sup>-1个结点组成的二叉树，称为满二叉树\r\n	</p>\r\n	<p>\r\n		<img\r\n			src=\"../resource/assets/img/slider/3.png\"\r\n			alt=\"\"   width=\"688\"/>\r\n	</p>\r\n	<p>\r\n		<strong><br /></strong>\r\n	</p>\r\n	<p>\r\n		<strong>2、完全二叉树</strong>\r\n	</p>\r\n	<p>\r\n		<strong>定义</strong>：一棵二叉树中，只有最下面两层结点的度可以小于2，并且最下层的叶结点集中在靠左的若干位置上，这样的二叉树称为完全二叉树。\r\n	</p>\r\n	<p>\r\n		<strong>特点</strong>：叶子结点只能出现在最下层和次下层，且最下层的叶子结点集中在树的左部。显然，一棵满二叉树必定是一棵完全二叉树，而完全二叉树未必是满二叉树。\r\n	</p>\r\n	<p>\r\n		<img\r\n			src=\"../resource/assets/img/slider/4.png\"\r\n			alt=\"\"   width=\"688\"/>\r\n	</p>\r\n	<p>\r\n		<strong>面试题</strong>：如果一个完全二叉树的结点总数为768个，求叶子结点的个数。\r\n	</p>\r\n	<p>\r\n		由二叉树的性质知：n<sub>0</sub>=n<sub>2</sub>+1，将之带入768=n<sub>0</sub>+n<sub>1</sub>+n<sub>2</sub>中得：768=n<sub>1</sub>+2n<sub>2</sub>+1，因为完全二叉树度为1的结点个数要么为0，要么为1，那么就把n<sub>1</sub>=0或者1都代入公式中，很容易发现n<sub>1</sub>=1才符合条件。所以算出来n<sub>2</sub>=383，所以叶子结点个数n<sub>0</sub>=n<sub>2</sub>+1=384。\r\n\r\n	</p>\r\n	<p>\r\n		<strong>总结规律</strong>：如果一棵完全二叉树的结点总数为n，那么叶子结点等于n/2（当n为偶数时）或者(n+1)/2（当n为奇数时）\r\n	</p>\r\n	<p>\r\n		<strong>3、二叉查找树</strong>\r\n	</p>\r\n	<p>定义：二叉查找树又被称为二叉搜索树。设x为二叉查找树中的一个结点，x结点包含关键字key，结点x的key值计为key[x]。如果y是x的左子树中的一个结点，则key[y]&lt;=key[x]；如果y是x的右子树的一个结点，则key[y]&gt;=key[x]</p>\r\n	<p>\r\n		<img src=\"../resource/assets/img/slider/5.png\" alt=\"\"  width=\"688\"/>\r\n	</p>\r\n	<p>\r\n	</p>\r\n	<p>在二叉查找树种：</p>\r\n	<p>（1）若任意结点的左子树不空，则左子树上所有结点的值均小于它的根结点的值。</p>\r\n	<p>（2）任意结点的右子树不空，则右子树上所有结点的值均大于它的根结点的值。</p>\r\n	<p>（3）任意结点的左、右子树也分别为二叉查找树。</p>\r\n	<p>（4）没有键值相等的结点。</p>', '3', '20', '5', '9', '2018-11-02 17:44:42', null, '1', '1', '1');

-- ----------------------------
-- Table structure for `blogger`
-- ----------------------------
DROP TABLE IF EXISTS `blogger`;
CREATE TABLE `blogger` (
  `blogger_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blogger_name` varchar(255) NOT NULL DEFAULT '',
  `blogger_pass` varchar(255) NOT NULL DEFAULT '',
  `blogger_nickname` varchar(255) NOT NULL DEFAULT '',
  `blogger_email` varchar(100) DEFAULT '',
  `blogger_avatar` varchar(255) DEFAULT NULL,
  `blogger_last_login_ip` varchar(255) DEFAULT NULL,
  `blogger_register_time` datetime DEFAULT NULL,
  `blogger_last_login_time` datetime DEFAULT NULL,
  `blogger_status` int(2) unsigned DEFAULT '1',
  PRIMARY KEY (`blogger_id`),
  UNIQUE KEY `bolgger_name` (`blogger_name`),
  UNIQUE KEY `bolgger_email` (`blogger_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogger
-- ----------------------------
INSERT INTO `blogger` VALUES ('1', 'Lit', '123456', 'Lit', '1968227904@qq.com', '/uploads/1.jpg', '0:0:0:0:0:0:0:1', '2018-10-30 20:56:33', null, '1');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_pid` int(10) unsigned DEFAULT '0',
  `comment_pname` varchar(255) DEFAULT NULL COMMENT '回复评论的名字',
  `comment_article_id` int(10) unsigned DEFAULT NULL,
  `comment_author_name` varchar(50) DEFAULT NULL,
  `comment_author_email` varchar(50) DEFAULT NULL,
  `comment_content` varchar(1000) DEFAULT NULL,
  `comment_ip` varchar(50) DEFAULT NULL,
  `comment_create_time` datetime DEFAULT NULL,
  `comment_role` int(2) DEFAULT NULL,
  `comment_status` int(2) unsigned DEFAULT '1',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) DEFAULT NULL,
  `link_name` varchar(255) DEFAULT NULL,
  `link_create_time` datetime DEFAULT NULL,
  `link_update_time` datetime DEFAULT NULL,
  `link_order` int(2) unsigned DEFAULT '1',
  `link_status` int(2) unsigned DEFAULT '1',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `link_name` (`link_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('1', 'https://www.baidu.com/', '百度', '2018-11-02 14:15:44', null, '1', '1');
INSERT INTO `link` VALUES ('2', 'http://www.sina.com.cn/', '新浪网', '2018-11-02 14:16:20', null, '1', '1');
INSERT INTO `link` VALUES ('3', 'https://github.com/', 'gitHub', '2018-11-02 14:17:00', null, '1', '1');
INSERT INTO `link` VALUES ('4', 'https://leetcode.com/', 'LeetCode', '2018-11-02 14:17:40', null, '1', '1');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(5) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) DEFAULT NULL,
  `menu_status` int(2) DEFAULT '1',
  `menu_url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `menu_name` (`menu_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'JAVA', '1', 'menu/1.do');
INSERT INTO `menu` VALUES ('2', '计算机网络', '1', 'menu/2.do');
INSERT INTO `menu` VALUES ('3', 'WEB', '1', 'menu/3.do');
INSERT INTO `menu` VALUES ('4', '设计模式', '1', 'menu/4.do');
INSERT INTO `menu` VALUES ('5', '留言板', '1', null);

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` int(10) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(255) DEFAULT NULL,
  `notice_content` varchar(10000) DEFAULT NULL,
  `notice_create_time` datetime DEFAULT NULL,
  `notice_update_time` datetime DEFAULT NULL,
  `notice_status` int(2) unsigned DEFAULT '1',
  `notice_order` int(2) DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '公告~~~~', 'hhhhhhhhhhhhhhhhhhhhhhh', '2018-10-30 20:44:35', null, '1', '1');

-- ----------------------------
-- Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tag_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(20) DEFAULT NULL,
  `tag_status` int(2) unsigned DEFAULT '1',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', 'java', '1');
INSERT INTO `tag` VALUES ('2', 'IO', '1');
INSERT INTO `tag` VALUES ('3', '数据结构', '1');
INSERT INTO `tag` VALUES ('4', 'spring', '1');
INSERT INTO `tag` VALUES ('5', '算法', '1');
INSERT INTO `tag` VALUES ('6', 'JSP', '1');
INSERT INTO `tag` VALUES ('7', 'web', '1');
