.class public Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965PortAttributeHandler.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static parsePortAttribute(Ljava/lang/String;)[I
    .locals 7
    .parameter "portValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [I

    .line 68
    .local v2, ports:[I
    const/4 v1, 0x0

    .line 69
    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1

    .line 71
    aget v4, v2, v1

    if-gez v4, :cond_0

    .line 72
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v5, "Invalid Port attribute."

    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 77
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

    .line 74
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    return-object v2
.end method

.method private static portMatch(I[I)Z
    .locals 4
    .parameter "port"
    .parameter "ports"

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, portInList:Z
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 95
    aget v3, p1, v0

    if-ne p0, v3, :cond_1

    .line 96
    const/4 v2, 0x1

    .line 100
    :cond_0
    return v2

    .line 94
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 5
    .parameter "cookie"
    .parameter "origin"

    .prologue
    const/4 v4, 0x0

    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_0
    if-nez p2, :cond_1

    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v1

    .line 156
    .local v1, port:I
    instance-of v2, p1, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    move-object v2, v0

    const-string v3, "port"

    invoke-interface {v2, v3}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v4

    .line 166
    :goto_0
    return v2

    .line 162
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 163
    goto :goto_0

    .line 166
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "portValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_0
    instance-of v3, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v3, :cond_1

    .line 112
    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/SetCookie2;

    move-object v1, v0

    .line 113
    .local v1, cookie2:Lorg/apache/http/cookie/SetCookie2;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 114
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->parsePortAttribute(Ljava/lang/String;)[I

    move-result-object v2

    .line 115
    .local v2, ports:[I
    invoke-interface {v1, v2}, Lorg/apache/http/cookie/SetCookie2;->setPorts([I)V

    .line 118
    .end local v1           #cookie2:Lorg/apache/http/cookie/SetCookie2;
    .end local v2           #ports:[I
    :cond_1
    return-void
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
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_0
    if-nez p2, :cond_1

    .line 130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie origin may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v1

    .line 133
    .local v1, port:I
    instance-of v2, p1, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    move-object v2, v0

    const-string v3, "port"

    invoke-interface {v2, v3}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    new-instance v2, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v3, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {v2, v3}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_2
    return-void
.end method
