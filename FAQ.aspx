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



<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Home.aspx">Home</a></li>
           <li  class="dropdown">
              <a href="AboutUs.aspx" >About Us</a>
                 <ul class="dropdown-menu">
                  <li><a href="AboutUs.aspx">About Us</a></li>
                  <li><a href="Mission_n_Vission.aspx">Mission & Vission</a></li>
                  <li><a href="Process.aspx">Process</a></li>
                 </ul>
           </li>
           <li><a href="Packages.aspx">Packages</a></li>
           <li><a href="Clients_n_Delights.aspx">Client Delights</a></li>
           <li><a href="FAQ.aspx" class="active">FAQ</a></li>
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
 <center>
   <h3>F.A.Q</h3>
   <p>
    <b>Need help in your partner search?</b>
   </p>
   <p> 
Please go through our frequently asked questions. If you still can't find your answers, please feel free to contact us or call us. You can also write to us at 
<span style="color:#0066FF">enquiry@sparshhmatrimony.com</span>
   </p>
  </center>
  <hr />

   <center>
    <h4 style="color:#0066FF">Registration</h4>
   </center>
   <p>
    <b>How to Register?</b>
    <br />
    Login to <span style="color:#0066FF">www.sparshhmatrimony.com</span>, You can choose to register either as a free member or as a paid member. 
   </p>
   <p>
    <b>Free Registration</b>
    <br />
    Provide name, age, gender, e-mail ID.
Click on Register link and you will have to enter on a couple of pages the details of the person intending to get married.
After you submit your information, your profile will be automatically created and you shall be given a 'Matrimony ID' generated for future references and login purposes.
   </p>
  <p>
    <b>Paid Registration</b>
    <br />
 Provide name, age, gender, e-mail ID.
Click on Register link and you will have to enter details of the person intending to get married.
Choose package for the required period.
Click on Join Now link and you will find a page on which you could enter the details of the person intending to get married.
You shall have a 'Matrimony ID' generated for further references and login purposes.
  </p>
  <p>
    <b>What is profile validation?</b>
    <br />
All the profiles are validated before inclusion in the database. Validation of profiles is done manually, which takes 24 hours. Our support team meticulously validates each and every profile carefully on specific criterion before it is added to our database. E-mail will be sent to you once the profile is validated and added.
  </p>
  <p>
    <b>On what criteria is a profile validated?</b>
    <br />
Almost every word counts. We categorically ignore profiles that are submitted by under age persons, and profiles that contain abusive content. We reject profiles that contain invalid data such as added for fun/looking for friendship/not related to marriage. We try and maintain the highest quality in the database we serve to ensure only members who are serious about marriage make use of the service.
  </p>
  <p>
   <b>Can I fill a single form and get registered in all the regional sites?</b>
   <br />
   Yes, you can fill a single form and get registered in all the regional sites to search and contact profiles across all domains.
  </p>
  <p>
   <b>Can I register on behalf of someone else?</b>
   <br />
   Yes, you can register on behalf of someone else.
  </p>
  <p>
   <b>Can I register for my sister/brother and myself with the same Matrimony ID?</b>
   <br />
   A Matrimony ID identifies each person uniquely. Please register separate profiles for you and your sibling for individual partner searches.
  </p>
  <p>
   <b>Can I register for my friend, relative or sibling?</b>
   <br />
   Yes! In fact we have a large number of profiles being registered by parents, siblings, relatives, etc.
  </p>
  <p>
   <b>Can I register profiles for my sibling and myself with the same e-mail ID?</b>
   <br />
   Yes, you can! In a single language domain, a maximum of two profiles (one male and one female) can have the same e-mail ID.
  </p>
  <p>
   <b>Profile description -what to enter?
What should I enter in the profile description field?
</b>
   <br />
Your profile description is where you reveal yourself -your personality, your likes and dislikes, your educational and family background, career and personal interests, and expectations about your partner. Try to give a clear self-description and a complete picture of what you expect. A good description will always fetch instant responses. Look at the sample profiles below, which are clear, brief and have all the important details in a well-organised manner. 
  </p>
  <p>
   <b>Can I view sample profiles?
</b>
   <br />
I am a friendly, fun-loving person. I have a pleasing personality. I hold a bachelors degree in Dental Surgery. I am working as an associate doctor in a private clinic for the past 3 years in Chennai. My hobbies are listening to music (any kind of music, which ever is soothing) and travelling.
<p></p>
We have an open-minded, religious family. Fatheris a retired Asst. Engineer from U.P state government and mother is a simple, loving and caring housewife. I have two brothers, both elder and married. The first is an Engineer in Indian Air Force and the second is employed in a reputed glass factory.
<p></p>
My ideal partner will be someone who is intelligent, caring, broad-minded and has a good sense of humour. I believe that love, trust, understanding and commitment are the four pillars of any relation and this is what I am looking for in my partner.
  </p>
  <p>
   <b>What information will be displayed to members from my profile?</b>
   <br />
   Free members can view all your details except e-mail ID and telephone number. Paid members can view all your details including email ID and telephone number. 
</p>
  <center>
    <h4 style="color:#0066FF">Profile creation/modification</h4>
   </center>
   <p>
   <b>How do I create a complete profile?</b>
   <br />
A quick careful glance of the following topics will help you to include photos, horoscope, video, voice profile, references, etc.to make your profile complete.
  </p>
  <p>
   <b>How many photos can I add?</b>
   <br />
Login using your Matrimony ID/E-mail ID and Password.
Click on the Edit Profile section.
Click ont he Add Photo link under Enhance My Profile heading.
In the Add Photo page, click on the Browse button.
Select your photo in jpg/gif format and click Upload Photo.
Crop your photo as required to show the image appropriately.

How to crop the picture?

Move the cursor and select the image of your face within the square as much as you wish.
Add a caption to the photo. It can have a maximum of 100 characters with spaces.
  </p>
   <p>
   <b>What are the other ways to add photos?</b>
   <br />
E-mail your photo to <span style="color:#0066FF">profile@sparshhmatrimony.com </span> indicating your Matrimony ID and Password.
Post your photo to any of our offices across the world with your Matrimony ID and Password.
We will upload your photo to your profile free of cost.
  </p>
  <p>
   <b>What is photo validation process?</b>
   <br />
Every photo posted on our website involves a manual screening. The turn around time for validation is 24 hours.
Only after the photo gets validated, then only it will be available for all members to see.
  </p>
  <p>
   <b>How do I protect my photo?</b>
   <br />
   This is an exclusive feature available only to paid members.
