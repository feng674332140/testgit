<%--
  Created by IntelliJ IDEA.
  User: shenbiao
  Date: 2017/3/1
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //request.setCharacterEncoding("UTF-8");
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">

    <title>智慧门牌</title>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/example.css"/>
    <script type="text/javascript" src="<%=basepath%>/js/jquery-1.10.2.min.js"></script>

    <style type="text/css">
        body, html, #container {
            height: 100%;
            margin: 0px;
        }

        .panel {
            background-color: #ddf;
            color: #333;
            border: 1px solid silver;
            box-shadow: 3px 4px 3px 0px silver;
            position: absolute;
            top: 10px;
            right: 10px;
            border-radius: 5px;
            overflow: hidden;
            line-height: 20px;
        }

        #input {
            width: 250px;
            height: 25px;
            border: 0;
            background-color: white;
        }
    </style>

</head>
<body ontouchstart>

<div class="page__bd">

    <div class="weui-panel weui-panel_access">
        <%--<div class="weui-panel__hd">门牌信息</div>--%>
        <div class="weui-panel__bd">
            <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                <div class="weui-media-box__hd">
                    <img class="weui-media-box__thumb" src="<%=basepath%>/images/menpai/2c1c1576b4fc5268fd89f17288d1b868.gif" alt="">
                </div>
                <div class="weui-media-box__bd">
                    <h4 class="weui-media-box__title">丹溪路1405号（假日城市花园）</h4>
                    <p class="weui-media-box__desc">门牌管理单位：金华市婺城区三江街道</p>
                </div>
            </a>
        </div>
        <div class="weui-panel__ft">
            <a href="javascript:void(0);" class="weui-cell weui-cell_access weui-cell_link">
                <div class="weui-cell__bd">查看更多门牌信息</div>
                <span class="weui-cell__ft"></span>
            </a>
        </div>
    </div>

    <div class="weui-cells weui-cells_form" style="height:40%">
        <div class="weui-cell">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" id='input' value='点击地图显示地址' rows="3"></textarea>
            </div>
            <%--<div class="weui-cell__hd">--%>
                <%--<a class="weui-btn weui-btn_primary" onclick="locationConfirm()">确定</a>--%>
            <%--</div>--%>
        </div>

        <div id="container" tabindex="0"></div>
    </div>

    <div class="weui-cells weui-cells_form">

        <div class="weui-panel weui-panel_access">
            <div class="weui-panel__hd">公安工作服务</div>
        </div>
        <div class="weui-grids">
            <a href="<%=basepath%>/microservice/svg.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_panel.png" alt="">
                </div>
                <p class="weui-grid__label">住户查询</p>
            </a>
            <a href="http://bsdt.jhga.gov.cn/egov/jhwas/portals/include/windowQuery.jsp?jgname=&areaname=&jgtype=7" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_button.png" alt="">
                </div>
                <p class="weui-grid__label">派出所信息</p>
            </a>
            <a href="http://www.jhga.gov.cn/News/?i=147" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_toast.png" alt="">
                </div>
                <p class="weui-grid__label">安全建议</p>
            </a>
            <a href="http://bsdt.jhga.gov.cn/egov/lcs/jsp/portals/itemShow.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_search_bar.png" alt="">
                </div>
                <p class="weui-grid__label">寻人寻物</p>
            </a>
            <a href="http://www.jhga.gov.cn/Service/Video.aspx" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_me.png" alt="">
                </div>
                <p class="weui-grid__label">网上会见</p>
            </a>
            <a href="http://www.jhga.gov.cn/whInfo/?i=257" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_me.png" alt="">
                </div>
                <p class="weui-grid__label">辖区民警</p>
            </a>
            <a href="<%=basepath%>/microservice/callthepolice.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_addressbook.png" alt="">
                </div>
                <p class="weui-grid__label">一键报警</p>
            </a>
            <a href="<%=basepath%>/microservice/leavemessage.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_dialog.png" alt="">
                </div>
                <p class="weui-grid__label">信息留言</p>
            </a>
            <a href="<%=basepath%>/microservice/rentahouse.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_toast.png" alt="">
                </div>
                <p class="weui-grid__label">房屋租赁</p>
            </a>
            <a href="http://zhaopin.baidu.com/quanzhi?tid=4139&ie=utf8&oe=utf8&query=%E5%A9%BA%E5%9F%8E%E5%8C%BA%E6%8B%9B%E8%81%98%E4%BF%A1%E6%81%AF&city_sug=%E5%A9%BA%E5%9F%8E" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_article.png" alt="">
                </div>
                <p class="weui-grid__label">招聘信息</p>
            </a>
        </div>
    </div>
    <br><br><br><br><br><br>

    <a href="<%=basepath%>/login/login.jsp" class="weui-btn weui-btn_primary">用户登录</a>
    <br><br>
    <div class="weui-footer">
        <p class="weui-footer__links">
            <a href="javascript:void(0);" class="weui-footer__link">公司简介</a>
        </p>
        <p class="weui-footer__text">Copyright &copy; 2008-2018 武汉一张图科技有限公司</p>
    </div>
