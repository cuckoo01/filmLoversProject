<%-- 
    Document   : watchlistPage
    Created on : Mar 21, 2024, 2:18:23 PM
    Author     : THAO LE
--%>

<%@page import="filmlovers.model.Playlist.PlaylistDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="/film-lovers/view/user/Watchlist/watchlist.css" />
        <title>Watchlist</title>
    </head>
    <body>
        <jsp:include page="/view/user/Component/header/Header.jsp" flush="true"/>
        <div class="body_ur_list">
            <div class="container_left">
                <div style="height: 1500px">

                    <!-- USER INFORMATION -->
                    <div class="intro_user">
                        <div style="display: flex">
                            <div class="avt_container"><img src="${sessionScope.authentication.imageURL}" class="avt_container"></div>
                            <div style="margin-left: 20px">
                                <div class="some_random">
                                    ${sessionScope.authentication.firstName} 
                                    ${sessionScope.authentication.lastName}
                                </div>
                                <a href="" class="see_ur_profile">See your profile</a>
                                <!-- <div class="ur_rating_text">Your Ratings</div> -->
<!--                                <div class="private">
                                    <img src="../assets/lock_black.png" alt="" />Private
                                </div>-->
                            </div>
                        </div>
                    </div>
                    <!--END USER INFORMATION -->

                    <%
                        int numOfPlaylists = 0;
                        List<PlaylistDTO> list = (List<PlaylistDTO>)request.getAttribute("listOfPlaylists");
                        if(list != null){
                            numOfPlaylists = list.size();
                        }
                        pageContext.setAttribute("numOfPlaylists", numOfPlaylists);
                    %>
                    <div class="count_title_page">
                        <div class="count_title">
                            <c:if test="${pageScope.numOfPlaylists != 0}">
                                ${pageScope.numOfPlaylists} Playlist(s)
                            </c:if>
                        </div>
                    </div>
                    
                    <div class="list_of_playlist">
                        <c:choose>
                            <c:when test="${pageScope.numOfPlaylists != 0}">
                                <div>
                                    <c:forEach items="${requestScope.listOfPlaylists}" var="playlist">
                                    <a href="?action=viewOnePlaylist&playlistID=${playlist.id}&filmID=0">
                                        ${playlist.name}
                                    </a>
                                    <br>
                                </c:forEach>
                                </div>
                                
                                <form action="watchlist">
                                    <input type="submit" value="Create new playlist">
                                    <input type="hidden" name="action" value="getNewPlaylistInfo">
                                </form>        
                            </c:when>
                                   
                            <c:otherwise>
                                <p>Currently, you do not have any playlist!</p>
                                <form action="watchlist">
                                    <input type="submit" value="Create new playlist">
                                    <input type="hidden" name="action" value="getNewPlaylistInfo">
                                </form>        
                            </c:otherwise>        
                        </c:choose>
                        
                    </div>

                    
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

