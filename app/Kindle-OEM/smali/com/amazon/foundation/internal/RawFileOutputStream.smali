.class public Lcom/amazon/foundation/internal/RawFileOutputStream;
.super Ljava/lang/Object;
.source "RawFileOutputStream.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDataOutputStream;


# instance fields
.field private stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/foundation/internal/RawFileOutputStream;->stream:Ljava/io/OutputStream;

    .line 25
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/RawFileOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public close()Z
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x1

    .line 51
    .local v0, status:Z
    :try_start_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/RawFileOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 52
    iget-object v1, p0, Lcom/amazon/foundation/internal/RawFileOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public write([B)I
    .locals 2
    .parameter "buf"

    .prologue
    .line 75
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/foundation/internal/RawFileOutputStream;->write([BII)I

    move-result v0

    return v0
.end method

.method public write([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/RawFileOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p3

    .line 96
    :goto_0
    return v0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing the to the Stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method
