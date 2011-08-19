.class public Lcom/ecareme/http/api/HttpResponseWrapper;
.super Ljava/lang/Object;
.source "HttpResponseWrapper.java"


# instance fields
.field private rsp:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .parameter "rsp"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    .line 20
    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 25
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    .line 30
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addIntHeader(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 90
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setIntHeader(Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setLocale(Ljava/util/Locale;)V

    .line 105
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWrapper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 110
    return-void
.end method
