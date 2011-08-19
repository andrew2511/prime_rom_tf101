.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final mFirLength:I = 0x1d


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mOneByte:[B

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 6
    .parameter "inputStream"
    .parameter "rateIn"
    .parameter "rateOut"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    .line 64
    mul-int/lit8 v0, p3, 0x2

    if-eq p2, v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support 2:1 at the moment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_14
    const/4 p2, 0x2

    .line 66
    const/4 p3, 0x1

    .line 68
    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 69
    iput p2, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    .line 70
    iput p3, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    .line 71
    return-void
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    :try_start_1
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 135
    :cond_a
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 137
    return-void

    .line 135
    :catchall_d
    move-exception v0

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    .line 142
    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close ResampleInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_10
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    .line 76
    .local v0, rtn:I
    if-ne v0, v3, :cond_11

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 16
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 86
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v5, :cond_e

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "not open"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_e
    div-int/lit8 v5, p3, 0x2

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1d

    mul-int/lit8 v4, v5, 0x2

    .line 90
    .local v4, nIn:I
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    if-nez v5, :cond_58

    .line 91
    new-array v5, v4, [B

    iput-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    .line 100
    :cond_22
    :goto_22
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0x1d

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    div-int/2addr v5, v6

    mul-int/lit8 v1, v5, 0x2

    .line 101
    .local v1, len:I
    if-lez v1, :cond_6f

    .line 102
    if-ge v1, p3, :cond_69

    move p3, v1

    .line 112
    :goto_36
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    div-int/lit8 v6, p3, 0x2

    invoke-static {v5, v10, p1, p2, v6}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    .line 115
    iget v5, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v5, p3

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int v3, v5, v6

    .line 116
    .local v3, nFwd:I
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v5, v3

    iput v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    .line 117
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    if-lez v5, :cond_56

    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v5, v3, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    move v5, p3

    .line 119
    .end local v3           #nFwd:I
    :goto_57
    return v5

    .line 92
    .end local v1           #len:I
    :cond_58
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v5, v5

    if-le v4, v5, :cond_22

    .line 93
    new-array v0, v4, [B

    .line 94
    .local v0, bf:[B
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v5, v10, v0, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    goto :goto_22

    .line 102
    .end local v0           #bf:[B
    .restart local v1       #len:I
    :cond_69
    div-int/lit8 v5, p3, 0x2

    mul-int/lit8 v5, v5, 0x2

    move p3, v5

    goto :goto_36

    .line 106
    :cond_6f
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget-object v8, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v8, v8

    iget v9, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 107
    .local v2, n:I
    if-ne v2, v11, :cond_83

    move v5, v11

    goto :goto_57

    .line 108
    :cond_83
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    goto :goto_22
.end method
