.class public Lcom/google/android/music/dl/ID3v1FooterInputStream;
.super Ljava/io/InputStream;
.source "ID3v1FooterInputStream.java"


# static fields
.field private static final ID3V1_TAG_SIZE:I = 0x80


# instance fields
.field private mEndingChecked:Z

.field private final mLastBytes:[B

.field private mLastBytesIndex:I

.field private final mOrder:Lcom/google/android/music/dl/DownloadOrder;

.field private mSingleByte:[B

.field private final mWrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 2
    .parameter "wrappedStream"
    .parameter "order"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    .line 20
    iput v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    .line 22
    iput-boolean v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mEndingChecked:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mSingleByte:[B

    .line 32
    iput-object p1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mWrappedStream:Ljava/io/InputStream;

    .line 33
    iput-object p2, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 34
    return-void
.end method

.method private checkEndingBuffer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    iget-boolean v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mEndingChecked:Z

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    return-void

    .line 86
    :cond_1
    iput-boolean v5, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mEndingChecked:Z

    .line 87
    iget-object v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v1, v2, :cond_0

    .line 91
    iget v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    iget-object v2, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    array-length v2, v2

    if-eq v1, v2, :cond_2

    .line 92
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Footer bytes were never received"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 96
    .local v0, tagStart:Ljava/lang/String;
    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File did not have ID3V1 tag at the end.  Last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes start with: { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    aget-byte v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 106
    iget-object v0, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 107
    invoke-direct {p0}, Lcom/google/android/music/dl/ID3v1FooterInputStream;->checkEndingBuffer()V

    .line 108
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 38
    iget-object v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mSingleByte:[B

    if-nez v1, :cond_0

    .line 39
    new-array v1, v4, [B

    iput-object v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mSingleByte:[B

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mSingleByte:[B

    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/music/dl/ID3v1FooterInputStream;->read([BII)I

    move-result v0

    .line 42
    .local v0, read:I
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 45
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mSingleByte:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 50
    iget-object v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 51
    .local v2, read:I
    iget-object v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    array-length v4, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 52
    .local v0, amountToCopy:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/google/android/music/dl/ID3v1FooterInputStream;->checkEndingBuffer()V

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    array-length v4, v4

    if-ne v0, v4, :cond_2

    .line 56
    add-int v4, p2, v2

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    invoke-static {p1, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    array-length v4, v4

    iput v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    goto :goto_0

    .line 59
    :cond_2
    if-lez v0, :cond_0

    .line 60
    iget v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    array-length v5, v5

    if-gt v4, v5, :cond_3

    .line 63
    add-int v4, p2, v2

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    iget v6, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    invoke-static {p1, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    goto :goto_0

    .line 69
    :cond_3
    iget v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    array-length v5, v5

    sub-int v3, v4, v5

    .line 70
    .local v3, trimFromBeginningOriginal:I
    iget v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    sub-int v1, v4, v3

    .line 72
    .local v1, amountToKeep:I
    iget-object v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    iget-object v5, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    invoke-static {v4, v3, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    add-int v4, p2, v2

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    iget-object v6, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    array-length v6, v6

    sub-int/2addr v6, v0

    invoke-static {p1, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytes:[B

    array-length v4, v4

    iput v4, p0, Lcom/google/android/music/dl/ID3v1FooterInputStream;->mLastBytesIndex:I

    goto :goto_0
.end method

.method public skip(J)J
    .locals 1
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
