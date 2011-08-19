.class public final Lcom/zinio/mobile/android/e/b;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/e/a;

.field private b:Ljava/io/OutputStream;

.field private c:[B

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/zinio/mobile/android/e/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zinio/mobile/android/e/b;->c:[B

    .line 30
    iput-object p1, p0, Lcom/zinio/mobile/android/e/b;->b:Ljava/io/OutputStream;

    .line 31
    iput-object p2, p0, Lcom/zinio/mobile/android/e/b;->a:Lcom/zinio/mobile/android/e/a;

    .line 32
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/e/b;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 76
    return-void

    .line 72
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final flush()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 66
    return-void
.end method

.method public final write(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->c:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 37
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->a:Lcom/zinio/mobile/android/e/a;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/b;->c:[B

    iget-object v3, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    const/4 v5, 0x1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/zinio/mobile/android/e/a;->a([BI[BII)V

    .line 38
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    .line 42
    :cond_0
    return-void
.end method

.method public final write([B)V
    .locals 2
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/zinio/mobile/android/e/b;->write([BII)V

    .line 47
    return-void
.end method

.method public final write([BII)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 51
    if-lez p3, :cond_1

    new-array v0, p3, [B

    :goto_0
    iput-object v0, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    .line 52
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->a:Lcom/zinio/mobile/android/e/a;

    iget-object v3, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zinio/mobile/android/e/a;->a([BI[BII)V

    .line 53
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/zinio/mobile/android/e/b;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 55
    iput-object v6, p0, Lcom/zinio/mobile/android/e/b;->d:[B

    .line 57
    :cond_0
    return-void

    :cond_1
    move-object v0, v6

    .line 51
    goto :goto_0
.end method