You can protect your photo with a Password and only those members with whom you share your Password can view your photo.
<p></p>
Note:If you forget your Password, you can set a new Password but you cannot retrieve the old one.
  </p>
  <p>
   <b>How do I unprotect my photo?</b>
   <br />
This is an exclusive feature available only to paid members. Click on the Edit Profile section.
Click on the Edit Photo link under Enhance My Profile heading.
In the Edit Photo page, click on the Unprotect Photo section.
Click on the Unprotect Photo button to display your photo to all.
  </p>
  <p>
   <b>How to delete photos?</b>
   <br />
Log in using your Matrimony ID/E-mailID and Password.
Click on the Edit Profile section.
Click on the Edit Photo link under Enhance My Profile heading.
In the Edit Photo page, below the photo you want to delete is a delete link. Click on the delete link to delete the photo.
  </p>
    <p>
   <b>What is photo security?</b>
   <br />
This is a feature by which each photo will have a BharatMatrimony water mark image.
This helps to protect the photo and hence the photo cannot be copied or tampered with.
  </p>
    <p>
   <b>What is request photo?</b>
   <br />
This feature helps you to send a request to a member to add his/her photo if he/she has not added one.
  </p>
  <center>
    <h4 style="color:#0066FF">Horoscopes</h4>
   </center>
   <p>
   <b>How to add a horoscope?</b>
   <br />
Log in using your Matrimony ID/E-mail ID and Password.
Click on the Edit Profile section.
Click on the Add Horoscope link under Enhance My Profile heading.
Upload your horoscope if you already have a horoscope.
If you're uploading a horoscope make sure the horoscope is in JPG/GIF format.Your horoscope will be validated before it is added to your profile.

  <p>
   <b>What are the other ways to add horoscopes?</b>
   <br />
E-mail your horoscope to <span style="color:#0066FF">profile@sparshhmatrimony.com</span> withyour Matrimony ID and Password.
Postyour horoscopetoany of our officesacrossthe world withyour MatrimonyIDand Password.
We will upload your horoscope to your profile free of cost.
  </p>
  <p>
   <b>What is horoscope validation?</b>
   <br />
Every horoscope posted on our website will go through 24 hours of validation that involves a manual screening.
Only after the horoscope is validated will it be available for all members to see.
  </p>
   <p>
   <b>How do I protect my horoscope?</b>
   <br />
This is an exclusive feature available only to paid members.
You can protect only an uploaded horoscope with a Password and only those members with whom you share your Password can view your horoscope.<p></p>
Note:If you forget your Password, you can set a new Password but you can not retrieve the old one.
  </p>
     <p>
   <b>How do I unprotect my horoscope?</b>
   <br />
This is an exclusive feature available only to paid members.
Click on the EditP rofile section.
Click on the Edit Horoscope link under Enhance My Profile heading.
In the Edit Horoscope page, click on the Unprotect Horoscope section.
Click onthe Unprotect Horoscope button to display your horoscope to all.
  </p>
       <p>
   <b>Howto delete horoscope?</b>
   <br />
Log in using your Matrimony ID/E-mail ID and Password.
Click on the Edit Profile section.
Click on the Edit horoscope link under Enhance My Profile heading.
In the Edit horoscope page, click on delete button.
  </p>
  <p>
   <b>What is request horoscope?</b>
   <br />
This feature helps you to send a request to a member to add his/her horoscope if he/she has not added one.
  </p>
  
  <center>
    <h4 style="color:#0066FF">Matrimony Stamp</h4>
   </center>
  <p>
   <b>What is a Matrimony Stamp?</b>
   <br />
For all registered users as the first step towards generating the trust you have a free special feature called Matrimony Stamp.
A Matrimony Stamp is a copyright feature of BharatMatrimony, which is a symbol of trust that proves that your details are genuine and attested. The verification is done based on name, age, state of residence, education and occupation. This service helps remove any concern you have about contacting a stranger since the details are authentic.
<br />
• You can search members with Matrimony Stamp, so you find genuine prospects.
<br />
• You can avoid embarrassing background checks when you already know the details
    are authentic.
<br />    
• Become more trust worthy and credible to prospects.
<br />
• It is a free service and requires no documents.
<br />
You can add a Matrimony Stamp to your profile by getting your personal details form attested by a gazetted officer. Click here to add a Matrimony Stamp to your profile.
 </p>
   <p>
   <b>How to add Matrimony Stamp?</b>
   <br />
Log in using your Matrimony ID/E-mail ID and Password.
Click on the Edit Profile section.
Click on the Add Matrimony Stamp link under Enhance My Profile heading.
In the Add Matrimony Stamp page, fill up the Personal Details Form and submit.
Take a print out of the form and get it attested by a Gazetted Officer/Notary Public.
After getting the form attested, upload the attested document by clicking on the Upload Attested Document link.
You can also e-mail the attested document to profile@sparshhmatrimony.com with your Matrimony ID or you can post the document to our office. We'll add it to your profile free of cost.
Note:The Matrimony Stamp process is trade marked and copyrighted.
What is Matrimony Stamp validation process?
Every request posted on our website involves a manual screening of 24 hours.
Only after the photo is validated will it be available for all members to see.
 </p>
    <p>
   <b>What is Matrimony Reference?</b>
   <br />
Matrimony Reference, a trade marked feature of sparshhMatrimony is about testimonials added to a member's profile by relatives, friends or colleagues for the purpose of marriage. This helps avoid embarrassing background checks and lets prospects get to know each other better through other sources. In India reference checks are an integral part of the matchmaking process. References help potential prospects know more about you from your relatives, friends and colleagues. 
Click here to Invite Matrimony Reference.
Click here to Add Matrimony Reference
 </p>
     <p>
   <b>What is the need for Matrimony Reference?</b>
   <br />
Marriage is such an important life decision. One cannot afford to make a mistake while choosing a life partner. In situations where you do not know other person, it is advisable to be extra cautious while verifying their credentials. Performing background checks on a person can be rather embarrassing. Matrimony Reference gives you first hand information about the person from various sources even before you ask for it. 
 </p>
      <p>
   <b>How to add Matrimony Reference?</b>
   <br />
