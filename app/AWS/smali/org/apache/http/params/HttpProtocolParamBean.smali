.class public Lorg/apache/http/params/HttpProtocolParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "HttpProtocolParamBean.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 47
    return-void
.end method


# virtual methods
.method public setContentCharset(Ljava/lang/String;)V
    .locals 1
    .parameter "contentCharset"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setHttpElementCharset(Ljava/lang/String;)V
    .locals 1
    .parameter "httpElementCharset"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setUseExpectContinue(Z)V
    .locals 1
    .parameter "useExpectContinue"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 67
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setVersion(Lorg/apache/http/HttpVersion;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 59
    return-void
.end method
