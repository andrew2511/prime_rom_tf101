.class public final Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$1;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    }
.end annotation


# instance fields
.field private final address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private final socket:Ljava/net/Socket;

.field private sslInputStream:Ljava/io/InputStream;

.field private sslOutputStream:Ljava/io/OutputStream;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;

.field private unverifiedSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;I)V
    .registers 10
    .parameter "config"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, socketCandidate:Ljava/net/Socket;
    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->socketHost:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 70
    .local v0, addresses:[Ljava/net/InetAddress;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    array-length v4, v0

    if-ge v2, v4, :cond_3c

    .line 71
    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$100(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    if-eqz v4, :cond_3f

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$100(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_3f

    new-instance v4, Ljava/net/Socket;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$100(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    move-object v3, v4

    .line 75
    :goto_2e
    :try_start_2e
    new-instance v4, Ljava/net/InetSocketAddress;

    aget-object v5, v0, v2

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->socketPort:I
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_46

    .line 85
    :cond_3c
    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 86
    return-void

    .line 71
    :cond_3f
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    move-object v3, v4

    goto :goto_2e

    .line 78
    :catch_46
    move-exception v4

    move-object v1, v4

    .line 79
    .local v1, e:Ljava/io/IOException;
    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_4e

    .line 80
    throw v1

    .line 70
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;ILorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;I)V

    return-void
.end method

.method private getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    goto :goto_6
.end method


# virtual methods
.method public closeSocketAndStreams()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 92
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 95
    return-void
.end method

.method public getAddress()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_13

    .line 115
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_10

    .line 116
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 118
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 131
    :goto_12
    return-object v1

    .line 119
    :cond_13
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_29

    .line 126
    const/16 v0, 0x80

    .line 127
    .local v0, bufferSize:I
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->requiresTunnel:Z
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$300(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_27
    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 131
    .end local v0           #bufferSize:I
    :cond_29
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    goto :goto_12

    .line 127
    .restart local v0       #bufferSize:I
    :cond_2c
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_27
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_13

    .line 103
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_10

    .line 104
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 106
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 110
    :goto_12
    return-object v0

    .line 107
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1f

    .line 108
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 110
    :cond_1f
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    goto :goto_12
.end method

.method public getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method protected isEligibleForRecycling()Z
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method isStale()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 199
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    .line 224
    :goto_9
    return v5

    .line 203
    :cond_a
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 204
    .local v2, in:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    if-lez v5, :cond_16

    move v5, v7

    .line 205
    goto :goto_9

    .line 208
    :cond_16
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    .line 209
    .local v4, socket:Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I

    move-result v3

    .line 211
    .local v3, soTimeout:I
    const/4 v5, 0x1

    :try_start_1f
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 212
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->mark(I)V

    .line 213
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 214
    .local v0, byteRead:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_35

    .line 215
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_48
    .catch Ljava/net/SocketTimeoutException; {:try_start_1f .. :try_end_30} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_30} :catch_41

    .line 224
    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v7

    goto :goto_9

    :cond_35
    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v6

    goto :goto_9

    .line 219
    .end local v0           #byteRead:I
    :catch_3a
    move-exception v5

    move-object v1, v5

    .line 224
    .local v1, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v7

    goto :goto_9

    .line 221
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_41
    move-exception v5

    move-object v1, v5

    .line 224
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v6

    goto :goto_9

    .end local v1           #e:Ljava/io/IOException;
    :catchall_48
    move-exception v5

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v5
.end method

.method public setSoTimeout(I)V
    .registers 3
    .parameter "readTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 99
    return-void
.end method

.method public setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .registers 9
    .parameter "sslSocketFactory"
    .parameter "tlsTolerant"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 154
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$400(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriPort:I
    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$500(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    .line 157
    if-eqz p2, :cond_3f

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    instance-of v1, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    if-eqz v1, :cond_3f

    .line 158
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 159
    .local v0, openSslSocket:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ZLIB"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setEnabledCompressionMethods([Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    .line 161
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->socketHost:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 167
    .end local v0           #openSslSocket:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    :goto_39
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 168
    return-void

    .line 164
    :cond_3f
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "SSLv3"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_39
.end method

.method public verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;
    .registers 5
    .parameter "hostnameVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$400(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 181
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    #getter for: Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;->access$400(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was not verified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_37
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 184
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
