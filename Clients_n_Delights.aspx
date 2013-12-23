<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
                  .black-overlay{
            display:none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            -moz-opacity: 0.8;
            opacity:.80;
            filter: alpha(opacity=80);
        }
        
   .light-content
   {
       top:50%; 
       position:fixed;
       border:1px solid Orange;
       background-color:White;
       padding:10px; 
       margin:0 auto;
       display:none;
   } 
        .background
     {
      background-image:url(image/banner-preveledge.jpg);
      background-color:#FDFDFD;
       
     }
     
     
     .text-select
     {
         height:30px;
         width:210px;
         border:solid 1px White;
         -moz-border-radius: 5px;
         -webkit-border-radius: 5px;
         border-radius: 5px;
     }
     
     .pad
     {
         padding-left:20px;
         padding-bottom:5px;
     }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlackOverLay" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Home.aspx">Home</a></li>
           <li><a href="AboutUs.aspx">About Us</a></li>
           <li><a href="Mission_n_Vission.aspx">Mission & Vission</a></li>
           <li><a href="Packages.aspx">Packages</a></li>
           <li><a href="Process.aspx">Process</a></li>
           <li><a href="Clients_n_Delights.aspx" class="active">Client Delights</a></li>
           <li><a href="FAQ.aspx">FAQ</a></li>
           <li><a href="BusinessEnquiry.aspx">Business Enquiry</a></li>
           <li><a href="AdvertiseWithUs.aspx">Advertise With Us</a></li>
           <li><a href="/">Career</a></li>
           <li><a href="ContactUs.aspx">Contact Us</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
<div class="row size-11">
 <div class="column size-12" style="margin-top:50px;">
  <h4>Client Delights / Credential </h4>
  <hr />
  <p>Welcome delegates to “sparshh.com” success world. This is where we take pride to enlist client endorsements. This section is attributed to the innumerable “sparshh.com” members who have discovered their dream-mates. We wish them all the very best to their eternal married journey – </p>
  <p>1.	Finding a life partner is not very easy and that too on the internet which is very different from the usual tradition of arranged marriage. “sparshh.com” brings to us that glimpse of personalized blessings. I never knew that my soul-mate would contact me on “sparshh.com”. We took the SPARSHH ELITE membership. Our families met in a convenient place with help of “sparshh.com” and finally         reached to the conclussion that we were meant for each other. After onwards we got married. Thank you, “sparshh.com” for your so special personalized touch to bring autumn at our life.

-	AYUSH and SMITA, Kolkata
</p>
<p>2.	We met at sparshh.com. We took SPARSHH ONLINE membership knowing that it’s a new venture. We continued chatting for 1-2 months.               Through chatting we came to know each other and decided to step forward together. We would like to sincerely thank sparshh.com for making this happen. We at last have found each other at your door step.

-	ARADHANA and RAKESH, Delhi / NCR
</p>
<p>3.	Thanks a lot sparshh.com and its technical support for creating the wonderful platform where we mingled with each other and now we can celebrate our life journey all along.

-		ANAND and PADMINI, Mumbai
</p>
<p>4.	I would like to deeply thank sparshh.com team, since I have found a suitable match for me from your site, within a matter of just two weeks.

-	SAKSHI, Kolkata
</p>
<p>5.	I went on subscribing to almost all major matrimonial sites. But, I got ultimately tired of being sent all irrelevant and non-suitable profiles. One day I came across to know from face book that sparshh.com is operating in a very differential way and with very much comparable prices. I registered to the site and took SPARSHH ELITE membership. On 3rd week I got acceptance mail from your support team and was enchanted     to see that a beautiful angel had accepted my profile. You may not believe but for me it was dream comes true when I met her in a family meeting organized by you. Their approaches and traits were just there for me what I was searching for. After a lot of chatting there onwards we finally tied our knot. I sincerely want to thank you for your extremely elegant and rejuvenating frame work to find one’s soul-mate. Keep up your good work..Thanks and Regards,

-		ASHMIT, Kolkata
</p>
<p>
6.	I feel that to become an online member of sparshh.com was the right decision in a right moment in my life. After taking it, I searched through its diversified religion portals and finally got my soul-mate.

-		Pradeep, Delhi
</p>
 </div>
</div>
</asp:Content>

