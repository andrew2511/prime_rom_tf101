.class public final Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;
.super Ljava/io/InputStream;
.source "FileLoopInputStream.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "FileLoopInputStream"


# instance fields
.field private filename:Ljava/lang/String;

.field private fis:Ljava/io/FileInputStream;

.field private sampleRate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->fis:Ljava/io/FileInputStream;

    .line 40
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->filename:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->sampleRate:I

    .line 42
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->fis:Ljava/io/FileInputStream;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->fis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Single-byte read not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 63
    const v1, 0xf4240

    iget v2, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->sampleRate:I

    div-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x2

    mul-int/2addr v1, v2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long v1, v2, v4

    .line 66
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-ltz v3, :cond_0

    .line 68
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->close()V

    .line 72
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->fis:Ljava/io/FileInputStream;

    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :cond_1
    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "FileLoopInputStream"

    const-string v2, "I/O problem whilst streaming file"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    throw v0
.end method
