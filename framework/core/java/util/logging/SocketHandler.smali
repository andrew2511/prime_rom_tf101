.class public Ljava/util/logging/SocketHandler;
.super Ljava/util/logging/StreamHandler;
.source "SocketHandler.java"


# static fields
.field private static final DEFAULT_FORMATTER:Ljava/lang/String; = "java.util.logging.XMLFormatter"

.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "ALL"


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 79
    const-string v0, "ALL"

    const-string v1, "java.util.logging.XMLFormatter"

    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string v1, "java.util.logging.SocketHandler.host"

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    const-string v2, "java.util.logging.SocketHandler.port"

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    const-string v0, "ALL"

    const-string v1, "java.util.logging.XMLFormatter"

    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private initSocket(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 112
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "host == null || host.isEmpty()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_10
    const/4 v1, 0x0

    .line 117
    .local v1, p:I
    :try_start_11
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_14} :catch_1f

    move-result v1

    .line 121
    if-gtz v1, :cond_28

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal port argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :catch_1f
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal port argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_28
    :try_start_28
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, p1, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_3e

    .line 132
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-super {p0, v2}, Ljava/util/logging/StreamHandler;->internalSetOutputStream(Ljava/io/OutputStream;)V

    .line 133
    return-void

    .line 127
    :catch_3e
    move-exception v2

    move-object v0, v2

    .line 128
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "Failed to establish the network connection"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 130
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 145
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 146
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_f

    .line 147
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 154
    :cond_f
    :goto_f
    return-void

    .line 150
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "Exception occurred when closing the socket handler"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_f
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 2
    .parameter "record"

    .prologue
    .line 164
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 165
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 166
    return-void
.end method
