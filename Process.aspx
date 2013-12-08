<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Register Src="~/Navigation.ascx" TagPrefix="UC" TagName="Navigation" %>
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
<UC:Navigation runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
<div class="row size-11">
<div class="column size-12">
 <h4>Process</h4>
 <hr />
 <p>“sparshh.com” dedicated team is always striving hard to help you find your dream match through unique unparalleled processes. The particular processes depend upon your selection of subscription, but, however in most of the cases, we follow these steps to identify the perfect match for our client –</p>
 <p>A.	“sparshh Wants to Know You” Form :

At first we ask clients to fill this form that seeks several essential aspects apart from identity information, such as zodiac sign, origin, height etc. This form also enables us to compare a brief about the personality, origin and aspirations of the prospective bride/groom.
</p>
<p>B.	Dream Analysis :

It’s a crucial step where our team works out to know the personalities, background and aspired dreams of the prospective bride/groom. Also takes a snapshot of the family aspects, culture, lifestyle etc of the families as those prove to be an essential factor to identify a perfect match.
</p>
<p>C.	Searching / Screening / Short-listing of Profiles :

On the basis of our analysis we now initiate search our enriched database for most suitable prospects. Then we screen and short-list the most optimum profiles for you. We also take help of our specialized software tool for completing this job.
</p>
<p>D.	Profile Synchronization :

Here we synchronize and share the most suitable profiles with our client necessary to reach to a decision only except few those personal information on the discretion of other party.
</p>
<p>E.	“sparshh” on Personal Interaction :

Here we arrange a personal interaction between the families of most matching profiles. Our devoted professionals co-ordinate these personal interactions in a comfortable setting. Our representative remains present there only if it is required and the interaction is arranged at Kolkata and Suburban.
</p>
<p>F.	The Ultimate Approval :

After the personal interaction is accomplished, the families ponders on the discussion and take few days time to reach to a conclusion and then send the approval.
</p>
<p>All these processes (depending on membership plans) then intensify and celebrate another successful and privileged client adherence to “sparshh.com”.</p>
</div>
</div>
</asp:Content>

