.class public final Lcom/google/android/voicesearch/endpointer/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final mFirLength:I = 0x2f


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    mul-int/lit8 v0, p3, 0x2

    if-eq p2, v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support 2:1 at the moment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const/4 v0, 0x2

    .line 55
    const/4 v1, 0x1

    .line 57
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 58
    iput v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mRateIn:I

    .line 59
    iput v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mRateOut:I

    .line 60
    return-void
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "someone forgot to close ResampleInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 64
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
    .line 69
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    div-int/lit8 v0, p3, 0x2

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mRateIn:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mRateOut:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2f

    mul-int/lit8 v0, v0, 0x2

    .line 78
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    if-nez v1, :cond_3

    .line 79
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    .line 88
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2f

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mRateOut:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mRateIn:I

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 89
    if-lez v0, :cond_5

    .line 90
    if-ge v0, p3, :cond_4

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    div-int/lit8 v2, v0, 0x2

    invoke-static {v1, v5, p1, p2, v2}, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->fir21([BI[BII)V

    .line 103
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mRateIn:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mRateOut:I

    div-int/2addr v1, v2

    .line 104
    iget v2, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    .line 105
    iget v2, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    iget-object v3, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    iget v4, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    invoke-static {v2, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    :cond_2
    :goto_2
    return v0

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 81
    new-array v0, v0, [B

    .line 82
    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    iget v2, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    goto :goto_0

    .line 90
    :cond_4
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    iget v2, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    iget-object v3, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBuf:[B

    array-length v3, v3

    iget v4, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 95
    if-ne v0, v6, :cond_6

    move v0, v6

    goto :goto_2

    .line 96
    :cond_6
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;->mBufCount:I

    goto :goto_0
.end method
