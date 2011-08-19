.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    .line 76
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 30
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_a

    .line 81
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "HTTP request may not be null"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 83
    :cond_a
    if-nez p2, :cond_14

    .line 84
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "HTTP context may not be null"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 88
    :cond_14
    const-string v24, "http.cookie-store"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/client/CookieStore;

    .line 90
    .local v9, cookieStore:Lorg/apache/http/client/CookieStore;
    if-nez v9, :cond_2e

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v24, v0

    const-string v25, "Cookie store not available in HTTP context"

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 190
    :goto_2d
    return-void

    .line 96
    :cond_2e
    const-string v24, "http.cookiespec-registry"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 98
    .local v20, registry:Lorg/apache/http/cookie/CookieSpecRegistry;
    if-nez v20, :cond_48

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v24, v0

    const-string v25, "CookieSpec registry not available in HTTP context"

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_2d

    .line 104
    :cond_48
    const-string v24, "http.target_host"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/http/HttpHost;

    .line 106
    .local v22, targetHost:Lorg/apache/http/HttpHost;
    if-nez v22, :cond_5e

    .line 107
    new-instance v24, Ljava/lang/IllegalStateException;

    const-string v25, "Target host not specified in HTTP context"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 111
    :cond_5e
    const-string v24, "http.connection"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/conn/ManagedClientConnection;

    .line 113
    .local v5, conn:Lorg/apache/http/conn/ManagedClientConnection;
    if-nez v5, :cond_74

    .line 114
    new-instance v24, Ljava/lang/IllegalStateException;

    const-string v25, "Client connection not specified in HTTP context"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 117
    :cond_74
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v18

    .line 118
    .local v18, policy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_a8

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CookieSpec selected: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 123
    :cond_a8
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    move/from16 v24, v0

    if-eqz v24, :cond_150

    .line 124
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    move-object v6, v0

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v21

    .line 134
    .local v21, requestURI:Ljava/net/URI;
    :goto_b9
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, hostName:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v19

    .line 136
    .local v19, port:I
    if-gez v19, :cond_c7

    .line 137
    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v19

    .line 140
    :cond_c7
    new-instance v7, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    move-result v25

    move-object v0, v7

    move-object v1, v14

    move/from16 v2, v19

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 147
    .local v7, cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v8

    .line 149
    .local v8, cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v9}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v24

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .local v10, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v16, matchedCookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_ff
    :goto_ff
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_18c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/cookie/Cookie;

    .line 153
    .local v6, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v8, v6, v7}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v24

    if-eqz v24, :cond_ff

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_149

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cookie "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " match "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 157
    :cond_149
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ff

    .line 127
    .end local v6           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v7           #cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    .end local v8           #cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    .end local v10           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v14           #hostName:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #matchedCookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v19           #port:I
    .end local v21           #requestURI:Ljava/net/URI;
    :cond_150
    :try_start_150
    new-instance v21, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_161
    .catch Ljava/net/URISyntaxException; {:try_start_150 .. :try_end_161} :catch_163

    .restart local v21       #requestURI:Ljava/net/URI;
    goto/16 :goto_b9

    .line 128
    .end local v21           #requestURI:Ljava/net/URI;
    :catch_163
    move-exception v24

    move-object/from16 v11, v24

    .line 129
    .local v11, ex:Ljava/net/URISyntaxException;
    new-instance v24, Lorg/apache/http/ProtocolException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Invalid request URI: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 161
    .end local v11           #ex:Ljava/net/URISyntaxException;
    .restart local v7       #cookieOrigin:Lorg/apache/http/cookie/CookieOrigin;
    .restart local v8       #cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    .restart local v10       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v14       #hostName:Ljava/lang/String;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #matchedCookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v19       #port:I
    .restart local v21       #requestURI:Ljava/net/URI;
    :cond_18c
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1b0

    .line 162
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 163
    .local v13, headers:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_19d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1b0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/http/Header;

    .line 164
    .local v12, header:Lorg/apache/http/Header;
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_19d

    .line 168
    .end local v12           #header:Lorg/apache/http/Header;
    .end local v13           #headers:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_1b0
    invoke-interface {v8}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v23

    .line 169
    .local v23, ver:I
    if-lez v23, :cond_1e3

    .line 170
    const/16 v17, 0x0

    .line 171
    .local v17, needVersionHeader:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1bc
    :goto_1bc
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1d5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/cookie/Cookie;

    .line 172
    .restart local v6       #cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1bc

    .line 173
    const/16 v17, 0x1

    goto :goto_1bc

    .line 177
    .end local v6           #cookie:Lorg/apache/http/cookie/Cookie;
    :cond_1d5
    if-eqz v17, :cond_1e3

    .line 178
    invoke-interface {v8}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v12

    .line 179
    .restart local v12       #header:Lorg/apache/http/Header;
    if-eqz v12, :cond_1e3

    .line 181
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 188
    .end local v12           #header:Lorg/apache/http/Header;
    .end local v17           #needVersionHeader:Z
    :cond_1e3
    const-string v24, "http.cookie-spec"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v24, "http.cookie-origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2d
.end method
