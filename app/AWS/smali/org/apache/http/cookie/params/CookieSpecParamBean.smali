.class public Lorg/apache/http/cookie/params/CookieSpecParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "CookieSpecParamBean.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 49
    return-void
.end method


# virtual methods
.method public setDatePatterns(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, patterns:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/http/cookie/params/CookieSpecParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.cookie-datepatterns"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 53
    return-void
.end method

.method public setSingleHeader(Z)V
    .locals 2
    .parameter "singleHeader"

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/http/cookie/params/CookieSpecParamBean;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.single-cookie-header"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 57
    return-void
.end method
