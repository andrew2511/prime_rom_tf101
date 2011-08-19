.class public Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965PortAttributeHandler.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static parsePortAttribute(Ljava/lang/String;)[I
    .registers 8
    .parameter "portValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [I

    .line 67
    .local v2, ports:[I
    const/4 v1, 0x0

    .line 68
    .local v1, i:I
    :goto_e
    :try_start_e
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 69
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1

    .line 70
    aget v4, v2, v1

    if-gez v4, :cond_4d

    .line 71
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v5, "Invalid Port attribute."

    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_2e} :catch_2e

    .line 75
    :catch_2e
    move-exception v4

    move-object v0, v4

    .line 76
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Port attribute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 79
    :cond_50
    return-object v2
.end method

.method private static portMatch(I[I)Z
    .registers 6
    .parameter "port"
    .parameter "ports"

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, portInList:Z
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, len:I
    :goto_3
    if-ge v0, v1, :cond_a

    .line 94
    aget v3, p1, v0

    if-ne p0, v3, :cond_b

    .line 95
    const/4 v2, 0x1

    .line 99
    :cond_a
    return v2

    .line 93
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .registers 8
    .parameter "cookie"
    .parameter "origin"

    .prologue
    const/4 v4, 0x0

    .line 148
    if-nez p1, :cond_b

    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_b
    if-nez p2, :cond_15

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_15
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v1

    .line 155
    .local v1, port:I
    instance-of v2, p1, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v2, :cond_3d

    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    move-object v2, v0

    const-string v3, "port"

    invoke-interface {v2, v3}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 157
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v2

    if-nez v2, :cond_31

    move v2, v4

    .line 165
    :goto_30
    return v2

    .line 161
    :cond_31
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result v2

    if-nez v2, :cond_3d

    move v2, v4

    .line 162
    goto :goto_30

    .line 165
    :cond_3d
    const/4 v2, 0x1

    goto :goto_30
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .registers 8
    .parameter "cookie"
    .parameter "portValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p1, :cond_a

    .line 108
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_a
    instance-of v3, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v3, :cond_25

    .line 111
    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/SetCookie2;

    move-object v1, v0

    .line 112
    .local v1, cookie2:Lorg/apache/http/cookie/SetCookie2;
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_25

    .line 113
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->parsePortAttribute(Ljava/lang/String;)[I

    move-result-object v2

    .line 114
    .local v2, ports:[I
    invoke-interface {v1, v2}, Lorg/apache/http/cookie/SetCookie2;->setPorts([I)V

    .line 117
    .end local v1           #cookie2:Lorg/apache/http/cookie/SetCookie2;
    .end local v2           #ports:[I
    :cond_25
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .registers 7
    .parameter "cookie"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p1, :cond_a

    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_a
    if-nez p2, :cond_14

    .line 129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_14
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v1

    .line 132
    .local v1, port:I
    instance-of v2, p1, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v2, :cond_3a

    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    move-object v2, v0

    const-string v3, "port"

    invoke-interface {v2, v3}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 134
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 135
    new-instance v2, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v3, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {v2, v3}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_3a
    return-void
.end method
