.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# static fields
.field private static final staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 4
    .parameter "schemes"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-nez p1, :cond_d

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_d
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 89
    return-void
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .registers 2

    .prologue
    .line 94
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 25
    .parameter "conn"
    .parameter "target"
    .parameter "local"
    .parameter "context"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p1, :cond_a

    .line 107
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Connection must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    :cond_a
    if-nez p2, :cond_14

    .line 111
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Target host must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 116
    :cond_14
    if-nez p5, :cond_1e

    .line 117
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Parameters must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 120
    :cond_1e
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 121
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Connection must not be open."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 125
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v17

    .line 126
    .local v17, schm:Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v18

    .line 129
    .local v18, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move v6, v0

    if-eqz v6, :cond_c7

    .line 130
    sget-object v4, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .line 131
    .local v4, plain_sf:Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v0, v18

    check-cast v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-object v15, v0

    .line 136
    .local v15, layered_sf:Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v11

    .line 138
    .local v11, addresses:[Ljava/net/InetAddress;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_54
    array-length v6, v11

    if-ge v14, v6, :cond_c6

    .line 139
    invoke-interface {v4}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    .line 140
    .local v5, sock:Ljava/net/Socket;
    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 143
    :try_start_63
    aget-object v6, v11, v14

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v7

    const/4 v9, 0x0

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    invoke-interface/range {v4 .. v10}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v12

    .line 147
    .local v12, connsock:Ljava/net/Socket;
    if-eq v5, v12, :cond_88

    .line 148
    move-object v5, v12

    .line 149
    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 162
    :cond_88
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 163
    if-eqz v15, :cond_cb

    .line 164
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-interface {v15, v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v16

    .line 168
    .local v16, layeredsock:Ljava/net/Socket;
    move-object/from16 v0, v16

    move-object v1, v5

    if-eq v0, v1, :cond_b6

    .line 169
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 171
    :cond_b6
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 186
    .end local v5           #sock:Ljava/net/Socket;
    .end local v12           #connsock:Ljava/net/Socket;
    .end local v16           #layeredsock:Ljava/net/Socket;
    :cond_c6
    :goto_c6
    return-void

    .line 133
    .end local v4           #plain_sf:Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v11           #addresses:[Ljava/net/InetAddress;
    .end local v14           #i:I
    .end local v15           #layered_sf:Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :cond_c7
    move-object/from16 v4, v18

    .line 134
    .restart local v4       #plain_sf:Lorg/apache/http/conn/scheme/SocketFactory;
    const/4 v15, 0x0

    .restart local v15       #layered_sf:Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    goto :goto_4b

    .line 173
    .restart local v5       #sock:Ljava/net/Socket;
    .restart local v11       #addresses:[Ljava/net/InetAddress;
    .restart local v12       #connsock:Ljava/net/Socket;
    .restart local v14       #i:I
    :cond_cb
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_da
    .catch Ljava/net/ConnectException; {:try_start_63 .. :try_end_da} :catch_db
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_63 .. :try_end_da} :catch_ec

    goto :goto_c6

    .line 176
    .end local v12           #connsock:Ljava/net/Socket;
    :catch_db
    move-exception v6

    move-object v13, v6

    .line 177
    .local v13, ex:Ljava/net/ConnectException;
    array-length v6, v11

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v14, v6, :cond_f4

    .line 178
    new-instance v6, Lorg/apache/http/conn/HttpHostConnectException;

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v6

    .line 180
    .end local v13           #ex:Ljava/net/ConnectException;
    :catch_ec
    move-exception v6

    move-object v13, v6

    .line 181
    .local v13, ex:Lorg/apache/http/conn/ConnectTimeoutException;
    array-length v6, v11

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v14, v6, :cond_f4

    .line 182
    throw v13

    .line 138
    .end local v13           #ex:Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_f4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_54
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 6
    .parameter "sock"
    .parameter "context"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 254
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 256
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 257
    .local v0, linger:I
    if-ltz v0, :cond_1a

    .line 258
    if-lez v0, :cond_1b

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 261
    :cond_1a
    return-void

    .line 258
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 13
    .parameter "conn"
    .parameter "target"
    .parameter "context"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    if-nez p1, :cond_a

    .line 198
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :cond_a
    if-nez p2, :cond_14

    .line 202
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Target host must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    :cond_14
    if-nez p4, :cond_1e

    .line 207
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    :cond_1e
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 211
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must be open."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    :cond_2c
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 216
    .local v2, schm:Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-nez v4, :cond_61

    .line 217
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target scheme ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") must have layered socket factory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_61
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 225
    .local v1, lsf:Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :try_start_67
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v1, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_7b
    .catch Ljava/net/ConnectException; {:try_start_67 .. :try_end_7b} :catch_87

    move-result-object v3

    .line 230
    .local v3, sock:Ljava/net/Socket;
    invoke-virtual {p0, v3, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 231
    invoke-interface {v1, v3}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    invoke-interface {p1, v3, p2, v4, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 234
    return-void

    .line 227
    .end local v3           #sock:Ljava/net/Socket;
    :catch_87
    move-exception v4

    move-object v0, v4

    .line 228
    .local v0, ex:Ljava/net/ConnectException;
    new-instance v4, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v4, p2, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v4
.end method
