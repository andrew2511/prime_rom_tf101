.class public Lorg/apache/http/params/HttpProtocolParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "HttpProtocolParamBean.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .registers 2
    .parameter "params"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 40
    return-void
.end method


# virtual methods
.method public setContentCharset(Ljava/lang/String;)V
    .registers 3
    .parameter "contentCharset"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setHttpElementCharset(Ljava/lang/String;)V
    .registers 3
    .parameter "httpElementCharset"

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setUseExpectContinue(Z)V
    .registers 3
    .parameter "useExpectContinue"

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 60
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3
    .parameter "userAgent"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setVersion(Lorg/apache/http/HttpVersion;)V
    .registers 3
    .parameter "version"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 52
    return-void
.end method
