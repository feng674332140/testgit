<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <%
    //request.setCharacterEncoding("UTF-8");
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String userID = (String) session.getAttribute("userID");
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>智慧门牌服务管理</title>
    <link rel="stylesheet" type="text/css" href="/static/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="/static/style/example.css"/>
    <%--<script type="text/javascript" src="/static/js/zepto.min.js"></script>--%>
    <script type="text/javascript" src="/static/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/static/js/common/common.js"></script>
    <script type="text/javascript" src="/static/js/common/Sortable.min.js"></script>
    <script type="text/javascript" src="/static/js/service/bigservice.js"></script>
    <script type="text/javascript" src="/static/js/navigation/navigation.js"></script>
</head>
<body ontouchstart>
<div class="page">
    
    <div class="pageContent" id="tpl_management" style="display:none;">

        <div class="page__bd page__bd_spacing">

            <ul id="originBigService">
            <c:if test="${existUser.dept==1}">
                <li id="bigService_li_1">
                    <div class="weui-flex js_category">
                        <p class="weui-flex__item pressToDelete" id="bigService_p_1">公安便民</p>
                        <img class="glyphicon-move" src="/static/images/icon_nav_form.png" alt="">
                    </div>
                    <div class="page__category js_categoryInner">
                        <div class="weui-grids page__category-content">

                            <c:forEach items="${policeList}" var="policeList">
                                <c:if test="${policeList.fetaures=='ZhuHuChaXun'}">

                                    <a href="javascript:;" class="weui-grid" id="ZhuHuChaXun" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                                        <div class="weui-grid__icon">
                                         <img src="/static/images/icon_nav_panel.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">住户查询</p>
                                    </a>
                                </c:if>
                                <c:if test="${policeList.fetaures=='PaiChuSuoInfo'}">
                                    <a href="http://bsdt.jhga.gov.cn/egov/jhwas/portals/include/windowQuery.jsp?jgname=&areaname=&jgtype=7" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                                        <div class="weui-grid__icon">
                                            <img src="/static/images/icon_nav_button.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">派出所信息</p>
                                    </a>
                                </c:if>
                                <c:if test="${policeList.fetaures=='AnQuanJanYi'}">
                                    <a href="http://www.jhga.gov.cn/News/?i=147" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                                        <div class="weui-grid__icon">
                                            <img src="/static/images/icon_nav_toast.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">安全建议</p>
                                    </a>
                                </c:if>
                                <c:if test="${policeList.fetaures=='XunRenQiShi'}">
                                    <a href="http://bsdt.jhga.gov.cn/egov/lcs/jsp/portals/itemShow.jsp" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                                        <div class="weui-grid__icon">
                                            <img src="/static/images/icon_nav_search_bar.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">寻人寻物</p>
                                    </a>
                                </c:if>

                                <c:if test="${policeList.fetaures=='WangShangHuiJian'}">
                                    <a href="http://www.jhga.gov.cn/Service/Video.aspx" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                                        <div class="weui-grid__icon">
                                            <img src="/static/images/icon_nav_me.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">网上会见</p>
                                    </a>
                                </c:if>
                                <c:if test="${policeList.fetaures=='XiaQuMinJing'}">
                                    <a href="http://www.jhga.gov.cn/whInfo/?i=257" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                                        <div class="weui-grid__icon">
                                            <img src="/static/images/icon_nav_me.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">辖区民警</p>
                                    </a>
                                </c:if>
                                <c:if test="${policeList.fetaures=='YiJianBaoJing'}">
                                    <a href="<%=basepath%>/microservice/callthepolice.jsp" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                                        <div class="weui-grid__icon">
                                            <img src="/static/images/icon_nav_addressbook.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">一键报警</p>
                                    </a>
                                </c:if>
                                <c:if test="${policeList.fetaures=='PaiChuSuoInfo'}">
                                    <a href="<%=basepath%>/microservice/leavemessage.jsp" class="weui-grid" style="display: none">
                                        <div class="weui-grid__icon">
                                            <img src="/static/images/icon_nav_dialog.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">信息留言</p>
                                    </a>
                                </c:if>
                                <c:if test="${policeList.fetaures=='FangWuZuLin'}">
                                    <a href="<%=basepath%>/microservice/rentahouse.jsp" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                                        <div class="weui-grid__icon">
                                            <img src="/static/images/icon_nav_toast.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">房屋租赁</p>
                                    </a>
                                </c:if>
                                <c:if test="${policeList.fetaures=='ZhaoPingXinXi'}">
                                    <a href="http://zhaopin.baidu.com/quanzhi?tid=4139&ie=utf8&oe=utf8&query=%E5%A9%BA%E5%9F%8E%E5%8C%BA%E6%8B%9B%E8%81%98%E4%BF%A1%E6%81%AF&city_sug=%E5%A9%BA%E5%9F%8E" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                                        <div class="weui-grid__icon">
                                            <img src="/static/images/icon_nav_article.png" alt="">
                                        </div>
                                        <p class="weui-grid__label">招聘信息</p>
                                    </a>
                                </c:if>
                            </c:forEach>

                            <a href="PoliceAddmicroservice"  class="weui-grid">
                                <div class="weui-grid__icon">
                                    <img src="/static/images/plus_32px_581648_easyicon.net.png" alt="">
                                </div>
                                <p class="weui-grid__label">添加子服务</p>
                            </a>
                            <a href="policeDeleteFeatures"  class="weui-grid">
                                <div class="weui-grid__icon">
                                    <img src="/static/images/icon_delete.png" alt="">
                                </div>
                                <p class="weui-grid__label">删除子服务</p>
                            </a>

                        </div>
                    </div>
                </li>
        </c:if>
        <c:if test="${existUser.dept==2}">
                <li id="bigService_li_2">
                    <div class="weui-flex js_category">
                        <p class="weui-flex__item pressToDelete" id="bigService_2">民政服务</p>
                        <img class="glyphicon-move" src="/static/images/icon_nav_form.png" alt="">
                    </div>
                    <div class="page__category js_categoryInner">
                        <div class="weui-grids page__category-content">



            <c:forEach items="${fList}" var="feature">
                <c:if test="${feature.features=='MinzhengDongTai'}">
                    <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon" >
                            <img src="/static/images/icon_nav_article.png" alt="">
                        </div>
                        <p class="weui-grid__label">民政动态</p>
                    </a>
                </c:if>
                <c:if test="${feature.features=='TonzhiGongGao'}">
                    <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_dialog.png" alt="">
                        </div>
                        <p class="weui-grid__label">通知公告</p>
                    </a>
                </c:if>
                <c:if test="${feature.features=='WangshangBanshi'}">
                    <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_flow1.png" alt="">
                        </div>
                        <p class="weui-grid__label">网上办事</p>
                    </a>
                </c:if>
                <c:if test="${feature.features=='MinzhengKanWu'}">
                    <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_tab.png" alt="">
                        </div>
                        <p class="weui-grid__label">民政刊物</p>
                    </a>
                </c:if>
                <c:if test="${feature.features=='YouDaiFuXu'}">
                    <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/minzheng/youdaifuxu.png" alt="">
                        </div>
                        <p class="weui-grid__label">优待抚恤</p>
                    </a>
                </c:if>
                <c:if test="${feature.features=='TuiWuAnZhi'}">
                    <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/minzheng/tuiwuanzhi.png" alt="">
                        </div>
                        <p class="weui-grid__label">退伍安置</p>
                    </a>
                </c:if>
                <c:if test="${feature.features=='JiuZaiJuiZhi'}">
                    <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/minzheng/jiuzaijiuji.png" alt="">
                        </div>
                        <p class="weui-grid__label">救灾救济</p>
                    </a>
                </c:if>
                <c:if test="${feature.features=='TeKunGongYang'}">
                    <a href="javascript:;"  class="weui-grid"<c:if test="${feature.status=='false'}">style="display:none"</c:if>>
                        <div  id="te"class="weui-grid__icon">
                            <img src="/static/images/minzheng/tekungongyang.png" alt="">
                        </div>
                        <p class="weui-grid__label">特困供养</p>
                    </a>
                </c:if>
            </c:forEach>



                            <a href="MinZhengaddmicroservice"  class="weui-grid">
                                <div class="weui-grid__icon">
                                    <img src="/static/images/plus_32px_581648_easyicon.net.png" alt="">
                                </div>
                                <p class="weui-grid__label">添加子服务</p>
                            </a>
                            <a href="MinZhengDeleteFeatures"  class="weui-grid">
                                <div class="weui-grid__icon">
                                    <img src="/static/images/icon_delete.png" alt="">
                                </div>
                                <p class="weui-grid__label">删除子服务</p>
                            </a>
                        </div>
                    </div>
                </li>
         </c:if>
                <li id="bigService_li_3">
                    <div class="weui-flex js_category">
                        <p class="weui-flex__item pressToDelete" id="bigService_3">旅游服务</p>
                        <img class="glyphicon-move" src="/static/images/icon_nav_form.png" alt="">
                    </div>
                    <div class="page__category js_categoryInner">
                        <div class="weui-grids page__category-content">
                            <a href="javascript:;" class="weui-grid">
                                <div class="weui-grid__icon">
                                    <img src="/static/images/icon_tabbar.png" alt="">
                                </div>
                                <p class="weui-grid__label">附近景点</p>
                            </a>
                            <a href="javascript:;" class="weui-grid">
                                <div class="weui-grid__icon">
                                    <img src="/static/images/icon_tabbar.png" alt="">
                                </div>
                                <p class="weui-grid__label">附近特色</p>
                            </a>
                            <a href="javascript:;" class="weui-grid">
                                <div class="weui-grid__icon">
                                    <img src="/static/images/plus_32px_581648_easyicon.net.png" alt="">
                                </div>
                                <p class="weui-grid__label">添加子服务</p>
                            </a>
                        </div>
                    </div>
                </li>
            </ul>
            <br><br><br><br><br>
            <a href="javascript:addBigService();" class="weui-btn weui-btn_primary">添加新大类服务</a>
            <br><br><br><br><br>
        </div>
    </div>
    <div class="pageContent" id="tpl_monitoring" style="display:none;">
        <div class="weui-msg">
            <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
            <div class="weui-msg__text-area">
                <h2 class="weui-msg__title">服务监控</h2>

                <p class="weui-msg__desc">服务监控，可根据实际需要安排，从老百姓使用服务的类型，时间，次数来为政府部门提供服务辅助<a
                        href="javascript:void(0);">文字链接</a></p>
            </div>
            <div class="weui-msg__opr-area">
                <p class="weui-btn-area">
                    <a href="javascript:history.back();" class="weui-btn weui-btn_primary">服务使用情况</a>
                    <a href="javascript:history.back();" class="weui-btn weui-btn_default">智慧辅助分析</a>
                </p>
            </div>
        </div>
    </div>
    <div class="pageContent" id="tpl_feedback" style="display:none;">
        <div class="page__bd page__bd_spacing">
            <br>
            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">门牌号</label>
                        <em class="weui-form-preview__value">丹溪路37号</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">用户名</label>
                        <span class="weui-form-preview__value">刘三</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13723452345</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">问题描述</label>
                        <span class="weui-form-preview__value">这里的门牌已经遭受无损，请求修复</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">操作</a>
                </div>
            </div>
            <br>

            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">门牌号</label>
                        <em class="weui-form-preview__value">八一南街102号</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">用户名</label>
                        <span class="weui-form-preview__value">沈四</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13732143211</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">问题描述</label>
                        <span class="weui-form-preview__value">希望加上一键报警功能</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">操作</a>
                </div>
            </div>
            <br>

            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">门牌号</label>
                        <em class="weui-form-preview__value">螺狮南路44号</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">用户名</label>
                        <span class="weui-form-preview__value">张六</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13780982345</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">问题描述</label>
                        <span class="weui-form-preview__value">希望加上附近旅游推荐的功能</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">操作</a>
                </div>
            </div>
            <br><br><br><br><br><br>
        </div>
    </div>
    <div class="pageContent" id="tpl_dialogs">
        <div id="dialogs">
            <!--BEGIN dialog1-->
            <div class="js_dialog" id="iosDialog1" style="display: none;">
                <div class="weui-mask"></div>
                <div class="weui-dialog">
                    <div class="weui-dialog__hd"><strong class="weui-dialog__title" id="iosDialog1_title">弹窗标题</strong></div>
                    <div class="weui-dialog__bd" id="iosDialog1_content">弹窗内容，告知当前状态、信息和解决方法，描述文字尽量控制在三行内</div>
                    <div class="weui-dialog__ft">
                        <a  class="weui-dialog__btn weui-dialog__btn_default" >取消</a>
                        <a  class="weui-dialog__btn weui-dialog__btn_primary" id="iosDialog1_myfunction">确认</a>
                    </div>
                </div>
            </div>
            <!--END dialog1-->
            <!--BEGIN dialog1-->
            <div class="js_dialog" id="iosDialog_input" style="display: none;">
                <div class="weui-mask"></div>
                <div class="weui-dialog">
                    <div class="weui-dialog__hd"><strong class="weui-dialog__title" id="iosDialog_input_title">弹窗标题</strong></div>
                    <div class="weui-dialog__bd"><input type="text" class="weui-input" placeholder="" id="iosDialog_input_content"></div>
                    <div class="weui-dialog__ft">
                        <a  class="weui-dialog__btn weui-dialog__btn_default" >取消</a>
                        <a  class="weui-dialog__btn weui-dialog__btn_primary" id="iosDialog_input_myfunction">确认</a>
                    </div>
                </div>
            </div>
            <!--END dialog1-->
        </div>
    </div>
