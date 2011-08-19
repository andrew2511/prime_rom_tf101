.class public Lcom/google/android/music/dl/MP3StreamWrapper;
.super Ljava/io/OutputStream;
.source "MP3StreamWrapper.java"

# interfaces
.implements Lcom/google/android/music/dl/MusicStreamChunker;


# static fields
.field private static final BITRATES_BY_VERSION_LAYER:[[[I = null

.field protected static final LAYER_1:I = 0x3

.field protected static final LAYER_2:I = 0x2

.field protected static final LAYER_3:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_FRAME_SIZE:I = 0xb49

.field protected static final MPEG_VERSION_1:I = 0x3

.field protected static final MPEG_VERSION_2:I = 0x2

.field protected static final MPEG_VERSION_25:I = 0x0

.field private static final SAMPLES_PER_FRAME_BY_VERSION_LAYER:[[I = null

.field private static final SAMPLE_RATES_BY_VERSION:[[I = null

.field private static final TAG:Ljava/lang/String; = "MP3Stream"


# instance fields
.field private mBuff:[B

.field private mBuffSize:I

.field private mCurrentFrameDurationMs:I

.field private mFrameSize:I

.field private mInFrame:Z

.field private final mOut:Ljava/io/OutputStream;

.field private mTotalFrames:I

.field private mTotalStreamedDurationMs:J

.field private mWaitingForCompleteHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v4, 0xf

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 23
    const-string v0, "MP3Stream"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/MP3StreamWrapper;->LOGV:Z

    .line 37
    new-array v0, v5, [[[I

    new-array v1, v5, [[I

    new-array v2, v6, [I

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v8

    const/4 v2, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    new-array v1, v6, [[I

    aput-object v1, v0, v7

    new-array v1, v5, [[I

    new-array v2, v6, [I

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v8

    const/4 v2, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v5, [[I

    new-array v3, v6, [I

    aput-object v3, v2, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v2, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    aput-object v3, v2, v8

    const/4 v3, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/dl/MP3StreamWrapper;->BITRATES_BY_VERSION_LAYER:[[[I

    .line 99
    new-array v0, v5, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v5, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/dl/MP3StreamWrapper;->SAMPLE_RATES_BY_VERSION:[[I

    .line 106
    new-array v0, v5, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    new-array v1, v6, [I

    aput-object v1, v0, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-array v2, v5, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/dl/MP3StreamWrapper;->SAMPLES_PER_FRAME_BY_VERSION_LAYER:[[I

    return-void

    .line 37
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x60t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xa0t 0x1t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
    .end array-data

    .line 99
    :array_9
    .array-data 0x4
        0x11t 0x2bt 0x0t 0x0t
        0xe0t 0x2et 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x22t 0x56t 0x0t 0x0t
        0xc0t 0x5dt 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x44t 0xact 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 106
    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x2t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x2t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 120
    iput-boolean v2, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mInFrame:Z

    .line 122
    iput-boolean v2, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mWaitingForCompleteHeader:Z

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mFrameSize:I

    .line 126
    iput v2, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mCurrentFrameDurationMs:I

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mTotalStreamedDurationMs:J

    .line 130
    const/16 v0, 0xb49

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    .line 132
    iput v2, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    .line 136
    iput v2, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mTotalFrames:I

    .line 139
    iput-object p1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mOut:Ljava/io/OutputStream;

    .line 140
    return-void
.end method

.method protected static computeFrameSize(IIIIZZ)I
    .locals 4
    .parameter "sampleRateHz"
    .parameter "layer"
    .parameter "mpegVersion"
    .parameter "bitrateHz"
    .parameter "isPadded"
    .parameter "isProtected"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 273
    if-nez p0, :cond_1

    .line 275
    if-eqz p5, :cond_0

    const/4 v2, 0x6

    .line 303
    :goto_0
    return v2

    .line 275
    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    .line 278
    :cond_1
    if-ne p1, v3, :cond_4

    .line 279
    div-int v2, p3, p0

    mul-int/lit8 v1, v2, 0xc

    .line 280
    .local v1, frameSize:I
    if-eqz p4, :cond_2

    .line 281
    add-int/lit8 v1, v1, 0x1

    .line 283
    :cond_2
    mul-int/lit8 v1, v1, 0x4

    :cond_3
    :goto_1
    move v2, v1

    .line 303
    goto :goto_0

    .line 286
    .end local v1           #frameSize:I
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 287
    const/16 v0, 0x90

    .line 298
    .local v0, coefficient:I
    :goto_2
    div-int v2, p3, p0

    mul-int v1, v0, v2

    .line 299
    .restart local v1       #frameSize:I
    if-eqz p4, :cond_3

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    .end local v0           #coefficient:I
    .end local v1           #frameSize:I
    :cond_5
    if-ne p2, v3, :cond_6

    .line 291
    const/16 v0, 0x90

    .restart local v0       #coefficient:I
    goto :goto_2

    .line 294
    .end local v0           #coefficient:I
    :cond_6
    const/16 v0, 0x48

    .restart local v0       #coefficient:I
    goto :goto_2
.end method

.method private flushToUnderlyingStream()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 336
    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    if-lez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    iget v2, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 338
    iput v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    .line 340
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mInFrame:Z

    .line 341
    iput-boolean v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mWaitingForCompleteHeader:Z

    .line 342
    iget-wide v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mTotalStreamedDurationMs:J

    iget v2, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mCurrentFrameDurationMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mTotalStreamedDurationMs:J

    .line 343
    iput v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mCurrentFrameDurationMs:I

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mFrameSize:I

    .line 345
    return-void
.end method

.method private static isFirstByteOfHeader(I)Z
    .locals 2
    .parameter "intByte"

    .prologue
    .line 208
    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSecondByteOfHeader(I)Z
    .locals 2
    .parameter "intByte"

    .prologue
    .line 213
    and-int/lit16 v0, p0, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processFrameHeader()Z
    .locals 15

    .prologue
    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 217
    iget-object v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v11, v11, v13

    and-int/lit8 v11, v11, 0x18

    ushr-int/lit8 v2, v11, 0x3

    .line 218
    .local v2, mpegVersion:I
    if-ne v2, v13, :cond_0

    move v11, v14

    .line 267
    :goto_0
    return v11

    .line 221
    :cond_0
    sget-object v11, Lcom/google/android/music/dl/MP3StreamWrapper;->BITRATES_BY_VERSION_LAYER:[[[I

    array-length v11, v11

    if-lt v2, v11, :cond_1

    move v11, v14

    .line 223
    goto :goto_0

    .line 225
    :cond_1
    sget-object v11, Lcom/google/android/music/dl/MP3StreamWrapper;->BITRATES_BY_VERSION_LAYER:[[[I

    aget-object v8, v11, v2

    .line 226
    .local v8, bitratesByLayer:[[I
    iget-object v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v11, v11, v13

    and-int/lit8 v11, v11, 0x6

    ushr-int/lit8 v1, v11, 0x1

    .line 227
    .local v1, layer:I
    if-nez v1, :cond_2

    move v11, v14

    .line 229
    goto :goto_0

    .line 230
    :cond_2
    array-length v11, v8

    if-lt v1, v11, :cond_3

    move v11, v14

    .line 232
    goto :goto_0

    .line 234
    :cond_3
    aget-object v7, v8, v1

    .line 235
    .local v7, bitrates:[I
    iget-object v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xf0

    ushr-int/lit8 v6, v11, 0x4

    .line 236
    .local v6, bitrateIndex:I
    array-length v11, v7

    if-lt v6, v11, :cond_4

    move v11, v14

    .line 238
    goto :goto_0

    .line 240
    :cond_4
    aget v11, v7, v6

    mul-int/lit16 v3, v11, 0x3e8

    .line 242
    .local v3, bitrateHz:I
    iget-object v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0xc

    ushr-int/lit8 v9, v11, 0x2

    .line 243
    .local v9, sampleRateIndex:I
    sget-object v11, Lcom/google/android/music/dl/MP3StreamWrapper;->SAMPLE_RATES_BY_VERSION:[[I

    aget-object v11, v11, v2

    array-length v11, v11

    if-lt v9, v11, :cond_5

    move v11, v14

    .line 244
    goto :goto_0

    .line 246
    :cond_5
    sget-object v11, Lcom/google/android/music/dl/MP3StreamWrapper;->SAMPLE_RATES_BY_VERSION:[[I

    aget-object v11, v11, v2

    aget v0, v11, v9

    .line 248
    .local v0, sampleRateHz:I
    iget-object v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x2

    if-ne v11, v12, :cond_6

    move v4, v13

    .line 249
    .local v4, isPadded:Z
    :goto_1
    iget-object v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v11, v11, v13

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_7

    move v5, v13

    .line 251
    .local v5, isProtected:Z
    :goto_2
    sget-object v11, Lcom/google/android/music/dl/MP3StreamWrapper;->SAMPLES_PER_FRAME_BY_VERSION_LAYER:[[I

    aget-object v11, v11, v2

    aget v10, v11, v1

    .line 253
    .local v10, samplesPerFrame:I
    invoke-static/range {v0 .. v5}, Lcom/google/android/music/dl/MP3StreamWrapper;->computeFrameSize(IIIIZZ)I

    move-result v11

    iput v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mFrameSize:I

    .line 256
    iget v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mFrameSize:I

    iget-object v12, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    array-length v12, v12

    if-le v11, v12, :cond_8

    .line 257
    const-string v11, "MP3Stream"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got larger frame than feasible: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mFrameSize:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v14

    .line 258
    goto/16 :goto_0

    .end local v4           #isPadded:Z
    .end local v5           #isProtected:Z
    .end local v10           #samplesPerFrame:I
    :cond_6
    move v4, v14

    .line 248
    goto :goto_1

    .restart local v4       #isPadded:Z
    :cond_7
    move v5, v14

    .line 249
    goto :goto_2

    .line 260
    .restart local v5       #isProtected:Z
    .restart local v10       #samplesPerFrame:I
    :cond_8
    if-nez v0, :cond_9

    .line 261
    iput v14, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mCurrentFrameDurationMs:I

    .line 266
    :goto_3
    iget v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mTotalFrames:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mTotalFrames:I

    move v11, v13

    .line 267
    goto/16 :goto_0

    .line 263
    :cond_9
    int-to-float v11, v10

    int-to-float v12, v0

    div-float/2addr v11, v12

    const/high16 v12, 0x447a

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mCurrentFrameDurationMs:I

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/android/music/dl/MP3StreamWrapper;->flushToUnderlyingStream()V

    .line 350
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 351
    return-void
.end method

.method public deleteUnfinishedChunk()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    .line 359
    invoke-direct {p0}, Lcom/google/android/music/dl/MP3StreamWrapper;->flushToUnderlyingStream()V

    .line 360
    return-void
.end method

.method public getCurrentDurationMs()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mTotalStreamedDurationMs:J

    return-wide v0
.end method

.method public getTotalFrames()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 364
    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mTotalFrames:I

    return v0
.end method

.method public write(I)V
    .locals 7
    .parameter "intByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 144
    iget-boolean v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mInFrame:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    iget v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mFrameSize:I

    if-lt v0, v1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/music/dl/MP3StreamWrapper;->flushToUnderlyingStream()V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mWaitingForCompleteHeader:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mInFrame:Z

    if-eqz v0, :cond_8

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    iget v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 149
    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    .line 150
    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    if-ne v0, v3, :cond_3

    .line 154
    invoke-static {p1}, Lcom/google/android/music/dl/MP3StreamWrapper;->isSecondByteOfHeader(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/google/android/music/dl/MP3StreamWrapper;->flushToUnderlyingStream()V

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 158
    :cond_3
    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/google/android/music/dl/MP3StreamWrapper;->processFrameHeader()Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v0, v0, v6

    invoke-static {v0}, Lcom/google/android/music/dl/MP3StreamWrapper;->isFirstByteOfHeader(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Lcom/google/android/music/dl/MP3StreamWrapper;->isSecondByteOfHeader(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    iget-object v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    goto :goto_0

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Lcom/google/android/music/dl/MP3StreamWrapper;->isFirstByteOfHeader(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v0, v0, v5

    invoke-static {v0}, Lcom/google/android/music/dl/MP3StreamWrapper;->isSecondByteOfHeader(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 174
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    iget-object v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    invoke-static {v0, v3, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    goto :goto_0

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v0, v0, v5

    invoke-static {v0}, Lcom/google/android/music/dl/MP3StreamWrapper;->isFirstByteOfHeader(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 180
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    iget-object v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    aget-byte v1, v1, v5

    aput-byte v1, v0, v4

    .line 181
    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    goto :goto_0

    .line 185
    :cond_6
    invoke-direct {p0}, Lcom/google/android/music/dl/MP3StreamWrapper;->flushToUnderlyingStream()V

    goto :goto_0

    .line 187
    :cond_7
    iput-boolean v6, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mInFrame:Z

    goto/16 :goto_0

    .line 191
    :cond_8
    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_9

    .line 192
    invoke-direct {p0}, Lcom/google/android/music/dl/MP3StreamWrapper;->flushToUnderlyingStream()V

    .line 193
    iput-boolean v6, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mWaitingForCompleteHeader:Z

    .line 194
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    iget v1, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 195
    iget v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    goto/16 :goto_0

    .line 201
    :cond_9
    invoke-direct {p0}, Lcom/google/android/music/dl/MP3StreamWrapper;->flushToUnderlyingStream()V

    .line 202
    iget-object v0, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0
.end method

.method public write([BII)V
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    move v0, p2

    .line 309
    .local v0, currentBytePos:I
    add-int v1, p2, p3

    .line 311
    .local v1, finalBytePos:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 312
    iget-boolean v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mInFrame:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    iget v5, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mFrameSize:I

    if-ge v4, v5, :cond_1

    .line 313
    sub-int v3, v1, v0

    .line 314
    .local v3, possibleBytes:I
    iget v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mFrameSize:I

    iget v5, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    sub-int v2, v4, v5

    .line 315
    .local v2, leftInFrame:I
    if-le v2, v3, :cond_0

    .line 318
    iget-object v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuff:[B

    iget v5, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    invoke-static {p1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mBuffSize:I

    .line 320
    add-int/2addr v0, v3

    goto :goto_0

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/dl/MP3StreamWrapper;->flushToUnderlyingStream()V

    .line 325
    iget-object v4, p0, Lcom/google/android/music/dl/MP3StreamWrapper;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 326
    add-int/2addr v0, v2

    goto :goto_0

    .line 329
    .end local v2           #leftInFrame:I
    .end local v3           #possibleBytes:I
    :cond_1
    aget-byte v4, p1, v0

    invoke-virtual {p0, v4}, Lcom/google/android/music/dl/MP3StreamWrapper;->write(I)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_2
    return-void
.end method