You can add Matrimony Reference in two ways and there is no limit to the number of references one can add. You can add as many references as possible.
<p></p>
1. Invite Matrimony Reference
You can send a message from sparshhmatrimony to your referee (relative, friend or colleague) inviting them to visit our site and add their comments about you. An e-mail correspondence will be sent to them intimating them about your request.
<p></p>
2.Add Matrimony Reference
You can provide all the referee's information including contact details. Any member interested in verifying your details and knowing more about you can directly contact the referees.
<p></p>
Can everyone see my Matrimony Reference?
All members can view your Matrimony Reference except the contact details that only Paid members have the privilege of viewing.
<p></p>
Can I protect my Matrimony Reference and show it only to members I want to show it to?
Yes! You can. We have provided an option for you to set your privacy settings where you can show your Matrimony Reference only to members you want to show it to.
<p></p>
Can I delete my Matrimony Reference?
Yes, you can delete your Matrimony Reference. In your list of Matrimony References, there is an option for you to delete any reference you choose.
 </p>
      <p>
   <b>How to add references?</b>
   <br />
There are two ways you can add references to your profile.
Send a message to your relatives/friends/colleagues inviting them to visit our site and add reference for you on our site.
Add the contact details so that members who want to know more about you can contact them directly.
 </p>
       <p>
   <b>Who can view your references?</b>
   <br />
All members can view your references, but only paid members can view the contact details of your referees.
You can also control who among the paid members can view your referee contact details.
We provide you with reference privacy settings available in the Reference section.
 </p>
        <p>
   <b>How to protect references?</b>
   <br />
Only paid members can protect their references.
In Edit Profile under Enhance My Profile heading, click on Edit Reference.
In the Reference section, click on Reference Privacy Settings.
We have provided you with various reference privacy settings by which you can protect your reference.
</p>

</p>
<center>
    <h4 style="color:#0066FF">Astro Match</h4>
</center>
<p>
<b>What is Astro Match?</b>
<br />
Astro Match is Real Time Horoscope Matching online with a prospective life partner. You can match your horoscope with anyone you choose to find out if you're compatible as a couple. 
<p>
<b>How do I do an AstroMatch?</b>
<br />
To do an Astro Match we need to have your place, date and time of birth and that of the person you wish to match. If you and your prospective partner have added your horoscope then you can do an instant match.
</p>

<p>
<b>I do not have a horoscope. Can I do an AstroMatch?</b>
<br />
No. You must first add your horoscope to do an Astro Match.
</p>

<p>
<b>How can I avail Astro Match service?</b>
<br />
Astro Match is a separate paid package. You would need to pay to use this service even if you are a paid member.
</p>

<p>
<b>What is the maximum number ofAstro Matches I can avail?</b>
<br />
The number of Astro Matches you can avail depends on the package you select.
</p>


<center>
    <h4 style="color:#0066FF">Videos</h4>
</center>
<p>
<b>How to upload video?</b>
<br />
You can add a 30-sec video clipping to your profile absolutely free. If the clipping exceeds 30 seconds, we have the right to edit the video to conform to duration of 30 seconds.
Log in using your Matrimony ID/E-mail ID and Password.
Click on the Edit Profile section.
Click on the Add Video link under Enhance My Profile heading.
Click the Browse button and select the file (only MPEG or AVI formats) 
Click on Upload Video button to add your video clipping to your profile.
</p>
<p>
<b>What are the other ways to add video?</b>
<br />
Send a CD or video cassette labeled with your Matrimony ID to our office.
<p></p>

SPARSHH.COM,
96/1 RISHI BANKIM ROAD, GROUND FLOOR,
WARD NO. 25, BLOCK-A, NANDAPALLY,
PO- NAIHATI, DIST- 24 PARGANAS (N),
WEST BENGAL, PIN- 743165
Ph : 033- 2581 0016 / 033- 6501 6001/2/3/4/5 / 033- 6012 8012/13
Fax : 033- 2581 0016 (EXT.)

Or you can e-mail us at profile@sparshhmatrimony.com with your matrimony ID and Password.
Your video clipping will beadded to your profile in a maximum of 48 hours in free of cost.
</p>

<p>
<b>How to delete video? </b>
<br /> 
Log in using your Matrimony ID/E-mail ID and Password.
Click on the Edit Profile section.
Click on the Edit Video link under Enhance My Profile heading.
Click on Delete Video link.
<p></p>
<center>
    <h4 style="color:#0066FF">Activation/deactivation</h4>
</center>
<p>
<b>What is full profile?</b>
<br /> 
It’s the view of your profile as others see it. To take a look at your full profile: Login using your Matrimony/e-mail ID and Password. Click My Profile link.
<p></p>

<p>
<b>What is view my profile? </b>
<br /> 
It is the view of your profile as others see it. To take a look at your full profile: Login using your Matrimony ID/E-mail ID and Password. Click Edit Profile link. In that page, click on View my profile link.
<p></p>

<p>
<b>What is edit profile? </b>
<br /> 
Edit profile is the section of the site where you can make changes and additions toy our profile.
To go to Edit Profile, login with your Matrimony ID/E-mail ID. Click on the Edit profile link in the top navigation bar in the My Home section.

<p></p>

<p>
<b>What are profile settings?</b>
<br /> 
Profile settings are that section of the site where you can change password, deactivate profile, delete profile, manage mail alerts, mobile alerts and contact filters.
To access profile settings, login with your Matrimony ID/E-mail ID & password
Click on the Edit Profile link in the top navigation of the My Home page.
In the Edit Profile page there is a section head called Profile Settings.

<p></p>

<p>
<b>How will I get alerts?</b>
<br /> 
You will receive alerts from us through e-mail and SMS. If you wish to unsubscribe to any of the alerts, please deselect the alert.
<p></p>

<p>
<b>What is mail alert?</b>
<br /> 
The alerts from us through e-mail are mail alerts. You will get two types of mail alerts - Daily Match Watch and weekly Photo Match Watch. Besides those you will also get products and feature promotions. In addition to the above mailers, you will receive e-mail notifications when ever a member sends you an Express Interest or a Personalized Message and also when a member accepts or declines your Express Interest or Personalized Message. The moment you delete your profile from SPARSHH matrimony you will stop receiving all alerts.
<p></p>

<p>
<b>What is mobile alert and when will I receive a mobile alert?</b>
<br /> 
Mobile alert is an SMS alert. You will receive an SMS alert when a member sends you a Personalized Message and when a member has received and accepted your Express Interest.
<p></p>

