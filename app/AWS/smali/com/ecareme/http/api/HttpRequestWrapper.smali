.class public Lcom/ecareme/http/api/HttpRequestWrapper;
.super Ljava/lang/Object;
.source "HttpRequestWrapper.java"


# instance fields
.field private req:Ljavax/servlet/http/HttpServletRequest;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 0
    .parameter "req"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    .line 25
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getAuthType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getIntHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getLocales()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getParameterMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathTranslated()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v0

    return v0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromCookie()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromURL()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdValid()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->isUserInRole(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ecareme/http/api/HttpRequestWrapper;->req:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->setCharacterEncoding(Ljava/lang/String;)V

    .line 275
    return-void
.end method