</div>


<!--导航页面-->
<div class="weui-tab">
    <!--导航-->
    <div class="weui-tabbar">
        <!--发现-->


        <!--我-->
        <a class="weui-tabbar__item weui-bar__item_on " href="javascript:showManagement();">
                <span style="display: inline-block;position: relative;">
                    <img src="/static/images/icon_nav_flow1.png" alt="" class="weui-tabbar__icon">
                    <span class="weui-badge weui-badge_dot"
                          style="position: absolute;top: 0;right: -6px;display: block"></span>
                </span>

            <p class="weui-tabbar__label">服务管理</p>
        </a>

        <!--通讯录-->
        <a class="weui-tabbar__item weui-bar__item_on" href="javascript:showMonitoring();">
            <img src="/static/images/icon_nav_find.png" alt="" class="weui-tabbar__icon">

            <p class="weui-tabbar__label">服务监控</p>
        </a>

        <!--消息-->
        <a class="weui-tabbar__item weui-bar__item_on" href="javascript:showFeedback();">
                <span style="display: inline-block;position: relative;">
                    <img src="/static/images/icon_nav_message.png" alt="" class="weui-tabbar__icon">
                    <span class="weui-badge" style="position: absolute;top: -2px;right: -13px;display: block">3</span>
                </span>

            <p class="weui-tabbar__label">市民反馈</p>
        </a>
    </div>
</div>
<script type="text/javascript">
    var basepath = "/static";
    /**
     * 开始自动加载find
     */
    $(document).ready(function () {
        //显示/隐藏子节点
        showInnerContent();
        //搜索栏
        searchBarAction();
        showqrcode();
    })
</script>
</body>
</html>
