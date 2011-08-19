.class public abstract Lorg/apache/http/impl/client/AbstractAuthenticationHandler;
.super Ljava/lang/Object;
.source "AbstractAuthenticationHandler.java"

# interfaces
.implements Lorg/apache/http/client/AuthenticationHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


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
    .locals 3

    .prologue
    .line 65
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

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    .line 74
    return-void
.end method


# virtual methods
.method protected getAuthPreferences()Ljava/util/List;
    .locals 1
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
    .line 110
    sget-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-object v0
.end method

.method protected parseChallenges([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 13
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
    .line 79
    new-instance v8, Ljava/util/HashMap;

    array-length v11, p1

    invoke-direct {v8, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    .local v8, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    move-object v1, p1

    .local v1, arr$:[Lorg/apache/http/Header;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v5, v1, v6

    .line 83
    .local v5, header:Lorg/apache/http/Header;
    instance-of v11, v5, Lorg/apache/http/FormattedHeader;

    if-eqz v11, :cond_0

    .line 84
    move-object v0, v5

    check-cast v0, Lorg/apache/http/FormattedHeader;

    move-object v11, v0

    invoke-interface {v11}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v3

    .line 85
    .local v3, buffer:Lorg/apache/http/util/CharArrayBuffer;
    move-object v0, v5

    check-cast v0, Lorg/apache/http/FormattedHeader;

    move-object v11, v0

    invoke-interface {v11}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v9

    .line 95
    .local v9, pos:I
    :goto_1
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v11

    if-ge v9, v11, :cond_2

    invoke-virtual {v3, v9}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 96
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 87
    .end local v3           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v9           #pos:I
    :cond_0
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, s:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 89
    new-instance v11, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v12, "Header value is null"

    invoke-direct {v11, v12}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 91
    :cond_1
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v3, v11}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 92
    .restart local v3       #buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v3, v10}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 93
    const/4 v9, 0x0

    .restart local v9       #pos:I
    goto :goto_1

    .line 98
    .end local v10           #s:Ljava/lang/String;
    :cond_2
    move v2, v9

    .line 99
    .local v2, beginIndex:I
    :goto_2
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v11

    if-ge v9, v11, :cond_3

    invoke-virtual {v3, v9}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_3

    .line 100
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 102
    :cond_3
    move v4, v9

    .line 103
    .local v4, endIndex:I
    invoke-virtual {v3, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 104
    .restart local v10       #s:Ljava/lang/String;
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    .end local v2           #beginIndex:I
    .end local v3           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v4           #endIndex:I
    .end local v5           #header:Lorg/apache/http/Header;
    .end local v9           #pos:I
    .end local v10           #s:Ljava/lang/String;
    :cond_4
    return-object v8
.end method

.method public selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .locals 10
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
    .line 118
    .local p1, challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    const-string v7, "http.authscheme-registry"

    invoke-interface {p3, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 120
    .local v6, registry:Lorg/apache/http/auth/AuthSchemeRegistry;
    if-nez v6, :cond_0

    .line 121
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "AuthScheme registry not set in HTTP context"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    :cond_0
    const-string v7, "http.auth.scheme-pref"

    invoke-interface {p3, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 127
    .local v0, authPrefs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->getAuthPreferences()Ljava/util/List;

    move-result-object v0

    .line 131
    :cond_1
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 132
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

    .line 136
    :cond_2
    const/4 v1, 0x0

    .line 137
    .local v1, authScheme:Lorg/apache/http/auth/AuthScheme;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 138
    .local v5, id:Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 140
    .local v2, challenge:Lorg/apache/http/Header;
    if-eqz v2, :cond_6

    .line 141
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 142
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

    .line 145
    :cond_4
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/apache/http/auth/AuthSchemeRegistry;->getAuthScheme(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    .end local v2           #challenge:Lorg/apache/http/Header;
    .end local v5           #id:Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_7

    .line 162
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

    .line 147
    .restart local v2       #challenge:Lorg/apache/http/Header;
    .restart local v5       #id:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 148
    .local v3, e:Ljava/lang/IllegalStateException;
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
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

    goto/16 :goto_0

    .line 154
    .end local v3           #e:Ljava/lang/IllegalStateException;
    :cond_6
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 155
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

    goto/16 :goto_0

    .line 166
    .end local v2           #challenge:Lorg/apache/http/Header;
    .end local v5           #id:Ljava/lang/String;
    :cond_7
    return-object v1
.end method
