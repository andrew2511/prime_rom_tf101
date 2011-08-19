.class public final Lorg/apache/http/conn/MultihomePlainSocketFactory;
.super Ljava/lang/Object;
.source "MultihomePlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/MultihomePlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/MultihomePlainSocketFactory;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 17
    .parameter "sock"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p2, :cond_a

    .line 106
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Target host may not be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 108
    :cond_a
    if-nez p6, :cond_14

    .line 109
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Parameters may not be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 112
    :cond_14
    if-nez p1, :cond_1a

    .line 113
    invoke-virtual {p0}, Lorg/apache/http/conn/MultihomePlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    .line 115
    :cond_1a
    if-nez p4, :cond_1e

    if-lez p5, :cond_29

    .line 118
    :cond_1e
    if-gez p5, :cond_21

    .line 119
    const/4 p5, 0x0

    .line 121
    :cond_21
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 123
    .local v5, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {p1, v5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 126
    .end local v5           #isa:Ljava/net/InetSocketAddress;
    :cond_29
    invoke-static/range {p6 .. p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v7

    .line 128
    .local v7, timeout:I
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 129
    .local v4, inetadrs:[Ljava/net/InetAddress;
    new-instance v1, Ljava/util/ArrayList;

    array-length v8, v4

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 133
    const/4 v6, 0x0

    .line 134
    .local v6, lastEx:Ljava/io/IOException;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 136
    .local v0, address:Ljava/net/InetAddress;
    :try_start_52
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, v0, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v8, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_5a
    .catch Ljava/net/SocketTimeoutException; {:try_start_52 .. :try_end_5a} :catch_5d
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_60

    .line 147
    .end local v0           #address:Ljava/net/InetAddress;
    :cond_5a
    if-eqz v6, :cond_69

    .line 148
    throw v6

    .line 138
    .restart local v0       #address:Ljava/net/InetAddress;
    :catch_5d
    move-exception v8

    move-object v2, v8

    .line 139
    .local v2, ex:Ljava/net/SocketTimeoutException;
    throw v2

    .line 140
    .end local v2           #ex:Ljava/net/SocketTimeoutException;
    :catch_60
    move-exception v8

    move-object v2, v8

    .line 142
    .local v2, ex:Ljava/io/IOException;
    new-instance p1, Ljava/net/Socket;

    .end local p1
    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    .line 144
    .restart local p1
    move-object v6, v2

    .line 145
    goto :goto_46

    .line 150
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v2           #ex:Ljava/io/IOException;
    :cond_69
    return-object p1
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 82
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 199
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 209
    const-class v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .registers 4
    .parameter "sock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 168
    if-nez p1, :cond_a

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/Socket;

    if-eq v0, v1, :cond_1a

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1a
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_28
    const/4 v0, 0x0

    return v0
.end method
