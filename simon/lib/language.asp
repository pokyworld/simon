<%

    If Request.QueryString("lang")="" then
        If Request.Cookies("lang") = "" then
            response.Cookies("lang") = "ita"
            lang = "eng"
        Else
            lang = Request.Cookies("lang")
        End If
    Else
        If Request.QueryString("lang")="ita" or Request.QueryString("lang")="eng" then
            lang = Request.QueryString("lang")
        Else
            lang = "eng"
        End If
        response.Cookies("lang") = lang
        ' lang di Facebook
        If lang = "ita" then
            langFB = "it_IT"
        Else
            langFB = "en_US"
        End If
    End If

%>