<p>
<b>How to Manage Mail alerts? </b>
<br /> 
Login using your Matrimony ID/E-mail ID and Password.
Click on the Edit Profile link in the top navigation of the My Home section.
In the Edit Profile page Click Manage Mail alerts link. You can select the mail alerts you wish to receive.

<p></p>


<p>
<b>Who can get mobile alerts? </b>
<br /> 
Both free and paid members can avail this service. This service is available only in India. 
<p></p>

<p>
<b>What is Match Watch? </b>
<br /> 
Match Watch is a list of the latest members who match your preference, mailed to your inbox of the e-mail ID that you provide in your profile. You can also view an archive of the Match Watch e-mails in case you have missed or deleted them accidentally.
<p></p>

<p>
<b>I am not receiving matches of my choice/preference in my Match Watch mailers. Can I change the results to my liking? </b>
<br /> 
Match Watch is prepared based on your partner preference. You can change your partner preference such that you receive profiles according to your choice.
<p></p>

<p>
<b>How can I view the Match Watch e-mails that I have missed? </b>
<br /> 
All your Match Watch e-mails will be stored in the Daily Match Watch Archive in the My Home section. You can select the date of the Match Watch e-mail you would like to view.
<p></p>

<p>
<b>I am not receiving Match Watch e-mails in my inbox. How can I subscribe/unsubscribe to my Match Watch e-mails? </b>
<br /> 
You can choose to receive Match Watch e-mails in your inbox by clicking on the Edit Profile section in the top navigation bar of the My Home.
In the Edit Profile page, click on the Manage Mail Alerts links under Profile Settings.
Choose the type of mail alerts you would like to receive.

<p></p>

<p>
<b>What is Photo Match Watch? </b>
<br /> 
These are Match Watch mailers with only the latest profiles having photos that match your preferences. If you do not add your photo in your profile you will not be listed in Photo Match Watch mailers sent to other members.
<p></p>

<p>
<b>What is Match Watch Archive? </b>
<br /> 
Match Watch Archive contains your Match Watch e-mails, which you have received in the last 15 days. So just in case you need a recap of your e-mails or you missed out on matching prospects, this feature will help you identify them.
<p></p>

<p>
<b>How do I read the message that I have received from a member on my mobile? </b>
<br /> 
You can read a recent message that you have received from a member by sending 'GET' to 55050.The message will be displayed on your mobile screen.
<p></p>

<p>
<b>Can I reply to a message from my mobile? </b>
<br />
Yes! You can reply to a message right from your mobile phone by sending 'REPLY Matrimony ID (Your Message)'. 
<p></p>

<p>
<b>How will I know that my reply has been sent to the member? </b>
<br />
You will receive an SMS to confirm that your reply has been sent to the member. 
<p></p>

<p>
<b>Will I be charged for availing of this service? </b>
<br /> 
You can register for Mobile Alerts absolutely free. However, you will be charged the price of one local SMS on every outgoing message by your mobile operator.
<p></p>

<p>
<b>What are privacy settings? </b>
<br /> 
Privacy settings help you decide who can contact you, or who can view your referees contact details if you've added Matrimony Reference.

To decide who can contact you, use Manage Contact Filters available in the Edit Profile page under Profile Settings.
Contacts from members who do not match your privacy settings will be stored in the "Filtered Messages or Filtered Interests" folder in My Home page under Match Summary.

To access Reference Privacy Settings, go to Edit Profile in the top navigation of My Home and click on the Edit Reference link.

<p></p>

<p>
<b>What is a filter? </b>
<br /> 
Log in using your Matrimony/e-mail ID and Password. Click My Profile link. Click Profile Settings link. With a filter you can choose by whom you want to be contacted. Set a broad preference so that you get good responses while eliminating non-relevant members from contacting you.
<p></p>

<p>
<b>What is change Password? </b>
<br /> 
If you would like to change your login password, you can use this option. To change your password, log in using your Matrimony ID/E-mail ID and existing Password.
Click on the Edit Profile link in the top navigation bar of My Home. Under Profile Settings in the Edit Profile page, click on Change Password link.
Enter existing password, new password and confirm password. Your Password must have a minimum of 4 characters and maximum 8 characters. It is better to choose an alphanumeric Password. E.g.: manik123

<p></p>


<p>
<b>What is profile stats? </b>
<br /> 
Profile stats displays all the references added to your profile.
<p></p>

<p>
<b>How to delete profile? </b>
<br /> 
Log in to your account. In the My Home page, click on the Edit Profile link.
In the Edit Profile section, under Profile Settings, click on the Delete Profile link to delete your profile.
You cannot restore or reactivate your profile once you delete it.

<p></p>

<p>
<b>How to deactivate profile? </b>
<br /> 
Login to your account. In the My Home page, click on the Edit Profile link.  In the Edit Profile section, under Profile Settings, click on the Deactivate Profile link to deactivate your profile.
This link is provided in case you wish to temporarily put your partner search on hold. On deactivation, your  profile will be hidden from our members and you will not be able to contact any member until you activate your profile.

<p></p>
<center>
    <h4 style="color:#0066FF">Modify Profile</h4>
</center>

<p>
<b>How do I modify my profile? </b>
<br /> 
Log in using your Matrimony /e-mail ID and Password. Click on Edit Profile link. Modify the profile content that is displayed.
<p></p>

<p>
<b>How long will it take for the modifications to reflect on my profile? </b>
<br /> 
The modifications you make go through a validation process before being added to your profile. It will take 24 hours for the changes to be effected in your profile.
<p></p>

<p>
<b>Are there any restrictions on modifications? </b>
<br />
All contents of your profile other than your gender can be modified as often as you wish to do so. 
<p></p>

<p>
<b>What is 'Change Profile Status'? </b>
<br /> 
Your profile status can either be set as 'Active' or 'Deactivate'. By default, the profile status is 'Active'. Setting the profile status to 'Deactivate' makes your profile invisible to others. But you will be able to login and contact other profiles. Any member can change the status of profile.
<p></p>

<p>
<b>Is it possible to restore the deleted profile? </b>
<br /> 
You cannot restore or reactivate your profile once it is deleted from our database.
<p></p>

