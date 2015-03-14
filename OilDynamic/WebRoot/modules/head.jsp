<%@ page language="java" import="java.util.*,cn.edu.cup.*" pageEncoding="UTF-8"%>

<div id="header">
    <div class="header-up-wrapper">
        <div id="top-nav-wrapper" style="height: 5px;"></div>
        <div id="header-up" class="container_12">
            <div class="grid_12">
                <div id="logo-wrapper">
                    <a href="modules/project.jsp" title="unique" class="title">煤层气集输系统Web动态建模软件</a>
                </div>
            </div>
        </div>
    </div>
    <!-- end of .header-up-wrapper -->
    <div class="header-down-wrapper">
        <div>
            <div id="menu-wrap">
                <div id="menu-wrapper" class="container_12">
                    <ul id="main-nav" class="sf-menu">
                        <li id="projectli">
                            <a href="modules/project.jsp">拓扑图前台管理模块</a>
                            <ul>
                                <li>
                                    <a href="home-2.html">Home 2</a>
                                </li>
                                <li>
                                    <a href="home-3.html">Home 3</a>
                                </li>
                                <li>
                                    <a href="home-4.html">Home 4</a>
                                </li>
                                <li>
                                    <a href="home-5.html">Home 5</a>
                                </li>
                                <li>
                                    <a href="home-6.html">Home 6</a>
                                </li>
                                <li>
                                    <a href="home-7.html">Home 7</a>
                                </li>
                                <li>
                                    <a href="home-8.html">Home 8</a>
                                </li>
                                <li>
                                    <a href="home-9.html">Home 9</a>
                                </li>
                                <li>
                                    <a href="home-10.html">Home 10</a>
                                </li>
                                <li>
                                    <a href="home-1-block.html">Home 1 block</a>
                                </li>
                                <li>
                                    <a href="home-2-block.html">Home 2 block</a>
                                </li>
                            </ul>
                        </li>
                        <li id="elementli">
                            <a href="modules/element-manage.jsp">拓扑结构后台管理模块</a>
                        </li>
                        <li>
                            <a href="modules/about-us.html">用户管理</a>
                        </li>
                        <li>
                            <a href="modules/contact.html">联系我们</a>
                        </li>
                    </ul>
                </div>
                <!-- end of menu-wrapper -->
            </div>
            <!-- end of menu-wrap -->

        </div>
    </div>
    <!-- end of .header-down-wrapper -->
</div>

   <script>
   		var $pathname=window.location.pathname;
        if ($pathname.indexOf("project")>=0){
            $("#projectli>a").removeAttr("style");
            $("#projectli>a").css("color","#39C2F0");
        }else if($pathname.indexOf("element")>=0){
            $("#elementli>a").removeAttr("style");
            $("#elementli>a").css("color","#39C2F0");
        }

   </script>