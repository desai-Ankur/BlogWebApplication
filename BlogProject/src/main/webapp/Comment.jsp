<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>

<%
	
///	FeedBackDao fdao=new FeedBackDao(ConnectionProvider.getConnection());
//	List<FeedBack> flist= fdao.getAllFeedBack();
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<style type="text/css">


body {
    background-color: #F4F4F4 !important
}

h3 {
 
    font-family: 'Manrope', sans-serif;
    font-weight: bold
}

.card {
    border: none;
    border-radius: 20px;
    padding: 20px;
    margin-bottom: 40px
}

img {
    border-radius: 10px;
    padding-right: 5px;
    width: 60px;
    height: 55px
}

img:hover {
    cursor: pointer
}

.round .align-self-start {
    border-radius: 100%;
    width: 45px;
    height: 40px
}

.media .comment {
    background: #F4F4F4;
    border: none;
    border-radius: 10px
}

h6.user {
    color: #5C5C5C;
    font-size: 15px !important;
    padding-left: 15px !important;
    margin-bottom: 0
}

h6.user:hover {
    cursor: pointer;
    text-decoration: underline
}

p.text {
    margin-bottom: 0;
    color: #8A8A8A !important;
    font-size: 14px
}

.ml-auto {
    margin-right: 10px
}

p .reply {
    color: #5C5C5C;
    font-size: 15px
}
	
	</style>	

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	
          
  <div class="container">
    <div class="row text-center">
        <h3>Feedback</h3>
    </div>
</div>
<!--  
<div class="container mt-1  justify-content-center">
    <div class="row">
        <div class="col-md-12"> 
            <div class="card">
                <ul class="list-unstyled">
                 <%
//					int feed=0;
//	                Date d=null;
		//			FeedBack fb=null;
			//		while(feed<flist.size())
				//	{
					//	fb=flist.get(feed);
				%>
				
                    
                    <li class="media my-2 border border-2"> 
                        <div class="media-body" style="
    background-color:#e1e6f1;   padding-bottom: 15px;    padding-top: 15px;    padding-left: 10px;    padding-right: 10px; ">
                        	<div class="media mt-3 comment"> <a href="#"><img src="Imagesprofile/<%//out.println(fb.getPhoto()); %>" class="align-self-center mr-1" style="margin-left:10px; width: 85px; height: 70px;"></a>
                                <div class="media-body">
                                	<h5 class="reply" style="margin-left: 10px;"><%//out.println(fb.getName() ); %></h5>
                                	<p class="reply"><%// Timestamp ts=fb.getDateTime(); 
            //            			d=new Date(ts.getTime());
            //            			out.println(d); %></p>
                        			<h5 class="reply" style="margin-left: 70px; margin-bottom: 0px;"><span style="background-color: #13f4ff;">Title : <%//out.println(fb.getTitle() ); %></span></h5>
                                    <p class="reply" style="margin-left: 170px; font-size: larger !important;"><%//out.println(fb.getDesc() ); %></p>
                                </div>
                            </div>
                            
                            <div class="media mt-3 comment" style="margin-left: 50px;"> <a href="#"><img src="profile/admin.png" class="align-self-center mr-1" style="margin-left:10px; margin-top:10px; width:70px; height: 60px;"></a>
                                <div class="media-body">
                                	<h5 class="reply" style="margin-left: 10px;">Admin</h5>
                                    <p class="reply" style="margin-left: 70px; font-size: larger !important;"><%//out.println(fb.getAns() ); %>
</p>
                                </div>
                            </div>
                        </div>
                    </li>
                     <% 
		//		feed++;
		//	}
			%>
				    </ul>
            </div>
        </div>
    </div>
</div>				
					-->	

</body>
</html>