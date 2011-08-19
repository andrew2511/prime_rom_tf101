.class abstract Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;
.super Ljava/io/OutputStream;
.source "AbstractHttpOutputStream.java"


# instance fields
.field protected closed:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_c
    return-void
.end method

.method public final write(I)V
    .registers 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;->write([B)V

    .line 33
    return-void
.end method
