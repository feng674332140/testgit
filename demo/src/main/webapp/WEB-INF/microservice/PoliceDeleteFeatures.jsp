<%--
  Created by IntelliJ IDEA.
  User: shenbiao
  Date: 2017/3/1
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //request.setCharacterEncoding("UTF-8");
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>智慧门牌服务管理</title>
    <link rel="stylesheet" type="text/css" href="/static/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="/static/style/example.css"/>
    <%--<script type="text/javascript" src="/static/js/zepto.min.js"></script>--%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/static/js/common/common.js"></script>
    <script type="text/javascript" src="/static/js/service/microservice.js"></script>
    <script type="text/javascript" src="/static/js/common/Sortable.min.js"></script>
</head>
<body ontouchstart>
<div class="page">
    <div class="page__hd" style="height: 30px;padding-top: 0px;padding-bottom: 40px;">
        <div class="weui-navbar">
            <div class="weui-navbar__item" onClick="javascript :history.back(-1);">
                返回
            </div>

            <div class="weui-navbar__item" id="en"  >
                 确认修改
            </div>

        </div>
    </div>
    <div class="page__bd page__bd_spacing">
        <div class="weui-grids" id="originMicroservice">
            <c:forEach items="${policeList}" var="policeList">
                <c:if test="${policeList.fetaures=='ZhuHuChaXun'}">

                    <a href="javascript:;" class="weui-grid" id="ZhuHuChaXun"  <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_panel.png" alt="">
                        </div>
                        <p class="weui-grid__label">住户查询</p>
                    </a>
                </c:if>

                <c:if test="${policeList.fetaures=='PaiChuSuoInfo'}">
                    <a href="javascript:;" class="weui-grid" id="PaiChuSuoInfo" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_button.png" alt="">
                        </div>
                        <p class="weui-grid__label">派出所信息</p>
                    </a>
                </c:if>
                <c:if test="${policeList.fetaures=='AnQuanJanYi'}">
                    <a href="javascript:;" class="weui-grid" id="AnQuanJanYi" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_toast.png" alt="">
                        </div>
                        <p class="weui-grid__label">安全建议</p>
                    </a>
                </c:if>
                <c:if test="${policeList.fetaures=='XunRenQiShi'}">
                    <a href="javascript:;" class="weui-grid" id="XunRenQiShi" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_search_bar.png" alt="">
                        </div>
                        <p class="weui-grid__label">寻人寻物</p>
                    </a>
                </c:if>

                <c:if test="${policeList.fetaures=='WangShangHuiJian'}">
                    <a href="javascript:;" class="weui-grid" id="WangShangHuiJian" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_me.png" alt="">
                        </div>
                        <p class="weui-grid__label">网上会见</p>
                    </a>
                </c:if>
                <c:if test="${policeList.fetaures=='XiaQuMinJing'}">
                    <a href="javascript:;" class="weui-grid" id="XiaQuMinJing" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_me.png" alt="">
                        </div>
                        <p class="weui-grid__label">辖区民警</p>
                    </a>
                </c:if>
                <c:if test="${policeList.fetaures=='YiJianBaoJing'}">
                    <a href="javascript:;" class="weui-grid" id="YiJianBaoJing"  <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_addressbook.png" alt="">
                        </div>
                        <p class="weui-grid__label">一键报警</p>
                    </a>
                </c:if>
                <c:if test="${policeList.fetaures=='PaiChuSuoInfo'}">
                    <a href="javascript:;" class="weui-grid" style="display: none">
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_dialog.png" alt="">
                        </div>
                        <p class="weui-grid__label">信息留言</p>
                    </a>
                </c:if>
                <c:if test="${policeList.fetaures=='FangWuZuLin'}">
                    <a href="javascript:;" class="weui-grid" id="FangWuZuLin" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_toast.png" alt="">
                        </div>
                        <p class="weui-grid__label">房屋租赁</p>
                    </a>
                </c:if>
                <c:if test="${policeList.fetaures=='ZhaoPingXinXi'}">
                    <a href="javascript:;" class="weui-grid" id="ZhaoPingXinXi" <c:if test="${policeList.status=='false'}"> style="display:none"</c:if>>
                        <div class="weui-grid__icon">
                            <img src="/static/images/icon_nav_article.png" alt="">
                        </div>
                        <p class="weui-grid__label">招聘信息</p>
                    </a>
                </c:if>
            </c:forEach>



        </div>
        <br><br><br><br><br><br>
        <ul class="weui-footer_fixed-bottom">
            <li>
                <div class="weui-flex js_category">
                    <p class="weui-flex__item pressToDelete" id="bigService_p_1">已选择的微服务</p>
                    <img class="glyphicon-move" src="/static/images/icon_nav_form.png" alt="">
                </div>
                <div class="page__category js_categoryInner">
                    <div class="weui-grids" id="allMicroservice">


                    </div>
                </div>
                </li>
            </ul>
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
    })
</script>
<script type="text/javascript">
   $(function () {
       $("#en").click(function () {
           var link=$("#allMicroservice a");
           var link_Id=[];
           //alert(link);

           for (var i=0;i<link.length;i++){
               link_Id.push($(link[i]).attr('id'));
              // alert(link_Id);
           }

           $.ajax({
               url:"poliDeleteFeatures",
               type:"POST",
               dataType:"json",
               data:{
                   link_id:JSON.stringify(link_Id)
               },
               success:function(data){
                  // console.log(data);
                   if (data){
                       alert("删除成功")
                       window.location.href="navigation";
                   }

               }
           })

       })
   })
</script>
</body>
</html>