<p>
<b>What are the DO's and DON'Ts while creating a matrimonial profile? </b>
<br /> 
Here are the Do's and Don'ts while creating your profile to give members the best portrayal of yourself.
Do's
While creating a matrimonial profile, give brief information about yourself in the profile description part. Try your best to touch upon various aspects of your life like:
Your personality (what kind of a person you are, your likes and dislikes).
Your educational and professional background including your achievements.
Your family (how many members, family values - conservative or modern).
Your career plans.
Your expectations from your soul mate.
Add a recent photograph to improve chances of getting responses.
Our repeated suggestion: Profiles with photos have 10 times better chances of getting proposals.
Don'ts
Please do not give a lengthy description. Try to keep your description short and complete and do not get into the minutest details.
Please do not try to display your contact details in your matrimonial profile, except in the space provided for contact details.
Do not include content that is vulgar or racist.
Also see our terms of use/service agreement for more details of what type of content is prohibited on http://www.bharatmatrimony.com
Not conforming to any of the above can lead to your profile being rejected.

<p></p>

<center>
    <h4 style="color:#0066FF">Login Details</h4>
</center>
<p>
<b>How do I log in? </b>
<br />
Log in from the Home page and enter your Matrimony ID or e-mail ID and password into the respective boxes at the top band and click Login to log into your account. 
<p></p>

<p>
<b>I'm already logged in, but I am getting a message 'You must login prior to using
the matrimonial services. What should I do?
 </b>
<br />
We use cookies to store login in formation. So, please check whether cookies are enabled in your browser. 
<p></p>

