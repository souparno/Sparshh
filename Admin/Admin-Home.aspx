<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
<div style="float: left; width: 341px; height: auto;">
            <div class="listin_div" id="offline_membership">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;float: left;" alt="" src="../css/images/box_icon.png" />
                        <div class="top_tex">Manage OFFline Members</div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="Admin-AddOFlineMembers.aspx"><span class="aro"></span>Add Members</a></li>
                                <li><a href=""><span class="aro"></span>View All Members</a></li>
                                <li><a href=""><span class="aro"></span>Create Tocken</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>

                <div class="listin_div" id="divWebSettings">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;float: left;" alt="" src="../css/images/box_icon.png">
                        <div class="top_tex">
                                Web Settings
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Site Configuration</a></li>
                                <li><a onclick="OpenChangePass('AdminChangePass.aspx','Change Password',320,140)" href="#">
                                    <span class="aro"></span>Change admin password</a></li>
                                <li><a href="EditMembershipPlan.aspx"><span class="aro"></span>Edit Membership Plans</a></li>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Change CCAvenue ID</a></li>
                                <li><a id="Backup" href="#"><span class="aro"></span>Datas Backup</a></li>
                                <li><a id="A3" href="AddCaste.aspx"><span class="aro"></span>Add Caste</a></li>
                                <li><a id="A4" href="AddCountry.aspx"><span class="aro"></span>Add Country</a></li>
                                <li><a id="A5" href="Addpackage.aspx"><span class="aro"></span>Add Package
                                    For A Paid Member</a></li>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Set Google Ads</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Members Report
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="ProfileView.aspx?ViewMode=all"><span class="aro"></span>View all members</a></li>
                                <li><a href="ProfileView.aspx?ViewMode=inactive"><span class="aro"></span>InActive Members</a></li>
                                <li><a href="ProfileView.aspx?ViewMode=free"><span class="aro"></span>Free Members</a></li>
                                <li><a href="ProfileView.aspx?ViewMode=paid"><span class="aro"></span>Paid Members</a></li>
                                <li><a href="ProfileView.aspx?ViewMode=lapsed"><span class="aro"></span>Lapsed Members</a></li>
                                <li><a href="ProfileView.aspx?ViewMode=banned"><span class="aro"></span>Banned Members</a></li>
                                <li><a href="ProfileView.aspx?ViewMode=active"><span class="aro"></span>Active Members</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div style="float: left;" class="listin_div" id="divMembersApproval">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Members Approval
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="Ban.aspx"><span class="aro"></span>Approve Inactive To Active</a></li>
                                <li><a href="EditProfile.aspx"><span class="aro"></span>Approve Free To Paid</a></li>
                                <li><a href="Accept.aspx"><span class="aro"></span>Approve Profile Description</a></li>
                                <li><a href="Accept.aspx"><span class="aro"></span>Deletion Request</a></li>
                                <li><a id="A1" href="Accept.aspx"><span class="aro"></span>Accept Paid
                                    Member</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divCms">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                CMS
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="CMS.aspx?Page=Home"><span class="aro"></span>Home</a></li>
                                <li><a href="CMS.aspx?Page=Aboutus"><span class="aro"></span>About us</a></li>
                                <li><a href="CMS.aspx?Page=Mission"><span class="aro"></span>Mission &amp; Visions</a></li>
                                <li><a href="CMS.aspx?Page=Package"><span class="aro"></span>Packages</a></li>
                                <li><a href="CMS.aspx?Page=Privilege"><span class="aro"></span>Sparsh Privilege</a></li>
                                <li><a href="CMS.aspx?Page=Elite"><span class="aro"></span>Sparsh Elite</a></li>
                                <li><a href="CMS.aspx?Page=Process"><span class="aro"></span>Processes</a></li>
                                <li><a href="CMS.aspx?Page=ClientDelight"><span class="aro"></span>Client Delights</a></li>
                                <li><a href="CMS.aspx?Page=FAQ"><span class="aro"></span>FAQs</a></li>
                                <li><a href="CMS.aspx?Page=NewsTicker"><span class="aro"></span>NewsTicker</a></li>
                                <li><a href="Successstories.aspx"><span class="aro"></span>Success Stories</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divMemberSearch">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Members Search
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="QuickMember.aspx"><span class="aro"></span>Quick Member Report</a></li>
                                <li><a href="ProfileView.aspx?ViewMode=all"><span class="aro"></span>Search By Id</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divUserMenu">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                User Menu
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a onclick="OpenChangePass('ResetUserPassword.aspx','Reset User Password',600,400)" href="#">
                                    <span class="aro"></span>Reset User's Password</a></li>
                                
                                <li><a href="EditProfile.aspx"><span class="aro"></span>EditProfile</a></li>
                                <li><a href="Ban.aspx"><span class="aro"></span>Ban Membership</a></li>
                                <li><a href="Ban.aspx"><span class="aro"></span>UnBan Membership</a></li>
                                <li><a href="LiveSupport.aspx"><span class="aro"></span>Live Support</a></li>
                                <li><a href="RemovePhotos.aspx"><span class="aro"></span>Remove Photos</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divPhoto">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Members Photo
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="RemovePhotos.aspx"><span class="aro"></span>Remove Photos</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
            </div>
