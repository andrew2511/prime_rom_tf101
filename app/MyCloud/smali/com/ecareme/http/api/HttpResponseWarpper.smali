.class public Lcom/ecareme/http/api/HttpResponseWarpper;
.super Ljava/lang/Object;
.source "HttpResponseWarpper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private rsp:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .parameter "rsp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this class is deprecated. use HttpResponseWrapper instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 29
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    .line 34
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addIntHeader(Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

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
    .line 78
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 94
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setIntHeader(Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ecareme/http/api/HttpResponseWarpper;->rsp:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setLocale(Ljava/util/Locale;)V

    .line 109
    return-void
.end method
