.class public abstract Lorg/apache/http/impl/client/AbstractAuthenticationHandler;
.super Ljava/lang/Object;
.source "AbstractAuthenticationHandler.java"

# interfaces
.implements Lorg/apache/http/client/AuthenticationHandler;


# static fields
.field private static final DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ntlm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "digest"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "basic"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    .line 70
    return-void
.end method


# virtual methods
.method protected getAuthPreferences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-object v0
.end method

.method protected parseChallenges([Lorg/apache/http/Header;)Ljava/util/Map;
    .registers 15
    .parameter "headers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v8, Ljava/util/HashMap;

    array-length v11, p1

    invoke-direct {v8, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 76
    .local v8, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    move-object v1, p1

    .local v1, arr$:[Lorg/apache/http/Header;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_9
    if-ge v6, v7, :cond_75

    aget-object v5, v1, v6

    .line 79
    .local v5, header:Lorg/apache/http/Header;
    instance-of v11, v5, Lorg/apache/http/FormattedHeader;

    if-eqz v11, :cond_34

    .line 80
    move-object v0, v5

    check-cast v0, Lorg/apache/http/FormattedHeader;

    move-object v11, v0

    invoke-interface {v11}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v3

    .line 81
    .local v3, buffer:Lorg/apache/http/util/CharArrayBuffer;
    move-object v0, v5

    check-cast v0, Lorg/apache/http/FormattedHeader;

    move-object v11, v0

    invoke-interface {v11}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v9

    .line 91
    .local v9, pos:I
    :goto_21
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v11

    if-ge v9, v11, :cond_50

    invoke-virtual {v3, v9}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 92
    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    .line 83
    .end local v3           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v9           #pos:I
    :cond_34
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, s:Ljava/lang/String;
    if-nez v10, :cond_42

    .line 85
    new-instance v11, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v12, "Header value is null"

    invoke-direct {v11, v12}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 87
    :cond_42
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v3, v11}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 88
    .restart local v3       #buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v3, v10}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 89
    const/4 v9, 0x0

    .restart local v9       #pos:I
    goto :goto_21

    .line 94
    .end local v10           #s:Ljava/lang/String;
    :cond_50
    move v2, v9

    .line 95
    .local v2, beginIndex:I
    :goto_51
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v11

    if-ge v9, v11, :cond_64

    invoke-virtual {v3, v9}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_64

    .line 96
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    .line 98
    :cond_64
    move v4, v9

    .line 99
    .local v4, endIndex:I
    invoke-virtual {v3, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 100
    .restart local v10       #s:Ljava/lang/String;
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 102
    .end local v2           #beginIndex:I
    .end local v3           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v4           #endIndex:I
    .end local v5           #header:Lorg/apache/http/Header;
    .end local v9           #pos:I
    .end local v10           #s:Ljava/lang/String;
    :cond_75
    return-object v8
.end method

.method public selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .registers 14
    .parameter
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/http/auth/AuthScheme;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 114
    .local p1, challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    const-string v7, "http.authscheme-registry"

    invoke-interface {p3, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 116
    .local v6, registry:Lorg/apache/http/auth/AuthSchemeRegistry;
    if-nez v6, :cond_12

    .line 117
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "AuthScheme registry not set in HTTP context"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 120
    :cond_12
    const-string v7, "http.auth.scheme-pref"

    invoke-interface {p3, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 122
    .local v0, authPrefs:Ljava/util/List;,"Ljava/util/List<*>;"
    if-nez v0, :cond_20

    .line 123
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->getAuthPreferences()Ljava/util/List;

    move-result-object v0

    .line 126
    :cond_20
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 127
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Authentication schemes in the order of preference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 131
    :cond_40
    const/4 v1, 0x0

    .line 132
    .local v1, authScheme:Lorg/apache/http/auth/AuthScheme;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_84

    .line 133
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 134
    .local v5, id:Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 136
    .local v2, challenge:Lorg/apache/http/Header;
    if-eqz v2, :cond_cb

    .line 137
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 138
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " authentication scheme selected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 141
    :cond_7c
    :try_start_7c
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/apache/http/auth/AuthSchemeRegistry;->getAuthScheme(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    :try_end_83
    .catch Ljava/lang/IllegalStateException; {:try_start_7c .. :try_end_83} :catch_9f

    move-result-object v1

    .line 156
    .end local v2           #challenge:Lorg/apache/http/Header;
    .end local v5           #id:Ljava/lang/String;
    :cond_84
    if-nez v1, :cond_f2

    .line 158
    new-instance v7, Lorg/apache/http/auth/AuthenticationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to respond to any of these challenges: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 143
    .restart local v2       #challenge:Lorg/apache/http/Header;
    .restart local v5       #id:Ljava/lang/String;
    :catch_9f
    move-exception v7

    move-object v3, v7

    .line 144
    .local v3, e:Ljava/lang/IllegalStateException;
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_c7

    .line 145
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Authentication scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 132
    .end local v3           #e:Ljava/lang/IllegalStateException;
    :cond_c7
    :goto_c7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_42

    .line 150
    :cond_cb
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_c7

    .line 151
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Challenge for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " authentication scheme not available"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_c7

    .line 162
    .end local v2           #challenge:Lorg/apache/http/Header;
    .end local v5           #id:Ljava/lang/String;
    :cond_f2
    return-object v1
.end method
