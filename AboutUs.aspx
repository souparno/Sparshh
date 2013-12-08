<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Register Src="~/Navigation.ascx" TagPrefix="UC" TagName="Navigation" %>

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

<div class="row size-12">
 <div class="column size-12">
   <h4 >sparshh.com Profile</h4>
<hr />
<p >Marriage is the eternal solemn life journey of two loving souls within which hides the wooing of the God and Goddess. This is the glimpse of life where the practical meets the mythical. For many people the experience of this romantic phase is their first acquaintance of spirituality without knowing it. It’s the intense infatuation between not only two people, but, also two families which elevates them beyond ordinary perception of harmony where the world becomes enchanted. It’s the finest ecstatic platform to exchange and express true divine love among humans. Certainly to make a match, there are many aspects that have to be kept in mind like cultural attributes, religious versatilities, socio-economic stands and many more in between two families.</p>
<p >With this essence of understanding “sparshh.com” has been registered and developed which is already getting patronized by many diversified class of people not only in India but also across the world through our corporate website www.sparshhmatrimony.com.</p>
<p >Established in the year of 2011-12 “sparshh.com” already has developed the privileged market constituted by thorough analysis of Indian culture and requirements of people looking to get married which also determines the prolific health of communal relationship. </p>
<p >Starting from a small venture and limited workforce it is still growing and expanding by creating rich and enormous database of elite class of clients in India and across the world through our several value added unique services. We have dedicated team that persevere hard to cater the needs of the clients from more than fourteen religions such as Bengali, Gujrati, Hindi Marwari, Punjabi, Urdu and many more.</p>
<p >Click here to upgrade and unfold our detailed packages.</p>
 
 <hr />

 <h4 >Sparshh.com Accolades </h4>
 <hr />
 <p >“sparshh.com” has grown with high pace in matchmaking arena. Our journey is crowned with many social accolades like –</p>
 <p >a.	The only matrimony which is dispensing superior lucrative services with comparable and affordable prices to serve all the socio-economic class of people.</p>
 <p >b. Have been successful in establishing accomplished unions all over India and world since inception.</p>
 <p >c.	First matrimony in India to introduce one time registration charge valid till marriage.</p>
 <p >d.	First matrimony to Endeavour Post Wedding Celebration in members.</p>
 
 <hr />

 <h4 >sparshh.com Team</h4>
 <hr />
 <p >“sparshh.com” is enriched and led by a number of professionally managed and highly qualified individuals and MBAs catering the needs of the people and to build an expertise venture towards the matrimonial system in India and across the world.

“sparshh.com” is working constantly on many axis of matrimony such as advertising, screening of profiles, servicing, match-making, marketing etc to fulfill the requirements of each client.
</p>

 </div>
 
</div>


</asp:Content>

