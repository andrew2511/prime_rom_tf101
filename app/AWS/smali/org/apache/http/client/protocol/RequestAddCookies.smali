.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    .line 83
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 31
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v28, Ljava/lang/IllegalArgumentException;

    const-string v29, "HTTP request may not be null"

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 90
    :cond_0
    if-nez p2, :cond_1

    .line 91
    new-instance v28, Ljava/lang/IllegalArgumentException;

    const-string v29, "HTTP context may not be null"

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 94
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v17

    .line 95
    .local v17, method:Ljava/lang/String;
    const-string v28, "CONNECT"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 218
    :goto_0
    return-void

    .line 100
    :cond_2
    const-string v28, "http.cookie-store"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/client/CookieStore;

    .line 102
    .local v9, cookieStore:Lorg/apache/http/client/CookieStore;
    if-nez v9, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Cookie store not available in HTTP context"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_3
    const-string v28, "http.cookiespec-registry"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 110
    .local v22, registry:Lorg/apache/http/cookie/CookieSpecRegistry;
    if-nez v22, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "CookieSpec registry not available in HTTP context"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_4
    const-string v28, "http.target_host"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/http/HttpHost;

    .line 118
    .local v26, targetHost:Lorg/apache/http/HttpHost;
    if-nez v26, :cond_5

    .line 119
    new-instance v28, Ljava/lang/IllegalStateException;

    const-string v29, "Target host not specified in HTTP context"

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 123
    :cond_5
    const-string v28, "http.connection"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/conn/ManagedClientConnection;

    .line 125
    .local v5, conn:Lorg/apache/http/conn/ManagedClientConnection;
    if-nez v5, :cond_6

    .line 126
    new-instance v28, Ljava/lang/IllegalStateException;

    const-string v29, "Client connection not specified in HTTP context"

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 129
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v20

    .line 130
    .local v20, policy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "CookieSpec selected: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 135
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 136
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    move-object v6, v0

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v23

    .line 146
    .local v23, requestURI:Ljava/net/URI;
    :goto_1
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v14

    .line 147
    .local v14, hostName:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v21

    .line 148
    .local v21, port:I
    if-gez v21, :cond_8

    .line 151
    const-string v28, "http.scheme-registry"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 153
    .local v25, sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    if-eqz v25, :cond_c

    .line 154
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v24

    .line 155
    .local v24, scheme:Lorg/apache/http/conn/scheme/Scheme;
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v21

    .line 161
    .end local v24           #scheme:Lorg/apache/http/conn/scheme/Scheme;
    .end local v25           #sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_8
    :goto_2
    new-instance v7, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    move-result v29

    move-object v0, v7

    move-object v1, v14

    move/from16 v2, v21

    move-object/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 168
    .local v7, cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v8

    .line 170
    .local v8, cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v9}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v28

    move-object v0, v10

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    .local v10, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v16, matchedCookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 174
    .local v19, now:Ljava/util/Date;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/cookie/Cookie;

    .line 175
    .local v6, cookie:Lorg/apache/http/cookie/Cookie;
    move-object v0, v6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v28

    if-nez v28, :cond_d

    .line 176
    invoke-interface {v8, v6, v7}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cookie "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " match "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 180
    :cond_a
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 139
    .end local v6           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v7           #cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    .end local v8           #cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    .end local v10           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v14           #hostName:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #matchedCookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v19           #now:Ljava/util/Date;
    .end local v21           #port:I
    .end local v23           #requestURI:Ljava/net/URI;
    :cond_b
    :try_start_0
    new-instance v23, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v23       #requestURI:Ljava/net/URI;
    goto/16 :goto_1

    .line 140
    .end local v23           #requestURI:Ljava/net/URI;
    :catch_0
    move-exception v28

    move-object/from16 v11, v28

    .line 141
    .local v11, ex:Ljava/net/URISyntaxException;
    new-instance v28, Lorg/apache/http/ProtocolException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Invalid request URI: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v28

    .line 157
    .end local v11           #ex:Ljava/net/URISyntaxException;
    .restart local v14       #hostName:Ljava/lang/String;
    .restart local v21       #port:I
    .restart local v23       #requestURI:Ljava/net/URI;
    .restart local v25       #sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_c
    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v21

    goto/16 :goto_2

    .line 183
    .end local v25           #sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v6       #cookie:Lorg/apache/http/cookie/Cookie;
    .restart local v7       #cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    .restart local v8       #cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    .restart local v10       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #matchedCookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v19       #now:Ljava/util/Date;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cookie "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " expired"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 189
    .end local v6           #cookie:Lorg/apache/http/cookie/Cookie;
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_f

    .line 190
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 191
    .local v13, headers:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/http/Header;

    .line 192
    .local v12, header:Lorg/apache/http/Header;
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_4

    .line 196
    .end local v12           #header:Lorg/apache/http/Header;
    .end local v13           #headers:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_f
    invoke-interface {v8}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v27

    .line 197
    .local v27, ver:I
    if-lez v27, :cond_13

    .line 198
    const/16 v18, 0x0

    .line 199
    .local v18, needVersionHeader:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_10
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/cookie/Cookie;

    .line 200
    .restart local v6       #cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    move-object v0, v6

    instance-of v0, v0, Lorg/apache/http/cookie/SetCookie2;

    move/from16 v28, v0

    if-nez v28, :cond_10

    .line 201
    :cond_11
    const/16 v18, 0x1

    goto :goto_5

    .line 205
    .end local v6           #cookie:Lorg/apache/http/cookie/Cookie;
    :cond_12
    if-eqz v18, :cond_13

    .line 206
    invoke-interface {v8}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v12

    .line 207
    .restart local v12       #header:Lorg/apache/http/Header;
    if-eqz v12, :cond_13

    .line 209
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 216
    .end local v12           #header:Lorg/apache/http/Header;
    .end local v18           #needVersionHeader:Z
    :cond_13
    const-string v28, "http.cookie-spec"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v28, "http.cookie-origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
