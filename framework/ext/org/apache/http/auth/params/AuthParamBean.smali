.class public Lorg/apache/http/auth/params/AuthParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "AuthParamBean.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .registers 2
    .parameter "params"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 41
    return-void
.end method


# virtual methods
.method public setCredentialCharset(Ljava/lang/String;)V
    .registers 3
    .parameter "charset"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/http/auth/params/AuthParamBean;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/auth/params/AuthParams;->setCredentialCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 45
    return-void
.end method
