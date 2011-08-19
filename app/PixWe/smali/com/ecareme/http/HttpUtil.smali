.class public Lcom/ecareme/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCookieMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .parameter "headerCookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/http/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 38
    if-nez p0, :cond_0

    const/4 v6, 0x0

    move-object v4, v6

    .line 39
    .local v4, cookies:[Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_3

    array-length v6, v4

    if-lez v6, :cond_3

    .line 41
    new-instance v3, Ljava/util/HashMap;

    array-length v6, v4

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    .local v3, cookiemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/http/Cookie;>;"
    array-length v6, v4

    move v7, v11

    :goto_1
    if-lt v7, v6, :cond_1

    .line 49
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 53
    .end local v3           #cookiemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/http/Cookie;>;"
    :goto_2
    return-object v6

    .line 38
    .end local v4           #cookies:[Ljava/lang/String;
    :cond_0
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 42
    .restart local v3       #cookiemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/http/Cookie;>;"
    .restart local v4       #cookies:[Ljava/lang/String;
    :cond_1
    aget-object v0, v4, v7

    .line 44
    .local v0, cookie:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, nvs:[Ljava/lang/String;
    aget-object v1, v5, v11

    .line 46
    .local v1, cookieName:Ljava/lang/String;
    array-length v8, v5

    if-le v8, v12, :cond_2

    aget-object v8, v5, v12

    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 47
    .local v2, cookieValue:Ljava/lang/String;
    :goto_3
    new-instance v8, Ljavax/servlet/http/Cookie;

    invoke-direct {v8, v1, v2}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 46
    .end local v2           #cookieValue:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    move-object v2, v8

    goto :goto_3

    .line 53
    .end local v0           #cookie:Ljava/lang/String;
    .end local v1           #cookieName:Ljava/lang/String;
    .end local v3           #cookiemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/http/Cookie;>;"
    .end local v5           #nvs:[Ljava/lang/String;
    :cond_3
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_2
.end method

.method public static toCookieMap([Ljavax/servlet/http/Cookie;)Ljava/util/Map;
    .locals 5
    .parameter "cookies"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavax/servlet/http/Cookie;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/http/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    array-length v2, p0

    if-lez v2, :cond_1

    .line 23
    new-instance v1, Ljava/util/HashMap;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 24
    .local v1, cookiemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/http/Cookie;>;"
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 28
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 32
    .end local v1           #cookiemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/http/Cookie;>;"
    :goto_1
    return-object v2

    .line 24
    .restart local v1       #cookiemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/http/Cookie;>;"
    :cond_0
    aget-object v0, p0, v3

    .line 26
    .local v0, c:Ljavax/servlet/http/Cookie;
    invoke-virtual {v0}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    .end local v0           #c:Ljavax/servlet/http/Cookie;
    .end local v1           #cookiemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/http/Cookie;>;"
    :cond_1
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_1
.end method
