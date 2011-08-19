.class public final Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;
.super Ljava/io/InputStream;
.source "UlawEncoderInputStream.java"


# static fields
.field private static final MAX_ULAW:I = 0x2000

.field private static final SCALE_BITS:I = 0x10


# instance fields
.field private final mBuf:[B

.field private mBufCount:I

.field private mIn:Ljava/io/InputStream;

.field private mMax:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    iput v1, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mMax:I

    .line 34
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBuf:[B

    .line 35
    iput v1, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    .line 124
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 125
    iput p2, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mMax:I

    .line 126
    return-void
.end method

.method public static encode([BI[BIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    if-gtz p5, :cond_0

    const/16 p5, 0x2000

    .line 66
    :cond_0
    const/high16 v0, 0x2000

    div-int p5, v0, p5

    .line 68
    const/4 v0, 0x0

    move v3, v0

    move v0, p1

    move p1, v3

    :goto_0
    if-ge p1, p4, :cond_14

    .line 69
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 70
    mul-int/2addr v0, p5

    shr-int/lit8 v0, v0, 0x10

    .line 73
    if-ltz v0, :cond_a

    .line 74
    if-gtz v0, :cond_1

    const/16 v0, 0xff

    .line 96
    :goto_1
    add-int/lit8 v1, p3, 0x1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 68
    add-int/lit8 p1, p1, 0x1

    move p3, v1

    move v0, v2

    goto :goto_0

    .line 74
    :cond_1
    const/16 v1, 0x1e

    if-gt v0, v1, :cond_2

    const/16 v1, 0x1e

    sub-int v0, v1, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0xf0

    goto :goto_1

    :cond_2
    const/16 v1, 0x5e

    if-gt v0, v1, :cond_3

    const/16 v1, 0x5e

    sub-int v0, v1, v0

    shr-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0xe0

    goto :goto_1

    :cond_3
    const/16 v1, 0xde

    if-gt v0, v1, :cond_4

    const/16 v1, 0xde

    sub-int v0, v1, v0

    shr-int/lit8 v0, v0, 0x3

    add-int/lit16 v0, v0, 0xd0

    goto :goto_1

    :cond_4
    const/16 v1, 0x1de

    if-gt v0, v1, :cond_5

    const/16 v1, 0x1de

    sub-int v0, v1, v0

    shr-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0xc0

    goto :goto_1

    :cond_5
    const/16 v1, 0x3de

    if-gt v0, v1, :cond_6

    const/16 v1, 0x3de

    sub-int v0, v1, v0

    shr-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0xb0

    goto :goto_1

    :cond_6
    const/16 v1, 0x7de

    if-gt v0, v1, :cond_7

    const/16 v1, 0x7de

    sub-int v0, v1, v0

    shr-int/lit8 v0, v0, 0x6

    add-int/lit16 v0, v0, 0xa0

    goto :goto_1

    :cond_7
    const/16 v1, 0xfde

    if-gt v0, v1, :cond_8

    const/16 v1, 0xfde

    sub-int v0, v1, v0

    shr-int/lit8 v0, v0, 0x7

    add-int/lit16 v0, v0, 0x90

    goto :goto_1

    :cond_8
    const/16 v1, 0x1fde

    if-gt v0, v1, :cond_9

    const/16 v1, 0x1fde

    sub-int v0, v1, v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x80

    goto :goto_1

    :cond_9
    const/16 v0, 0x80

    goto :goto_1

    .line 85
    :cond_a
    const/4 v1, -0x1

    if-gt v1, v0, :cond_b

    const/16 v0, 0x7f

    goto :goto_1

    :cond_b
    const/16 v1, -0x1f

    if-gt v1, v0, :cond_c

    const/16 v1, -0x1f

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x70

    goto/16 :goto_1

    :cond_c
    const/16 v1, -0x5f

    if-gt v1, v0, :cond_d

    const/16 v1, -0x5f

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x60

    goto/16 :goto_1

    :cond_d
    const/16 v1, -0xdf

    if-gt v1, v0, :cond_e

    const/16 v1, -0xdf

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x50

    goto/16 :goto_1

    :cond_e
    const/16 v1, -0x1df

    if-gt v1, v0, :cond_f

    const/16 v1, -0x1df

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x40

    goto/16 :goto_1

    :cond_f
    const/16 v1, -0x3df

    if-gt v1, v0, :cond_10

    const/16 v1, -0x3df

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x30

    goto/16 :goto_1

    :cond_10
    const/16 v1, -0x7df

    if-gt v1, v0, :cond_11

    const/16 v1, -0x7df

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x20

    goto/16 :goto_1

    :cond_11
    const/16 v1, -0xfdf

    if-gt v1, v0, :cond_12

    const/16 v1, -0xfdf

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x10

    goto/16 :goto_1

    :cond_12
    const/16 v1, -0x1fdf

    if-gt v1, v0, :cond_13

    const/16 v1, -0x1fdf

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x0

    goto/16 :goto_1

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 98
    :cond_14
    return-void
.end method

.method public static maxAbsPcm([BII)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    move v1, v0

    move v2, p1

    .line 110
    :goto_0
    if-ge v0, p2, :cond_2

    .line 111
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 112
    if-gez v2, :cond_0

    neg-int v2, v2

    .line 113
    :cond_0
    if-le v2, v1, :cond_1

    move v1, v2

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    .line 115
    :cond_2
    return v1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 165
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 167
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 157
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
    .line 152
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 130
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget v2, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    .line 133
    :cond_1
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 134
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBuf:[B

    iget v3, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v4, p3, 0x2

    iget-object v5, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBuf:[B

    array-length v5, v5

    iget v6, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 135
    if-ne v0, v7, :cond_0

    move v0, v7

    .line 147
    :goto_0
    return v0

    .line 140
    :cond_2
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 141
    iget-object v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBuf:[B

    iget v5, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mMax:I

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->encode([BI[BIII)V

    .line 144
    iget v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    move v0, v1

    .line 145
    :goto_1
    iget v1, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBufCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBuf:[B

    iget-object v2, p0, Lcom/google/android/voicesearch/endpointer/UlawEncoderInputStream;->mBuf:[B

    mul-int/lit8 v3, v4, 0x2

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 147
    goto :goto_0
.end method