<p>
<b>What is Matrimony ID? </b>
<br /> 
A Matrimony ID is a unique combination of two alphabets (One alphabet will be “S” for sparshhmatrimony and other alphabet will be the first alphabet of your name and followed by a five – Six digit number (e.g. for any Mr. Rakesh Jain, the matrimony ID will be SR12345). To identify you uniquely, a Matrimony ID is assigned to you when you register with us. This Matrimony ID is to be referred in all correspondences with sparshhmatrimony.com.
<p></p>

<p>
<b>I forgot my Matrimony ID/Password. What should do?  </b>
<br /> 
You can retrieve your Matrimony ID/Password by clicking on Forgot Password link in home page and enter your E-mail ID. We will send you an e-mail with your 'Matrimony ID and 'Password' immediately. Your E-mail ID should be the one given in your profile.
<p></p>

<p>
<b>How do I change my Password? </b>
<br />
You cannot change your Password. To retrieve your Password click on Forget Password link. 
<p></p>

<p>
<b>Why is the message Invalid Matrimony ID/E-mail ID or Incorrect Password 
being displayed when I try to login?
 </b>
<br /> 
You could have received these messages due to any of the below reasons. Please ensure you enter the correct login details.
The Password you have entered might be wrong or you might be having the CAPS LOCK "On". Please check whether the Password is entered in the correct case (Upper or Lower).
Please ensure that there are no spaces in the Matrimony ID typed. For e.g., it should be SR123456 not SR 1234 56.
The E-mail ID you are using to login must be the same one with which you had registered on the website.

<p></p>

<p>
<b>Can I choose my own Matrimony ID? </b>
<br /> 
Every Matrimony ID is unique and is allocated by the system. You cannot choose your own Matrimony ID since it is system generated and cannot be changed under any circumstance.
<p></p>

<center>
    <h4 style="color:#0066FF">My Home</h4>
</center>

<p>
<b>What are Suitable Matches? </b>
<br /> 
This is the list of matches that we have found for you. You may like these profiles as they seem suitable as per your profile details.

Yet to be viewed –These are the suitable profiles for you that you have not yet viewed.

Viewed & not contacted –These are the suitable profiles that you have viewed but have not sent the member any communication.

<p></p>

<p>
<b>What are Matching Profiles? </b>
<br /> 
These are the profiles of members shortlisted as potential alliances based on your partner preference criteria.

Members looking for me –These are members whose partner preference criteria match your profile.

Mutual matches –These are members whose partner preference criteria match your profile and your partner preference criteria match their profile. This could well lead to finding the perfect match as you seem to be looking for each other.

<p></p>

<p>
<b>What are Personalized Messages? </b>
<br /> 
These are the e-mail messages that Paid Members can send to prospects expressing their interest for talks of an alliance.

Received
New Messages –These are the Personalized Messages that you have received from members but haven't read.

Awaiting my reply –These are the Personalized Messages from members that you have read but haven't replied to.

Replied messages –These are the Personalized Messages from members that you have replied to.

Messages I've declined –These are the Personalized Messages from members that you have declined.

Filtered messages –These are Personalized Messages from members who do not match your partner preference criteria. These members may not be the ideal partner you are looking for, hence these messages are automatically moved to a filtered inbox as you would like to know of all proposals made by members.

Sent
Replies received –These are Personalized Messages you received from members in reply to the messages you sent them.

Read by members –These are Personalized Messages that you have sent to members that have been read by them but haven't replied to yet.

Unread messages –These are Personalized Messages that you have sent to members that haven't been read by them yet.

Declined messages –These are Personalized Messages that you have sent to members that have been declined by them.

<p></p>

<p>
<b>What is Express Interest? </b>
<br /> 
Express Interest is the template messages that you can send to members whose profiles you like.

Received
New Interests –These are the Express Interest messages that you have received from members but haven't read or replied to.

Interests accepted –These are the Express Interest messages from members that you have accepted.

Interests declined –These are the Express Interest messages from members that you have declined.

Filtered messages –These are Express Interests messages from members who do not match your partner preference criteria. These members may not be the ideal partner you are looking for; hence these messages are automatically moved to a filtered inbox as you would like to know of all proposals made by members.

Sent
Accepted by members –These are Express Interests sent by you that members have accepted.

Reply pending from members –These are Express Interests you have sent to members that haven't been replied to yet.

Declined by members –These are Express Interests you have sent to members that have been declined.

<p></p>

<p>
<b>What are Voice Messages? </b>
<br /> 
Voice messages are the messages where in you can add the human touch to express your interest in member’s profiles. To leave a voice message call +91 44 39115071and follow the instructions on the IVR.

Received
New voice message –These are Voice messages that you have received from members but haven't listened to.

Listened & not replied –These are the Voice messages from members that you have listened to but haven't replied.

Listened & replied –These are the Voice messages from members that you have listened to and replied.

Declined voice message –These are the Voice messages from members that you have declined.

Sent
Replies received –These are Voice messages you received from members in reply to the Voice messages you sent them.

Listened & not replied –These are Voice messages that you have sent to members that they have been listened to but haven't replied yet.

Not yet listened –These are Voice messages that you have sent to members that haven't been listened to.

Declined voice messages –These are Voice messages that you have sent to members that have been declined.

<p></p>
<center>
    <h4 style="color:#0066FF">Search Profiles</h4>
</center>
<p>
<br /> There are various types of search by which you can searches for your life partner. Please see below to make best use of our search options.
<p></p>

<p>
<b>What is Quick Search? </b>
<br /> 
Quick search enables search of profiles through gender, domain, caste, age, and profiles with photo.
<p></p>

<p>
<b>What is Regular Search? </b>
<br />
This is a general search based on age, height, marital status, regional sites, religion, caste/division, sub caste, citizenship, country living in, education and 'show results posted on'. Log in using your Matrimony/e-mail ID and Password. Select based on options provided. 
<p></p>

<p>
<b>What is Advanced Search? </b>
<br />
This is a detailed search and will give you better results. Options on mother tongue, physical status, location, horoscope and lifestyle besides age, height, marital status, regional sites, religion, caste/division, sub caste, citizenship, country living in, education and 'show results posted on' will be displayed. You can save up to three saved searches that will be displayed on the right hand corner. Login using your Matrimony/e-mail ID and Password. Click on Advanced Search link. 
<p></p>

<p>
<b>Search by Member ID </b>
<br /> 
Enter the Matrimony ID of the member whose profile you would like to see. Click on View Profile link.
<p></p>

<p>
<b>Search by Members Online </b>
<br /> 
Search for members based on your preference and those who are currently online.
<p></p>

<p>
<b>Keywords Search </b>
<br /> 
This search will get results based on keywords found in the profile description of members.
Example: Software Engineer, Brahmin, Iyer, Loves pets, Cricket...

<p></p>

<p>
<b>Can I save my Search criteria so that I don't have to set it every time? </b>
<br />
Yes! You can save up to 3 search criteria that can be used later. You can edit the search criteria and the saved search criteria can be deleted. 
<p></p>

<p>
<b>Search results </b>
<br /> 
When your search options are not broad enough then your search results will say so. To get better search results reset the criteria in your profile by: Click on Search link. Reset the basic search criteria. Click on Save Search link.
<p></p>

<p>
<b>What is partner preference? </b>
<br /> 
Partner Preference is a feature that helps you define your ideal spouse and set your suitability criteria. You will be intimated by e-mail everyday about new profiles matching your criteria. With this feature you would receive information about members suiting your expectations regularly.
<p></p>

<p>
<b>How do I view a particular profile? </b>
<br /> 
You can view a particular profile by entering the Member ID in the 'By Member ID' option.
<p></p>

<p>
<b>I get the error "No matching records found" while searching for the profiles. 
Why is that so?
 </b>
<br /> 
Please check your search criteria when you receive this message. If you are searching for a particular sub caste, try rephrasing your spellings. We suggest you to use partial names or try all the possible spellings in the sub caste field, for example: Brahmin, Brahmin, Iyer etc. to get profiles of a particular sub caste. 
If you have used date options in the search, please check the dates entered. For Example, in the "When Posted" option ensure that you have not entered a future date by mistake.

<p></p>

<center>
    <h4 style="color:#0066FF">Short-list Profiles</h4>
</center>
<p>
<b>How do I short-list profiles? </b>
<br /> 
Log in using your 'Matrimony/e-mail ID’ and 'Password'.
Select "Search" option; enter the ID of the member in 'By Member Matrimony ID' option.
Select the "Short-list" option, add comments and click the "Submit" button.
The profile will be added to your list of short-listed profiles.
You can add a comment while short-listing the profiles. The profiles will be displayed with an image along with your comments during the search and view operations.

<p></p>

<p>
<b>How do I view/delete short-listed profiles? </b>
<br /> 
Log in using your Matrimony ID/E-mail ID and Password.
In the My Home page, under Lists, click on the members I have short-listed link to view the profiles you have short-listed.

To delete profiles from your shortlist, select the profile or profiles you'd like to delete and click on the Delete link.

<p></p>

<p>
<b>How do I ignore/forward/print profiles? </b>
<br />
Log in using your 'Matrimony/e-mail ID' and 'Password.'
Go to My Matches or do a search.
Opt for viewing full profile.
You will find options to ignore/forward/print profile.
 
<p></p>
<center>
    <h4 style="color:#0066FF">Block Profiles</h4>
</center>
<p>
<b>How do I block profiles? </b>
<br /> 
Log in using your 'Matrimony/e-mail ID' and 'Password.'
Select "Search" option; enter the ID of the member in 'By Member Matrimony ID' option.
You will find options to block profiles.
The profiles will be added to your 'Block List'.
This means these members will not be able to contact you or express interest in you; likewise even you cannot contact them.
This feature is available to Paid Members only.

<p></p>

<p>
<b>How do I view/edit Blocked profiles? </b>
<br /> 
Only paid members can use the Block Profile feature.
To view the profiles you have blocked, login to your account, in the My Home page, under Lists, click on the members I have blocked link.

To remove profiles from your block list, select the profile and click on the Unblock link.

<p></p>
<center>
    <h4 style="color:#0066FF">Ways to Contact</h4>
</center>
<center>
    <h4 style="color:#0066FF">Express Interest</h4>
</center>
<p>
<b>What is Express Interest? </b>
<br />
'Express Interest' is an exclusive feature that enables you to send automated messages to members absolutely FREE and let them know that you are interested in them. 
<p></p>


<p>
<b>Is there a limit on the number of Express Interest messages I can send in a day? </b>
<br /> 
You can send unlimited 'Express Interest' messages to any one you choose until you receive five accepted interests. However, you can accept any number of 'Express Interest' messages sent to you by other members.
<p></p>


<p>
<b>How will I know if a member has accepted/declined my interest? </b>
<br /> 
You will be notified via e-mail when a member accepts/declines your interest. You can also login to your account and select the 'Interests Sent' option under Express Interest to knowhow many members have accepted/declined your interest.
<p></p>


<p>
<b>Will my contact information be revealed to the member I have expressed my interest in? </b>
<br /> 
No. Only an automated message expressing your interest will be sent to the member without revealing your contact information.
<p></p>
<center>
    <h4 style="color:#0066FF">Personalized Messages</h4>
</center>

<p>
<b>How do I send personalized messages to a member who has accepted my interest? </b>
<br /> 
You can send personalized messages to a member who has accepted your interest by upgrading your membership to a Classic Super/Classic Plus/Classic membership.
Click here to upgrade your profile to Sparshh Combo / Premium Super / Premium Plus / Premium membership plan now.

<p></p>

<center>
    <h4 style="color:#0066FF">Chat</h4>
</center>
<p>
<b>How do I chat? </b>
<br /> 
You can chat with other members online only if you are a paid member. Then after log in you can use the "Who's Online" search form to get the members online matching your search criteria. You can go to the member's profile and click on "Chat" link to start chatting.
<p></p>


<p>
<b>Can a free member initiate chat? </b>
<br /> 
No. Only a paid membership enables a member to initiate chat online.
<p></p>


<p>
<b>How do I know who is online? </b>
<br /> 
Click on the Search link in the top navigation bar. Choose Members Online. You can search from the list of members online and chat with them if you are a paid member.
Also while using other search tools, in the search results page, there will be an indication to CHAT with the member if the member is online. You can initiate chat if you are a paid member.

<p></p>
<center>
    <h4 style="color:#0066FF">Phone Numbers</h4>
</center>

<p>
<b>Phone Verification </b>
<br /> 
Sparshh displays only verified phone numbers. So unless you verify your phone number members will not be able to contact you. When your phone number is validated and displayed on the site it is a verified phone number. The verification process is done free of cost. Only paid members can view your phone number and you will also get to know the members who have viewed your number.
<p></p>


<p>
<b>How to hide phone number? </b>
<br /> 
Log in to your account. In the My Home page, click on Edit Profile section.
Under Edit Contact Details, click on edit phone number link.
In the phone verification page, click on Hide Phone Number link to hide your phone number. 

<p></p>


<p>
<b>Who viewed my phone number? </b>
<br /> 
Log in to your account. In the My Home page, under Views, click on the link "members who viewed my phone number."
<p></p>

<center>
    <h4 style="color:#0066FF">Offline Memberships</h4>
</center>
<center>
    <h4 style="color:#0066FF">Regarding SPARSHH Privilege and Elite Packages</h4>
</center>
<p>
<b>Within how much time can I receive the stipulated guaranteed responses?  </b>
<br /> 
The first set of proposals matching the persons details are dispatched within ten days of obtaining membership. The process of cross-profiling and matching is an on-going activity. Therefore, as and when the details of any two registered members fulfill the requirements of each other, the details are sent correspondingly. 
<p></p>


<p>
<b>Can we specify the values like honesty, sincerity, devotion, helping, caring etc. as a match making criteria in the person we are looking for? </b>
<br /> 
The values mentioned are subjective. The perception, of each individual towards these values differs. It depends upon his/her mental make up, educational, family and social upbringing and a number of other factors. Keeping all these factors in mind our membership forms have a large number of options so that each registered member can make an appropriate selection.
<p></p>


<p>
<b>What is the validity of the SPARSHH ELITE registration charges?  </b>
<br /> 
The registration charges for the membership are valid for the entire life term of the person. However for the purpose of marriage, the charges are effective till the stipulated number of options have been made to the member or till the time the person gets married. We also require members to confirm after one year that they are still unmarried so that the services are available to them.
<p></p>


<p>
<b>What is the validity of the registration charges?  </b>
<br /> 
The registration charges for the Elite membership are valid for the entire life term of the person. However for the purpose of marriage, the charges are effective till the stipulated number of options have been made to the member or till the time the person gets married. We also require members to confirm after one year that they are still unmarried so that the services are available to them. For Privilege it is for 3 month to 9 months respectively.
<p></p>


<p>
<b>Do you send original photographs along with the responses?  </b>
<br /> 
We do not send photograph of the member along with each proposal. Members are however will be eligible to see the photographs in case selected matches only. The photographs provided by members along with registration forms are scanned and loaded in the computer together with personal details. 


<p></p>


<p>
<b>Do you have any post marriage charges? </b>
<br /> 
Unlike some other matrimonial we do not have any post-marriage charges. The registration charges are taken once only that is before initiating of the SPARSHH Privilege and Elite membership.
<p></p>


<p>
<b>Do you cater to people of specific religions? </b>
<br /> 
No, SPARSHH.COM is a professional organization. It caters to the requirements of all religions and castes. Every person is treated with same care and individual attention is given to each registered member. 
<p></p>


<p>
<b>What is the source of your database? </b>
<br /> 
We have a large number of Online databases. Apart from that there are many print media & Electronic media sources, different campaigns and many more. Mouth word is also been a big attention puller. The information from all these sources are populated in a source pool and that is where our database strength is hidden. 
<p></p>


<p>
<b>How do you verify the authenticity of the facts furnished by members? </b>
<br /> 
The company takes maximum care to ensure that the facts provided by members are authentic. To begin with, the matrimonial application is accepted with a photograph, a copy of the date of birth certificate and a proof of identity. Further, a number of questions are asked in the application form like all the addresses, the details of the parents, brothers, sisters, educational institutions, employer's details, etc. So a number of leads could be developed from these details. In all cases, however, we insist that since marriage is a sensitive matter, members should verify the authenticity of the facts before going in for any final arrangements.
<p></p>


<p>
<b>Can we make the payment in part or after the marriage get fixed? </b>
<br /> 
We only accept the payment in advance as it also indicates a person’s intension to get seriously involved in getting married. The service we provide is a very special one and one can only realize it after achieving the blithering experience. So, we only acknowledge the payment before we enter in to a never ending professional relationship.
<p></p>


<p>
<b>Can the process be started with an amount and we increase the amount after we are satisfied with the service? </b>
<br /> 
For the convenience of its clients, the company has divided different packages for members to choose from. To begin with, a member can opt for any of package. They can upgrade to a higher package once they are satisfied with our services. The initial amount paid would be adjusted at the time of upgrading. 
<p></p>


<p>
<b>Can the contact numbers of persons advertised be told to people calling against the advertisement? </b>
<br /> 
The company maintains high level of confidentiality of its members and can not divulge the contact details without the consent of its members. The advertisements released are to offer its clients a wider choice and if a person is interested, he / she can leave the details with the company and the same shall be passed on to the concerned person. If the member is interested, he / she shall either directly contact the caller or would inform the company about the interest in the proposals so that necessary action could be initiated for further development. 
<p></p>


<p>
<b>What is the guarantee that I will keep getting services and will not be forgotten? </b>
<br /> 
As we maintain professionalism the agreement what would be prepared during your membership with us will be kept as per the rules and regulation. Therefore, it will never be forgotten before the expiry date of the membership duration. However we will continue to celebrate our each member in different occasions to build a long term healthy relationship with SPARSHH.
<p></p>

<center>
    <h4 style="color:#0066FF">Online Memberships</h4>
</center>
<p>
<b>I'm not able to make the online payment with my card even though it's a valid one. Why? </b>
<br /> 
Make sure you are entering the correct credit/debit/net-banking card number and expiry date. If you continue having problems, please call your credit/debit/net-banking issuing bank and make sure your card has sufficient funds.
<p></p>


<p>
<b>Is online payment secure? </b>
<br /> 
Yes! It is secure to make online payments. Our payment gateway provider adopts the SSL (Secured Socket Layer) technology, an internationally proven widely accepted technology. Our payment gateway service providers ensure that your credit card details are kept secure while transacting on the net, preventing unauthorized access.
<p></p>


<p>
<b>What is easy payment or doorstep payment? </b>
<br /> 
We now provide quality service right at your doorstep, saving your time, money and energy. Whether you want to add a profile into our Sparshh Combo / Premium Super / Premium Plus / Premium membership plan or upgrade your existing 'free' profile to Sparshh Combo / Premium Super / Premium Plus / Premium membership plan, we will visit you at your home or office and collect the payment. This service is currently available at KOLKATA and SUBARBAN. There is no extra charge for using this service.
<p></p>


<p>
<b>I have made an easy payment request. How long will it take for my request to be processed? </b>
<br /> 
Most easy payment requests are cleared within 48 hours of the requests. Please contact our branch offices if your request is not cleared within 48 hours or contact info@sparshhmatrimony.com with your easy payment request number for us to process your request immediately.
<p></p>


<p>
<b>How do I make the payment through post/courier? </b>
<br /> 
You can send a cheque/DD/MO along with your Matrimony ID to any of our addresses. Please send cheques in the local currency of the office to which it is sent. Please see the contact details.
<p></p>


<p>
<b>How long will it take to upgrade my profile if I have made the payment by Cheque/DD through post or courier? </b>
<br /> 
We will upgrade your profile once we receive your payment. If you have made the payment and your profile is still not upgraded, kindly contact our  office or send an e-mail to info@sparshhmatrimony.com along with your payment details.
<p></p>
<center>
    <h4 style="color:#0066FF">Pay at Banks</h4>
</center>
<p>
<b>HDFC Bank </b>
<br /> 
You can now also make payments through HDFC Bank. Pay in favour of SPARSHH.COM through: HDFC Bank A/c no – 0014 763 0000 434.
<p></p>
<center>
    <h4 style="color:#0066FF">Miscellaneous</h4>
</center>
<p>
<b>Can I contact the Referee? </b>
<br /> 
Yes you can contact the Referee if you are a Paid member, since Referee details are visible only to them. E-mail ID will not be displayed but members can send e-mail to the referee through our system.
<p></p>


<p>
<b>Quick links </b>
<br /> 
Quick links is a feature that helps you to find the various services in the website. Select based on options provided.
<p></p>


<p>
<b>How do I contact customer support? </b>
<br /> 
Log in to www.sparshhmatrimony.com
Click on Contact Us tab.
You can get your queries answered instantly through a chat session with our live helpdesk executives.
You can also contact our any telephone numbers mentioned in the web site.
Click Contact us link to find out about our offices and other contact details.

<p></p>


<p>
<b>Do you provide any dating / friendship services? </b>
<br /> 
If you are looking for dating/friendship other than matrimony, you are probably looking into the wrong site! www.sparshhmatrimony.com  provides only matrimony-related services. Our site only invites people who are looking forward to a serious commitment of getting married.
<p></p>

<center>
    <h4 style="color:#0066FF">Profile Highlighter</h4>
</center>
<p>
<b>What is Profile Highlighter? </b>
<br /> 
Profile Highlighter is a feature you can use to give your profile better visibility.
<p></p>


<p>
<b>How does Profile Highlighter improve the visibility of my profile? </b>
<br /> 
Profile Highlighter features your profile on the 'My Home' page of prospects matching you and also features your profile at the top of search results of members looking for someone like you.
<p></p>

<center>
    <h4 style="color:#0066FF">Matrimony Booster</h4>
</center>
<p>
<b>What is Matrimony Booster? </b>
<br /> 
Matrimony Booster is a feature that takes your profile right into the e-mail inbox of members with a follow up SMS to ensure your profile has not gone unnoticed.
<p></p>


<p>
<b>How many members can I send my Matrimony Booster mailer to? </b>
<br /> 
You can send the mailer to up to 250 members.
<p></p>


<p>
<b>What details of mine will be sent in the Matrimony Booster Mailer? </b>
<br /> 
A mailer containing your profile details and contact details will be sent to members. You can choose not to send your contact details.
<p></p>


<p>
<b>How are the members chosen to send my Matrimony Booster Mailer to? </b>
<br /> 
You can fill in the Prospects' Criteria form to select the members you want to send your mailer to.
<p></p>


<p>
<b>What if my result for Prospects' Criteria exceeds 250 members? </b>
<br /> 
If the results for Prospects’ Criteria exceed 250 members, we will select 250 members to send your profile to. You can also modify the Prospects' Criteria to get more accurate results.
<p></p>


<p>
<b>What if my result for Prospects' Criteria is less than 250 members? </b>
<br /> 
You can choose to send your profile to the number of members on the results for your Prospects' Criteria or broaden the Prospects' Criteria to get more number of matching profiles.
<p></p>

<center>
    <h4 style="color:#0066FF">Astro Match</h4>
</center>
<p>
<b>What is Astro Match? </b>
<br /> 
Astro Match is a feature that gives you real time horoscope matching results instantly.
<p></p>


<p>
<b>What is the use of Astro Match? </b>
<br /> 
AS it is a tradition in India to match horoscopes, this feature enables you to check your compatibility with members you like.
<p></p>


<p>
<b>How many Astro Matches can I do at a time? </b>
<br /> 
You can do as many Astro Matches at a time depending on the number of matches available to your profile at that time.
<p></p>


<p>
<b>How is the compatibility checked with Astro Match? </b>
<br /> 
Partner compatibility is checked based on Birth Stars, Papasamya, Kunjadosham and Dasasandhi.
<p></p>
 </div>
</div>
</asp:Content>

