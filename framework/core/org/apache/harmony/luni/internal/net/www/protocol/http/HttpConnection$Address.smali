.class public final Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field private final proxy:Ljava/net/Proxy;

.field private final requiresTunnel:Z

.field private final socketHost:Ljava/lang/String;

.field private final socketPort:I

.field private final uriHost:Ljava/lang/String;

.field private final uriPort:I


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->requiresTunnel:Z

    .line 255
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriPort:I

    .line 257
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    .line 258
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriPort:I

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->socketPort:I

    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/Proxy;Z)V
    .registers 10
    .parameter "uri"
    .parameter "proxy"
    .parameter "requiresTunnel"

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    .line 269
    iput-boolean p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->requiresTunnel:Z

    .line 270
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriPort:I

    .line 273
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    .line 274
    .local v1, proxyAddress:Ljava/net/SocketAddress;
    instance-of v3, v1, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_38

    .line 275
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_38
    move-object v0, v1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 279
    .local v2, proxySocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    .line 280
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->socketPort:I

    .line 281
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/net/Proxy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 244
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->socketPort:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 244
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->requiresTunnel:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 244
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriPort:I

    return v0
.end method


# virtual methods
.method public connect(I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .registers 4
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;ILorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 284
    instance-of v2, p1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    if-eqz v2, :cond_2d

    .line 285
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    move-object v1, v0

    .line 286
    .local v1, that:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriPort:I

    iget v3, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriPort:I

    if-ne v2, v3, :cond_2b

    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->requiresTunnel:Z

    iget-boolean v3, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->requiresTunnel:Z

    if-ne v2, v3, :cond_2b

    const/4 v2, 0x1

    .line 291
    .end local v1           #that:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    :goto_2a
    return v2

    .restart local v1       #that:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    :cond_2b
    move v2, v4

    .line 286
    goto :goto_2a

    .end local v1           #that:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    :cond_2d
    move v2, v4

    .line 291
    goto :goto_2a
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 295
    const/16 v0, 0x11

    .line 296
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 297
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriPort:I

    add-int v0, v1, v2

    .line 298
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    :goto_1f
    add-int v0, v1, v2

    .line 299
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->requiresTunnel:Z

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :goto_28
    add-int v0, v1, v2

    .line 300
    return v0

    :cond_2b
    move v2, v3

    .line 298
    goto :goto_1f

    :cond_2d
    move v2, v3

    .line 299
    goto :goto_28
.end method
