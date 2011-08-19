.class public Lorg/apache/http/impl/client/DefaultRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultRedirectHandler.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    .line 73
    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .registers 21
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 96
    if-nez p1, :cond_a

    .line 97
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "HTTP response may not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 100
    :cond_a
    const-string v15, "location"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 101
    .local v7, locationHeader:Lorg/apache/http/Header;
    if-nez v7, :cond_38

    .line 103
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Received redirect response "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " but no location header"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 107
    :cond_38
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    move-object v15, v0

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_6b

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    move-object v15, v0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Redirect requested to location \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 114
    :cond_6b
    :try_start_6b
    new-instance v14, Ljava/net/URI;

    invoke-direct {v14, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/net/URISyntaxException; {:try_start_6b .. :try_end_70} :catch_a4

    .line 119
    .local v14, uri:Ljava/net/URI;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    .line 122
    .local v8, params:Lorg/apache/http/params/HttpParams;
    invoke-virtual {v14}, Ljava/net/URI;->isAbsolute()Z

    move-result v15

    if-nez v15, :cond_fc

    .line 123
    const-string v15, "http.protocol.reject-relative-redirect"

    invoke-interface {v8, v15}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c6

    .line 124
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Relative redirect location \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' not allowed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 115
    .end local v8           #params:Lorg/apache/http/params/HttpParams;
    .end local v14           #uri:Ljava/net/URI;
    :catch_a4
    move-exception v15

    move-object v5, v15

    .line 116
    .local v5, ex:Ljava/net/URISyntaxException;
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid redirect URI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 128
    .end local v5           #ex:Ljava/net/URISyntaxException;
    .restart local v8       #params:Lorg/apache/http/params/HttpParams;
    .restart local v14       #uri:Ljava/net/URI;
    :cond_c6
    const-string v15, "http.target_host"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/http/HttpHost;

    .line 130
    .local v13, target:Lorg/apache/http/HttpHost;
    if-nez v13, :cond_db

    .line 131
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Target host not available in the HTTP context"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 135
    :cond_db
    const-string v15, "http.request"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/http/HttpRequest;

    .line 139
    .local v11, request:Lorg/apache/http/HttpRequest;
    :try_start_e6
    new-instance v12, Ljava/net/URI;

    invoke-interface {v11}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 140
    .local v12, requestURI:Ljava/net/URI;
    const/4 v15, 0x1

    invoke-static {v12, v13, v15}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v4

    .line 141
    .local v4, absoluteRequestURI:Ljava/net/URI;
    invoke-static {v4, v14}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_fb
    .catch Ljava/net/URISyntaxException; {:try_start_e6 .. :try_end_fb} :catch_169

    move-result-object v14

    .line 147
    .end local v4           #absoluteRequestURI:Ljava/net/URI;
    .end local v11           #request:Lorg/apache/http/HttpRequest;
    .end local v12           #requestURI:Ljava/net/URI;
    .end local v13           #target:Lorg/apache/http/HttpHost;
    :cond_fc
    const-string v15, "http.protocol.allow-circular-redirects"

    invoke-interface {v8, v15}, Lorg/apache/http/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_18e

    .line 149
    const-string v15, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/impl/client/RedirectLocations;

    .line 152
    .local v9, redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    if-nez v9, :cond_11f

    .line 153
    new-instance v9, Lorg/apache/http/impl/client/RedirectLocations;

    .end local v9           #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    invoke-direct {v9}, Lorg/apache/http/impl/client/RedirectLocations;-><init>()V

    .line 154
    .restart local v9       #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    const-string v15, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_11f
    invoke-virtual {v14}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_189

    .line 160
    :try_start_125
    new-instance v13, Lorg/apache/http/HttpHost;

    invoke-virtual {v14}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Ljava/net/URI;->getPort()I

    move-result v16

    invoke-virtual {v14}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    .restart local v13       #target:Lorg/apache/http/HttpHost;
    const/4 v15, 0x1

    invoke-static {v14, v13, v15}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    :try_end_140
    .catch Ljava/net/URISyntaxException; {:try_start_125 .. :try_end_140} :catch_179

    move-result-object v10

    .line 172
    .end local v13           #target:Lorg/apache/http/HttpHost;
    .local v10, redirectURI:Ljava/net/URI;
    :goto_141
    invoke-virtual {v9, v10}, Lorg/apache/http/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v15

    if-eqz v15, :cond_18b

    .line 173
    new-instance v15, Lorg/apache/http/client/CircularRedirectException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Circular redirect to \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 142
    .end local v9           #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    .end local v10           #redirectURI:Ljava/net/URI;
    .restart local v11       #request:Lorg/apache/http/HttpRequest;
    .restart local v13       #target:Lorg/apache/http/HttpHost;
    :catch_169
    move-exception v15

    move-object v5, v15

    .line 143
    .restart local v5       #ex:Ljava/net/URISyntaxException;
    new-instance v15, Lorg/apache/http/ProtocolException;

    invoke-virtual {v5}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 165
    .end local v5           #ex:Ljava/net/URISyntaxException;
    .end local v11           #request:Lorg/apache/http/HttpRequest;
    .end local v13           #target:Lorg/apache/http/HttpHost;
    .restart local v9       #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    :catch_179
    move-exception v15

    move-object v5, v15

    .line 166
    .restart local v5       #ex:Ljava/net/URISyntaxException;
    new-instance v15, Lorg/apache/http/ProtocolException;

    invoke-virtual {v5}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 169
    .end local v5           #ex:Ljava/net/URISyntaxException;
    :cond_189
    move-object v10, v14

    .restart local v10       #redirectURI:Ljava/net/URI;
    goto :goto_141

    .line 176
    :cond_18b
    invoke-virtual {v9, v10}, Lorg/apache/http/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    .line 180
    .end local v9           #redirectLocations:Lorg/apache/http/impl/client/RedirectLocations;
    .end local v10           #redirectURI:Ljava/net/URI;
    :cond_18e
    return-object v14
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 6
    .parameter "response"
    .parameter "context"

    .prologue
    .line 78
    if-nez p1, :cond_a

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP response may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_a
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 82
    .local v0, statusCode:I
    packed-switch v0, :pswitch_data_1a

    .line 89
    :pswitch_15
    const/4 v1, 0x0

    :goto_16
    return v1

    .line 87
    :pswitch_17
    const/4 v1, 0x1

    goto :goto_16

    .line 82
    nop

    :pswitch_data_1a
    .packed-switch 0x12d
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method
