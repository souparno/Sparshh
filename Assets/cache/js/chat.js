/************************************************************************************
AJAX 

This is a simple chat class implemented with the OOPS in javascript
Version      : 1.0
Developed By : Souparno Majumder 
Copyright    : Go ahead and use this as you wish.  ©2014-2015
************************************************************************************/

/***********************************************************************************
The Argument passed to the SimpleAJAX function is JSON encoded(JAVASCRIPT OBJECT NOTATION)
Parameters: 
Arguments :JSON object to hold the following OBJECT VARIABLE
{
    UserId                : The UserId of the present User
    UserName              : The UserName of the present User
    ShowUsers_HTMLDOM_ID  : The div id where the online users will be shown
    RegisterUserURL       : The url location where the present logged in user will get registered
    FetchUserURL          : The url locatioin from where the online users will be fetched
}
***********************************************************************************/

function chat(Arguments) {




    if (SupportsAjax) {// Checks to asee if the browser supports ajax

        /***************************************************************
        variable : RequestJobManager
        Purpose : keeps track of the request to be performed

        variable : AjaxBusy
        Purpose : Checks to see if there are any ongoing ajax requests to the server
        ****************************************************************/
        var RequestJobManager = 0;
        var AjaxBusy = 0;


        function apelAjax() {
            //Checks to see if there is any ongoing ajax request
            //0 represents no requests are in process
            if (AjaxBusy === 0) {
                if (RequestJobManager == 2) {
                    RequestJobManager = 0;
                    new AJAX({
                        RequestVerb: 'POST',
                        RequestUrl: '../Assets/cache/cache.php',
                        Parameters: "userid=" + '<%= Convert.ToString(Session["UserId"]) %>' + "&username=" + '<%= Convert.ToString(Session["UserName"]) %>',
                        CallbackMethod: success,
                        readystateCallBackMethod: statechange,
                        TimeOut: '6'
                    }).SendHTTPRequest();
                }
                else {
                    new AJAX({
                        RequestVerb: 'GET',
                        RequestUrl: '../Assets/cache/cache.txt',
                        CallbackMethod: onlineusers,
                        readystateCallBackMethod: statechange,
                        TimeOut: '6'
                    }).SendHTTPRequest();
                }
                RequestJobManager++;
            }
            // Iterating the ajax request after every 2 seconds
            setTimeout('apelAjax()', 1900);
        };
        apelAjax();
    }
    else alert("Browser Doesnot Support Ajax");

    /******************************************************************************************* 
    This function gets called on every successful registration of users to the cache
    ********************************************************************************************/
    function success(param) {
        var response = JSON.parse(param);
        for (var key in response) {
            if (key === "Error") alert(key + "" + response[key]);
        }
    }

    /******************************************************************************************* 
    This function gets called after every successful fetch of online users from the cache
    ********************************************************************************************/
    function onlineusers(param) {
        var response = JSON.parse(param);
        users = "";
        for (var i = 0; i < response.length; i++) {
            users = users + "<a style='color: #336699;text-decoration: none;font-size:10px;font-weight:900;'>" + response[i].UserName + "</a><hr />";
        }
        document.getElementById("online-buddies").innerHTML = users;
    }

    /*****************************************************************************************
    This function checks to see if the ajax is buzy or not and hence declares the AjaxBusy 0/1
    1 defines the ajax is buzy
    0 defines the ajax is free
    ******************************************************************************************/
    function statechange(param) {
        switch (param) {
            case 0:
                AjaxBusy = 1;
                break;
            case 1:
                AjaxBusy = 1;
                break;
            case 2:
                AjaxBusy = 1;
                break;
            case 3:
                AjaxBusy = 1;
                break;
            case 4:
                AjaxBusy = 0;
                break;
        }
    }
}