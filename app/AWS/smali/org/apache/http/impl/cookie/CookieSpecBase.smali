.class public abstract Lorg/apache/http/impl/cookie/CookieSpecBase;
.super Lorg/apache/http/impl/cookie/AbstractCookieSpec;
.source "CookieSpecBase.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;-><init>()V

    return-void
.end method

.method protected static getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 1
    .parameter "origin"

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 3
    .parameter "origin"

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, defaultPath:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 55
    .local v1, lastSlashIndex:I
    if-ltz v1, :cond_1

    .line 56
    if-nez v1, :cond_0

    .line 58
    const/4 v1, 0x1

    .line 60
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_1
    return-object v0
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 4
    .parameter "cookie"
    .parameter "origin"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    if-nez p2, :cond_1

    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieAttributeHandler;

    .line 122
    .local v0, handler:Lorg/apache/http/cookie/CookieAttributeHandler;
    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    const/4 v2, 0x0

    .line 126
    .end local v0           #handler:Lorg/apache/http/cookie/CookieAttributeHandler;
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 17
    .parameter "elems"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/HeaderElement;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    invoke-direct {v6, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v6, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    move-object/from16 v2, p1

    .local v2, arr$:[Lorg/apache/http/HeaderElement;
    array-length v11, v2

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_4

    aget-object v8, v2, v9

    .line 73
    .local v8, headerelement:Lorg/apache/http/HeaderElement;
    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    .line 74
    .local v12, name:Ljava/lang/String;
    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, value:Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 76
    :cond_0
    new-instance v15, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v16, "Cookie name may not be empty"

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 79
    :cond_1
    new-instance v5, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v5, v12, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v5, cookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 81
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 84
    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v4

    .line 85
    .local v4, attribs:[Lorg/apache/http/NameValuePair;
    array-length v15, v4

    const/16 v16, 0x1

    sub-int v10, v15, v16

    .local v10, j:I
    :goto_1
    if-ltz v10, :cond_3

    .line 86
    aget-object v3, v4, v10

    .line 87
    .local v3, attrib:Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, s:Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v13, v15}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/CookieSpecBase;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    move-result-object v7

    .line 92
    .local v7, handler:Lorg/apache/http/cookie/CookieAttributeHandler;
    if-eqz v7, :cond_2

    .line 93
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v5, v15}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    .line 85
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 96
    .end local v3           #attrib:Lorg/apache/http/NameValuePair;
    .end local v7           #handler:Lorg/apache/http/cookie/CookieAttributeHandler;
    .end local v13           #s:Ljava/lang/String;
    :cond_3
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 98
    .end local v4           #attribs:[Lorg/apache/http/NameValuePair;
    .end local v5           #cookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v8           #headerelement:Lorg/apache/http/HeaderElement;
    .end local v10           #j:I
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_4
    return-object v6
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 4
    .parameter "cookie"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_0
    if-nez p2, :cond_1

    .line 107
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieAttributeHandler;

    .line 110
    .local v0, handler:Lorg/apache/http/cookie/CookieAttributeHandler;
    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_0

    .line 112
    .end local v0           #handler:Lorg/apache/http/cookie/CookieAttributeHandler;
    :cond_2
    return-void
.end method
