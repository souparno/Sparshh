<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<%@ Import Namespace="System.Data"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Home.aspx" class="active" >Home</a></li>
           <li  class="dropdown">
              <a href="AboutUs.aspx">About Us</a>
                 <ul class="dropdown-menu">
                  <li><a href="AboutUs.aspx">About Us</a></li>
                  <li><a href="Mission_n_Vission.aspx">Mission & Vission</a></li>
                  <li><a href="Process.aspx">Process</a></li>
                 </ul>
           </li>
           <li><a href="Packages.aspx">Packages</a></li>
           <li><a href="Clients_n_Delights.aspx">Client Delights</a></li>
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


<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">


 <div class="row size-4">
     <div class="light-box column size-5" id="TnC" style="top:20px;padding-right:0px;">
      <div style="height:500px;overflow:auto;">
      	<center><b>Terms and Conditions governing usage of SharatMatrimony sites</b><br/><b>[Applicable for All Services]</b></center>

					<div class="boldtxt paddt10">DEAR USER:</div>
					<p class="padd510 txt-justify">Welcome to SharatMatrimony (herein referred as "SM").</p>
					<p class="padd510 txt-justify">SM and its affiliates provide their services to you subject to the following terms and conditions. On your visit or signing up at SM, you consciously accept the terms and conditions as set out hereinbelow. In addition, when you use or visit any current or future SM service or any business affiliated with SM, whether or not included in the SM Web site, you will also be subject to the guidelines and conditions applicable to such service or business. Please read the various services provided by SM before making any payment in respect of any service.</p>

					<p class="padd510 txt-justify">The Users availing services from SM shall be deemed to have read, understood and expressly accepted and agreed to the terms and conditions hereof and this agreement shall govern the relationship between you and SM and all transactions or services by, with or in connection with SM for all purposes, and shall be unconditionally binding between the parties without any reservation.  All rights, privileges, obligations and liabilities of you and/or SM with respect to any transactions or services by, with or in connection with SM for all purposes shall be governed by this agreement.  The terms and conditions may be changed and/or altered by SM from time to time at its sole discretion.</p>
					
					<div class="boldtxt">1. Criteria</div>
					<p class="padd510 txt-justify">SM shall act on the basis of the information that may be suSMitted by you, believing the same to be true and accurate even if the information is provided during the registration by your family, friends, relatives on your behalf under your express consent . SM is under no obligation to verify the accuracy or genuineness of the information suSMitted by you.</p>

					<div class="paddl10">
						<p class="sq-arrow">The minimum age for registering in SM is 18 years for women and 21 years for men and the maximum age limit is 70 years.</p>
						<p class="sq-arrow">You represent and warrant that you have the right, authority and legal capability to enter into this Agreement and that you are neither prohibited nor disabled by any law in force from entering into a contract.</p>
						<p class="sq-arrow">You have gone through the Terms and Conditions and agree to be bound by them.</p>
					</div>

					<p class="padd510 txt-justify">If at any time SM, in its sole discretion, is of the opinion or has any reason to believe that You are not eligible to become a member or that you have made any misrepresentation about your eligibility, SM hereby reserves the right to forthwith terminate your membership and/or your right to use the services of SM without any refund of any monies paid to SM.</p>

					<div class="boldtxt">2. Invitation</div>
					<p class="padd510 txt-justify">2. 1. You hereby expressly solicit and invite SM and/or its authorized personnel to communicate to you through any telecom resources in the registered number provided by you to explain, explicate and clarify the various services provided by SM and to assist, aid or support you in availing the said services of SM.</p>

					<p class="padd510 txt-justify">2. 2. If at any time, you wish to discontinue receiving the communications (including, but not limited to emails, sms and phone calls) from SM, you may by  email to <a href="mailto:helpdesk@SharatMatrimony.com">helpdesk@SharatMatrimony.com</a> to indicate the same to SM and/or its authorized personnel regarding such discontinuance and You hereby agree that, unless expressly communicated to You about discontinuing communications from SM to SM and/or its authorized personnel, it will be deemed to be that you want to continue and solicit and invite all such or other communications from SM.</p>

					<p class="padd510 txt-justify">2. 3. You are representing that you or the mobile number suSMitted by you is not registered with the Do Not Disturb / National Customer Preference Register and/or you have already changed your registration suitably.</p>

					<p class="padd510 txt-justify">2. 4. Further and in any event, you do hereby also unconditionally agree and undertake that this invitation and solicitation shall supersede any preferences set by you with or registration done with the Do Not Disturb ("DND Register")/ National Customer Preference Register ("NCPR"). Without prejudice to the aforesaid and in any event, by expressly inviting and soliciting the services from SM, you also unconditionally agree that your rights under the Telecom Commercial Communications Customer Preference Regulations, 2010 or any subsequent amendments thereto or under NCPR, are kept in abeyance or remain extinguished till you expressly communicate for discontinuation of relationship.</p>

					<p class="padd510 txt-justify">2. 5. You also unconditionally agree to indemnify SM against all losses, damages, penalties, costs or consequences whether direct or indirect, that may arise out of any breach or violation of the aforesaid representation, commitment and undertaking.</p>

					<p class="padd510 txt-justify">2. 6. When you visit SM or send e-mails to us, you are communicating with us electronically. You consent to receive communications from us electronically. We will communicate with you by e-mail or by posting notices on this site. You agree that all agreements, notices, disclosures and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.</p>

					<div class="boldtxt">3. Privacy Policy</div>
					<p class="padd510 txt-justify">Please read and comprehend our Privacy Policy, which also governs your visit to SM, to understand our practices. Members agree that their profile(s) may be crawled and indexed by search engines, where SM and its network does not have any control over the search engines behavior and SM shall not be responsible for such activities of other search engines.</p>

					<p class="padd510 txt-justify">SM is not responsible for any errors, omissions or representations on any of its pages or on any links or on any of the linked website pages. SM does not endorse any advertiser on its web pages in any manner and you are requested to verify the accuracy of all information on your own before undertaking any reliance on such information. The linked sites are not under the control of SM and SM is not responsible for the contents of any linked site or any link contained in a linked site, or any changes or updates to such sites.</p>

					<p class="padd510 txt-justify">SM has the right to change its features and services from time to time based on members comments or as a result of a change of policy in our company.</p>

					<div class="boldtxt">4. Copyright</div>
					<p class="padd510 txt-justify">All contents included on this site, such as text, graphics, logos, button icons, images, audio clips, digital downloads, data compilations, and software, is the property of SM or its content suppliers and protected by Indian and international copyright laws. The compilation of all contents on this site is the exclusive property of SM and protected by Indian and international copyright laws. All software used on this site is the property of SM or its software suppliers and protected by Indian and international copyright laws.</p>

					<div class="boldtxt">5. Trademark</div>
					<p class="padd510 txt-justify">SM is the owner and authorized user of the following domain names:</p>
					<div class="paddl10">
						<p class="sq-arrow">www.SharatMatrimony.com</p>
						<p class="sq-arrow">www.assamesematrimony.com</p>
						<p class="sq-arrow">www.bengalimatrimony.com</p>
						<p class="sq-arrow">www.gujaratimatrimony.com</p>
						<p class="sq-arrow">www.hindimatrimony.com</p>
						<p class="sq-arrow">www.kannadamatrimony.com</p>
						<p class="sq-arrow">www.keralamatrimony.com</p>
						<p class="sq-arrow">www.marathimatrimony.com</p>
						<p class="sq-arrow">www.marwadimatrimony.com</p>
						<p class="sq-arrow">www.oriyamatrimony.com</p>
						<p class="sq-arrow">www.parsimatrimony.com</p>
						<p class="sq-arrow">www.punjabimatrimony.com</p>
						<p class="sq-arrow">www.sindhimatrimony.com</p>
						<p class="sq-arrow">www.tamilmatrimony.com</p>
						<p class="sq-arrow">www.telugumatrimony.com</p>
						<p class="sq-arrow">www.urdumatrimony.com</p>
					</div>

					<p class="padd510 txt-justify">And other marks indicated on our site are registered trademarks of SM, or its subsidiaries, in the United States and other countries. Other SM graphics, logos, page headers, button icons, scripts, and service names are trademarks or trade address of SM or its subsidiaries. SM's trademarks and trade address may not be used in connection with any product or service that is not SM, in any manner that is likely to cause confusion among customers or in any manner that disparages or discredits SM. All other trademarks not owned by SM or its subsidiaries that appear on this site are the property of their respective owners, who may or may not be affiliated with, connected to, or sponsored by SM or its subsidiaries.</p>

					<div class="boldtxt">6. License and Site Access</div>
					<p class="padd510 txt-justify">SM grants you a limited license to access and make personal use of this site and not to download (other than page caching) or modify it, or any portion of it, except with express written consent of SM. This license does not include any resale or commercial use of this site or its contents; any collection and use of any product listings, descriptions, or prices; any derivative use of this site or its contents; any downloading or copying of account information for the benefit of another merchant; or any use of data mining, robots, or similar data gathering and extraction tools. This site or any portion of this site may not be reproduced, duplicated, copied, sold, resold, visited, or otherwise exploited for any commercial purpose without express written consent of SM. You may not frame or utilize framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of SM and our affiliates without express written consent. You may not use any Meta tags or any other "hidden text" utilizing SM name or trademarks without the express written consent of SM. Any unauthorized use terminates the permission or license granted by SM. You may not use any SM logo or other proprietary graphic or trademark as part of the link without express written permission. By registering your profile through any of our domains [Listed in the Annexure], you explicitly authorize SM to automatically copy your profiles from SM domain to its Community Bases Matrimonial Sites based on member information relevance like caste, sub caste, religion, age, marital status etc.</p>

					<div class="boldtxt">7. Your Account</div>
					<p class="padd510 txt-justify">If you use or register in this site, you are responsible for maintaining the confidentiality of your account and password and for restricting access to your computer, and you agree to accept responsibility for all activities that occur under your account or password. You also hereby expressly agree that the information provided by you is available to the other users of SM also and that SM neither has any control nor any responsibility or accountability if information is misused, exploited or abused by any third party. SM and its affiliates reserve the right to refuse service, terminate accounts, remove or edit content, or cancel subscription at their sole discretion.</p>

					<p class="padd510 txt-justify">You cannot engage in advertising to, or solicitation of, other members to buy or sell any products or services through SM. You will not transmit any chain letters or junk email to other members. You understand and agree that SM cannot monitor the conduct of its members off SM Site, it is also a violation of these rules to use any information obtained from SM in order to harass, abuse, or harm another person, or in order to contact, advertise to, solicit, or sell to any member without the prior explicit consent of the member or SM.</p>

					<p class="padd510 txt-justify">The Partner Preference should be set by every member. In case the member has not set the Preference or has not set the Preference correctly, then SM shall set the Partner Preference based on his/her profile information where member can also edit the same at any point of time.</p>

					<div class="boldtxt">8. Membership and Money back Guarantee</div>
					<p class="padd510 txt-justify">By registering your profile through any of our domains [Listed in the Annexure] or by the remittance of fees you become a member of SM.</p>

					<p class="padd510 txt-justify">SM offers a 100% refund if members do not get any response within 30 days. To be eligible for the refund, members should fulfill the following:</p>

					<div class="paddl10">
						<p class="sq-arrow">Upload atleast one photo.</p>
						<p class="sq-arrow">Contact a minimum of 10 members.</p>
					</div>

					<p class="padd510 txt-justify">Inspite of fulfilling these requirements,</p>

					<div class="paddl10">
						<p class="sq-arrow">If members do not get a reply to their Personalised Messages.</p>
						<p class="sq-arrow">If members are not contacted by other members.</p>
						<p class="sq-arrow">If members do not view/take any verified contact numbers.</p>
						<p class="sq-arrow">If others don't view/take your contact number.</p>
					</div>

					<p class="padd510 txt-justify">Moneyback guarantee is available only for 3 , 6 &amp; 9 months Classic , Classic Advantage and Classic Premium Memberships.</p>

					<p class="padd510 txt-justify"><b>Membership is not automatic:</b> The right of admission vests with SM. You become a member upon due acceptance of the Profile/Payment by SM. Membership and rights of admission is reserved solely for</p>

					<div class="paddl10">
						<p class="sq-arrow">Indian Nationals &amp; Citizens.</p>
						<p class="sq-arrow">Persons of Indian Origin (PIO).</p>
						<p class="sq-arrow">Non Resident Indians (NRI).</p>
						<p class="sq-arrow">Persons of Indian Descent or Indian Heritage.</p>
					</div>

					<p class="padd510 txt-justify"><b>Length of Membership:</b> You continue to be a member of SM till:</p>
					<div class="paddl10">
						<p class="sq-arrow">SM discharges its obligations to you by rendering its services to you; or SM or yourself terminate the membership arrangement.</p>
						<p class="sq-arrow"><b>Paid Memberships:</b> Validity of your paid membership is based on days (90 , 180 or 270) and not based on months (3 , 6 or 9).</p>
					</div>

					<p class="padd510 txt-justify"><b>Expiry of Membership</b> - Once your membership with us expires, you will not be able to access your personalized messages sent, and mobile numbers viewed by you. We request you to save all your contacts you had contacted already and also upgrade your membership with us to enjoy access to these features.</p>

					<p class="padd510 txt-justify"><b>Privacy of Membership:</b> Your Membership is only for personal use. It is not to be assigned, transferred or licensed so as to be used by any other person/entity, without the express written consent of SM.</p>

					<p class="padd510 txt-justify">Members are advised to make appropriate/thorough enquiries before acting upon any matrimonial advertisement. SM does not provide guarantee for or assurance of or subscribe to the claims and representations made by advertisers regarding particulars of status, age, income of other members. SM also does not vouch for the contents of the Voice Messages exchanged between members.</p>

					<p class="padd510 txt-justify">SM reserves the right but is not obligated, to place Matrimonial Classifieds derived from your SM profile in newspapers, television or any other media at the sole discretion of SM. Members are advised to make appropriate/thorough enquiries before acting upon any response to these matrimonial advertisements. SM does not provide guarantee for or assurance of or subscribe to the claims and representations made by respondants regarding any particulars including but not limited to status, age, income.</p>

					<div class="boldtxt paddl10">Auto Renewal - Only for payments made other than Indian Currency</div>
					<p class="padd510 txt-justify">In order to ensure that paid members who have made online payment in currencies other than Indian, have uninterrupted access to SM services, their membership will be automatically renewed on the day of their membership's expiry.</p>
					
					<p class="padd510 txt-justify">Members who have not logged in to their SM account in the last 7 days before the expiry of their membership, will be intimated a week in advance, prior to auto renewal and on the day of auto-renewal, an e-mail intimation will be sent to the members about the auto renewal process. This mail will also have an option to turn off the auto renewal process. The membership will automatically be renewed by charging the membership fee to the credit card, which was used to make the initial payment. </p>

					<p class="txt-justify" style="padding:5px 20px 10px 10px">For members who have logged in within 7 days before expiry of their membership, the e-mail intimation about auto renewal of membership will not be sent and their membership will be automatically renewed.</p>

					<div class="boldtxt">9. Online Conduct</div>
					<p class="padd510 txt-justify">You are responsible for the content and information [including profile and photograph] you post or transmit through SM's services. You will not post or transmit any content or information [in whatever form they may be contained] that is defamatory, blasphemous, abusive, obscene, sexually oriented, profane, intimidating, illegal or in violation of the rights of any person, including intellectual property rights. No content or information shall contain details or particulars of any of SM's competitors, including their contact details. You will not use either your online or offline membership as a platform for any kind of promotional campaign, solicitation, advertising or dealing in any products or services or transmit any chain letters or junk mails.</p>

					<p class="padd510 txt-justify"><b>Extraneous contents:</b> SM hereby alerts and warns its members of the possibility of unauthorized posting of contents by any person including members and unauthorized users and advises discretion in access since such content, information or representation may not be suitable to you including being offensive. SM will not in any way be responsible for such content, information or representations. SM is also not responsible for alterations, modifications, deletion, reproduction, sale, transmission or any such misuse of data and content in the public domain by any user.</p>

					<p class="padd510 txt-justify">There is a limit to the number of profiles you are allowed to contact each day. Also, you cannot contact more than 3000 profiles in a period of 3 months.</p>

					<p class="padd510 txt-justify">Mobile number verification is mandatory to contact other members. Effective 20th  November 2012, SharatMatrimony has become the Only Matrimony Site in the World with 100% Verified Mobile Numbers. All profiles are reachable through mobile. Profiles who have not verified their mobile numbers will not be part of SharatMatrimony sites any more.</p>

					<p class="padd510 txt-justify">Being a free member you can express your interest to a limited number of members. This is valid for a limited period only. SM reserves the right to provide this feature to its members.<br><br>Your membership will automatically be suspended if you send "abusive, obscene or sexually oriented" message/s to other members. <br><br>SM has the right to suspend your profile without any prior notice. <br><br>SM reserves the right to edit/delete your photo/horoscope if it's not a valid/clear/related one. <br><br>If we find duplicate profiles then we have rights to suspend any of the profile or all the profiles. <br><br>Messages sent to members of the opposite gender should be only for the purpose of finding a life partner. You are not allowed to misuse the services of SM in the name of "Dating", "Flirting", "Friendship" etc. <br><br>SM reserves the right to modify your profile if any prohibitive or objectionable content is found, or in the case of your contact details being entered in irrelevant fields. SM may also modify the profile for other reasons not mentioned herewith. If any abusive content is found in your video clipping, SM has the right to suspend your profile. <br><br>You will not post or transmit any content, information or trademarks without the prior consent of the person holding its proprietary or licensed rights. SM will not in any way be responsible or answerable to any action brought by any person arising out of your acts as described above.<br><br>SM reserves the right to remove/edit any information posted by the member on the publicly accessible areas of the site which talks about social media related content.<br><br>SM reserves the right but is not obligated, to edit, delete, eclipse or withhold display of such content or information as it deems fit in the light of the rules prescribed above. <br><br>To enhance the security of its members, SM has restricted copying and saving images and content from certain sections of the portal.<br><br>We validate only the profile details of the member. Character verification has to be done by interested parties themselves.</p>

					<p class="padd510 txt-justify"><b>Match Board ™</b><br>Match Board is a unique patent pending feature, where the members matching the basic match criteria can pin their profile on the Match Board to be seen by other members.<br><br>A member can pin his/her profile only once on the opposite member's Match Board.<br><br>Free members can pin their profile up to 1000 members Match Board. Paid members can pin their profile up to 5000 members Match Board.<br><br>Free members who have reached the maximum limit of accepted interest cannot pin their profile on other members Match Board.</p>

					<p class="padd510 txt-justify"><b>Matrimony Digest</b><br>SharatMatrimony's Matrimony Digest, a downloadable PDF will be available only to those free and paid members who have a minimum of 100 matching profiles for a particular month.<br><br>It is a patent pending feature that gives members a monthly update on their account with a quick view about their matches and activities.</p>

					<p class="padd510 txt-justify"><b>Social Profile</b><br>Social Profile is a patent pending feature that lets you share your Facebook, Twitter and LinkedIn ID and all your updates will be reflected in your profile.</p>

					<div class="boldtxt">10. Disclaimer of Warranties And Limitation of Liability</div>
					<p class="padd510 txt-justify">This site is provided by SM on an "as is" and "as available" basis. SM makes no representations or warranties of any kind, express or implied, as to the operation of this site or the information, content, materials, or products included on this site. You expressly agree that your use of this site is at your sole risk.</p>
					
					<p class="padd510 txt-justify">To the full extent permissible by applicable law, SM disclaims all warranties, express or implied, including, but not limited to, implied warranties of merchantability and fitness for a particular purpose. SM does not warrant that this site, its servers, or e-mail sent from SM are free of viruses or other harmful components. SM will not be liable for any damages of any kind arising from the use of this site, including, but not limited to direct, indirect, incidental, punitive, and consequential damages.</p>
					
					<p class="padd510 txt-justify">Notwithstanding anything contrary contained anywhere, under no circumstances, SM shall be held responsible or liable whatsoever ort howsoever, arising out of, relating to or connected with:</p>

					<div class="paddl10">
						<p class="sq-arrow">any act or omission not done by SM;</p>
						<p class="sq-arrow">any untrue or incorrect information suSMitted by you or on your behalf;</p>
						<p class="sq-arrow">any decision taken by you or on your behalf or any consequences thereof, based on any information provided by any other user;</p>
						<p class="sq-arrow">any unauthorized or illegal act done by any third party relating to or connected with any information suSMitted by you or on your behalf;</p>
						<p class="sq-arrow">any cybercrime attempted or committed by anyone;</p>
						<p class="sq-arrow">any incident of force-majeure or 'act of god'.</p>
					</div>

					<div class="boldtxt">11. Refund Of Fee</div>
					<p class="padd510 txt-justify">If you choose to terminate your membership, the MEMBERSHIP FEES ARE NOT REFUNDABLE under any circumstances. <br><br>Your membership in the SM service is for your sole, personal use. You may not authorize others to use your membership and you may not assign or transfer your account to any other person or entity.</p>

					<div class="boldtxt">12. No Agency</div>
					<p class="padd510 txt-justify">Besides the provision of services, SM acts as a platform for all its members to interchange information that would promote their common matrimonial objectives. It is to be distinctly understood that SM will only provide contact between and among members within its service framework and not the direct contact details of such members. SM is not the agent of any member and does not partake in the interchange or the results thereof. SM reserves the right, but has no obligation, to monitor disputes between you and other members of SM.</p>

					<div class="boldtxt">13. Right to form Consortium/Associates</div>
					<p class="padd510 txt-justify">While providing services, SM may outsource any part thereof to any competent person or organization, with or without disclosing it to you. However, your membership rights and responsibilities continue as against SM only and not against such persons or organizations.</p>

					<div class="boldtxt">14. Indemnity</div>
					<p class="padd510 txt-justify">You hereby agree to indemnify, defend and hold harmless SM and/or its affiliates, their websites and their respective lawful successors and assigns from and against any and all losses, liabilities, claims, damages, costs and expenses (including reasonable legal fees and disbursements in connection therewith and interest chargeable thereon) asserted against or incurred by SM and/or its affiliates, partner websites and their respective lawful successors and assigns that arise out of, result from, or may be payable by virtue of, any breach or non-performance of any representation, warranty, covenant or agreement made or obligation to be performed by You pursuant to this agreement.</p>

					<p class="padd510 txt-justify">You shall be solely and exclusively liable for any breach of any country specific rules and regulations or general code of conduct and SM cannot be held responsible for the same.</p>

					<div class="boldtxt">15. General Provisions</div>
					<p class="padd510 txt-justify"><b>Confidentiality:</b> SM will maintain confidential, all personal information [other than that meant for posting or transmission] furnished by members and shall take all possible and /or bonafide steps for maintaining the confidentiality. However, SM may divulge such information if required by law. It is unconditionally agreed, understood and acknowledged by you that the information and/or data that may be suSMitted by you shall be preserved and retained by SM for all time to come as permissible under law, notwithstanding cessation, termination or discontinuation of the membership.</p>

					<p class="padd510 txt-justify"><b>Termination of Membership:</b> The membership may be terminated by either party by serving a written notice on the other. SM reserves the right to terminate the membership, to suspend a profile or to disable access in respect of any member in breach of any of the terms. In any case the Membership fees will not be refundable.</p>

					<p class="boldtxt paddl10">Site Policies, Modification and Severability </p>
					<p class="padd510 txt-justify">Please review our other policies, such as our pricing policy, posted on this site. These policies also govern your visit to www.SharatMatrimony.com and consortium of portals. We reserve the right to make changes to our site, policies, and these Terms and Conditions of Use at any time. If any of these conditions shall be deemed invalid, void, or for any reason unenforceable, that condition shall be deemed severable and shall not affect the validity and enforceability of any remaining condition.</p>

					<p class="padd510 txt-justify"><b>Suggestions, Complaints, Disputes:</b> Suggestions and complaints are to be first addressed to SM's customer care team at <a href="mailto:helpdesk@SharatMatrimony.com">helpdesk@SharatMatrimony.com</a>.</p>

					<div class="boldtxt">16. Applicable Law</div>
					<p class="padd510 txt-justify">The membership is deemed to have been entered into at Chennai, India and the laws of India will govern the membership and any violation of the terms and conditions provided herein. Disputes arising out of or in any way affecting the membership including interpretation of any of the terms are subject to  Courts of appropriate jurisdiction in Chennai. You hereby explicitly agree for Chennai courts jurisdiction for any disputes that may arise.</p>

					<div class="boldtxt paddb15">17. In the event, you are not agreeable to any of the terms or conditions herein contained, please reconsider and please refrain from registration.</div>

					<p class="boldtxt" align="center">ANNEXURE</p>
					<div class="boldtxt paddb10">APPLICABLE DOMAINS</div>
						<p class="sq-arrow">www.SharatMatrimony.com</p>
						<p class="sq-arrow">www.assamesematrimony.com</p>
						<p class="sq-arrow">www.bengalimatrimony.com</p>
						<p class="sq-arrow">www.gujaratimatrimony.com</p>
						<p class="sq-arrow">www.hindimatrimony.com</p>
						<p class="sq-arrow">www.kannadamatrimony.com</p>
						<p class="sq-arrow">www.keralamatrimony.com</p>
						<p class="sq-arrow">www.marathimatrimony.com</p>
						<p class="sq-arrow">www.marwadimatrimony.com</p>
						<p class="sq-arrow">www.oriyamatrimony.com</p>
						<p class="sq-arrow">www.parsimatrimony.com</p>
						<p class="sq-arrow">www.punjabimatrimony.com</p>
						<p class="sq-arrow">www.sindhimatrimony.com</p>
						<p class="sq-arrow">www.tamilmatrimony.com</p>
						<p class="sq-arrow">www.telugumatrimony.com</p>
			</div>
          <center><button type="button" class="purple" onclick="document.getElementById('background-overlay').style.display='none';document.getElementById('TnC').style.display='none';">Close</button></center>  		
     </div>
