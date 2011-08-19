.class public final Lorg/apache/http/params/HttpProtocolParams;
.super Ljava/lang/Object;
.source "HttpProtocolParams.java"

# interfaces
.implements Lorg/apache/http/params/CoreProtocolPNames;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getContentCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    const-string v1, "http.protocol.content-charset"

    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 100
    const-string v0, "ISO-8859-1"

    .line 102
    :cond_1
    return-object v0
.end method

.method public static getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    const-string v1, "http.protocol.element-charset"

    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 68
    const-string v0, "US-ASCII"

    .line 70
    :cond_1
    return-object v0
.end method

.method public static getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    const-string v0, "http.useragent"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;
    .locals 3
    .parameter "params"

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    const-string v1, "http.protocol.version"

    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 132
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    .line 134
    .end local v0           #param:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0       #param:Ljava/lang/Object;
    :cond_1
    check-cast v0, Lorg/apache/http/ProtocolVersion;

    .end local v0           #param:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public static setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .parameter "params"
    .parameter "charset"

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 116
    return-void
.end method

.method public static setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .parameter "params"
    .parameter "charset"

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 84
    return-void
.end method

.method public static setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
    .locals 2
    .parameter "params"
    .parameter "b"

    .prologue
    .line 199
    if-nez p0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    const-string v0, "http.protocol.expect-continue"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 203
    return-void
.end method

.method public static setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .parameter "params"
    .parameter "useragent"

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    const-string v0, "http.useragent"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 175
    return-void
.end method

.method public static setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
    .locals 2
    .parameter "params"
    .parameter "version"

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 148
    return-void
.end method

.method public static useExpectContinue(Lorg/apache/http/params/HttpParams;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    const-string v0, "http.protocol.expect-continue"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