<div style="float: left; width: 341px; height: auto; margin: 0 0 0 95px;">
                <div class="listin_div" id="divPrintout">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Printouts
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="Printout.aspx"><span class="aro"></span>A4 Printouts</a></li>
                                <li><a href="Label.aspx"><span class="aro"></span>Label Printouts</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divRenewalMembership">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Renewal Membership
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="Addpackage.aspx"><span class="aro"></span>Renew Lapsed Membership</a></li>
                                <li><a href="FourthcomingRenewals.aspx"><span class="aro"></span>Fourhcoming Renewals</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divAdminActivities">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Admin Activities
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="RemovePhotos.aspx"><span class="aro"></span>Reset Members Photos</a></li>
                                <li><a href="CreateStaffs.aspx"><span class="aro"></span>Staff Administration</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divBnnerads">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Banner Ads
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Static Left Side Banner</a></li>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Profile Right Side Banner</a></li>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Profile Right Side Banner</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divNewsletter">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                News Letter
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="http://mail.sparshhmatrimony.com/"><span class="aro"></span>Send Emails
                                    To Members</a></li>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Send Group Mails</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divWeddingDirectory">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Wedding Directory
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Add/Edit/Delete Category</a></li>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Approve Listing</a></li>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Edit/Delete Approved
                                    Listings</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divDeleteMembers">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Delete Members
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="EditProfile.aspx"><span class="aro"></span>Remove Inactive Members</a></li>
                                <li><a href="EditProfile.aspx"><span class="aro"></span>Remove Free Members</a></li>
                                <li><a href="EditProfile.aspx"><span class="aro"></span>Remove Paid Members</a></li>
                                <li><a href="EditProfile.aspx"><span class="aro"></span>Remove Banned Members</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divHoroscope">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Members Horoscope
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a id="A2" href="Downloadhoroscope.aspx"><span class="aro"></span>
                                    Horoscope</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divAssuredContact">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Assured Contact Allocation
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Set Contact
                                    Allocation</a></li>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Reset
                                    Contact Allocation</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
                <div class="listin_div" id="divMemberStatistics">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;
                            float: left;" alt="" src="../css/images/box_icon.png"><div class="top_tex">
                                Members Stastitics
                            </div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="GraphicalReport.aspx"><span class="aro"></span>Graphical View</a></li>
                                <li><a href="SiteStatistics.aspx"><span class="aro"></span>Site Statistics</a></li>
                                <li><a onclick="ShowAlert()" href="#"><span class="aro"></span>Sales Report</a></li>
                                <li><a id="excelBackup" href="#"><span class="aro"></span>Members Report
                                    In Excel File</a></li>
                                <li><a href="DetailedBreakdown.aspx"><span class="aro"></span>Detailed Breakdown</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
            </div>
</asp:Content>