</div>



<div class="row size-12" style="background-image:url(Assets/images/backgroung-image.jpg);background-position:0px 0px;background-size:100% auto;background-repeat:repeat-x;margin-bottom:0px;">
   <%--The new registration Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:50px;margin-bottom:15px;">
    <div style="background-color:#834DAB;padding-top:2px;text-align:left;">
     <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li><a href="" class="panel-active-tab" >Register</a></li>
      <li><a href="" class="panel-inactive-tab">Search</a></li>  
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap">
        <div class="frm-divider"></div>
        <strong><label>Profile Posted By</label></strong>
        <select id="ddl_profile_posted_by" name="ddl_profile_posted_by" class="reg_select_box" runat="server"></select>
        <span style="color:Red;">*</span>    
        <div class="frm-divider"></div>
        <strong><label>Full Name</label></strong> 
        <input type="text" id="txt_name" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Gender</label></strong> 
           <input type="radio" value="Male"    id="Gender_Male"  name="radio_gender" runat="server" /><label style="float:none;">Male</label>
           <input type="radio" value="Fe-Male" id="Gender_Female" name="radio_gender" runat="server" /><label style="float:none;">Female</label>
          <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Date Of Birth</label></strong> 
        <select class="reg_select_box" style="width:60px;" id="ddl_dob_day" name="ddl_dob_day" runat="server"></select>
        <select class="reg_select_box" style="width:60px;" id="ddl_dob_month" name="ddl_dob_month" runat="server"></select>
        <select class="reg_select_box" style="width:80px;" id="ddl_dob_year" name="ddl_dob_year" runat="server"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Religion</label></strong> 
        <select id="ddl_religion" name="ddl_religion" onchange="form1.suSMit();lightbox_display_on();" onserverchange="ddlReligionChange" class="reg_select_box" runat="server"></select> 
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Mother Tongue</label></strong> 
        <select class="reg_select_box" id="ddl_mother_tongue" name="ddl_mother_tongue" runat="server"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Caste</label></strong> 
        <select id="ddl_Caste" name="ddl_Caste" class="reg_select_box" runat="server">
            <option value='0'>--Select Caste</option>
        </select>
        <div class="frm-divider"></div>
        <strong><label>Country Living In</label></strong> 
        <select id="ddl_country" name="ddl_country" class="reg_select_box" runat="server"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Marial Status</label></strong> 
        <select class="reg_select_box" runat="server" id="ddl_marital_status"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>No. Of Children</label></strong> 
        <select id="ddl_no_of_children" runat="server" class="reg_select_box"></select>
        <div class="frm-divider"></div>
        <strong><label>Children Staying With</label></strong> 
        <select id="ddl_children_staying_with" runat="server" class="reg_select_box"></select>
        <div class="frm-divider"></div>
        <strong><label>Mobile Number</label></strong> 
        <input type="text" name="txt_mobile_no" id="txt_mobile_no" maxlength="10" class="reg_input_txt" runat="server" />
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Email</label></strong> 
        <input type="text" id="txt_email" name="txt_email" class="reg_input_txt" runat="server" />
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Password</label></strong> 
        <input type="password" class="reg_input_txt" id="txt_password" name="txt_password" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Confirm Password</label></strong> 
        <input type="text" class="reg_input_txt"/> 
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <center>
        <input type="checkbox" name="term_cndtn_acpt" id="term_cndtn_acpt" runat="server" /><strong><label style="float:none;"> I agree to the <a href="javascript:void(0);" onclick="document.getElementById('black_overlay').style.display = 'block';document.getElementById('TnC').style.display = 'block';" style="color:#834DAB;text-decoration:none;">Privacy Policy</a> and <a href="javascript:void(0);" onclick="document.getElementById('background-overlay').style.display = 'block';document.getElementById('TnC').style.display = 'block';" style="color:#834DAB;text-decoration:none;">T&C </a> </label></strong>
        </center>
        <div class="frm-divider"></div>
        <center>
         <a href="ProfileSecurityAssured.aspx">
          <img src="Assets/images/hp-secure-icon-small.gif" alt="" style="border:none;cursor:pointer;" />
          <label style="float:none;cursor:pointer;">Profile Security Assured</label>
         </a>
        </center>
        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;">
           <center><button class="silver" style="color:#834DAB">Register</button></center>
        </div>
   </div>
  </div>
   <%--The End of new Registration Form--%>
</div>

</asp:Content>