</div>


<!--相关条款-->
<div class="page__ft j_bottom">
    <%--<div class="weui-footer">--%>
        <%--<p class="weui-footer__links">--%>
            <%--<a href="javascript:void(0);" class="weui-footer__link">公司简介</a>--%>
        <%--</p>--%>
        <%--<p class="weui-footer__text">Copyright &copy; 2008-2018 武汉一张图科技有限公司</p>--%>
    <%--</div>--%>

    <%--<div class="weui-cells weui-cells_form">--%>
        <%--<div class="weui-cell">--%>
            <%--<div class="weui-cell__bd">--%>
                <%--<textarea class="weui-textarea" id='input' value='点击地图显示地址' rows="3"></textarea>--%>
            <%--</div>--%>
            <%--<div class="weui-cell__hd">--%>
                <%--<a class="weui-btn weui-btn_primary" onclick="locationConfirm()">确定</a>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

</div>


<script src="https://webapi.amap.com/maps?v=1.3&amp;key=0527fc08a6b9ab7a0d2dacdf50ed20d6&callback=init"></script>
<!-- UI组件库 1.0 -->
<script src="//webapi.amap.com/ui/1.0/main.js"></script>
<script type="text/javascript" src="https://webapi.amap.com/demos/js/liteToolbar.js"></script>
<script>

    var dataX;//经度
    var dataY;//纬度

    var marker,map = new AMap.Map('container', {
        center: [119.66992943389903,29.079736475170133],
        zoom: 17
    });
    //        map.plugin(["AMap.ToolBar"], function () {
    //            map.addControl(new AMap.ToolBar());
    //        });
    map.setFeatures(['road', 'bg', 'point'])//多个种类要素显示

    //        //设置DomLibrary，jQuery或者Zepto
    //        AMapUI.setDomLibrary($);
    //
    //        //加载BasicControl，loadUI的路径参数为模块名中 'ui/' 之后的部分
    //        AMapUI.loadUI(['control/BasicControl'], function (BasicControl) {
    //
    //            var map = new AMap.Map('container');
    //
    //            //缩放控件
    //            map.addControl(new BasicControl.Zoom({
    //                position: 'lt', //left top，左上角
    //                showZoomNum: true //显示zoom值
    //            }));
    //
    //            //图层切换控件
    //            map.addControl(new BasicControl.LayerSwitcher({
    //                position: 'rt' //right top，右上角
    //            }));
    //
    //            //实时交通控件
    //            map.addControl(new BasicControl.Traffic({
    //                position: 'lb'//left bottom, 左下角
    //            }));
    //        });

    AMap.plugin('AMap.Geocoder', function () {
        var geocoder = new AMap.Geocoder({
            city: "010"//城市，默认：“全国”
        });
        var marker = new AMap.Marker({
            map: map,
            bubble: true
        })
        map.on('click', function (e) {
            dataX = e.lnglat.lng;
            dataY = e.lnglat.lat;

            marker.setPosition(e.lnglat);
            geocoder.getAddress(e.lnglat, function (status, result) {
                if (status == 'complete') {
                    document.getElementById('input').value = result.regeocode.formattedAddress
                }
            })
        })
    });

    function locationConfirm() {
        alert(dataX);
        alert(dataY);
    }

    function addMarker() {
        if (marker) {
            return;
        }
        marker = new AMap.Marker({
            icon: "<%=basepath%>/images/mark_b.png",
            position: [114.356531,30.5274]
        });
        marker.setMap(map);
    }

    $(document).ready(function(){
        pageNo=1
        addMarker();
    })

</script>

<script>
    var basepath = "<%=basepath%>";
</script>

</body>
</html>
