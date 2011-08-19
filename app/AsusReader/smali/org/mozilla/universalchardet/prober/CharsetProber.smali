.class public abstract Lorg/mozilla/universalchardet/prober/CharsetProber;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isAscii(B)Z
    .locals 1

    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAsciiSymbol(B)Z
    .locals 2

    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filterWithEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .locals 8

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int v1, p2, p3

    move v2, p2

    move v3, p2

    move v4, v7

    :goto_0
    if-ge v2, v1, :cond_4

    aget-byte v5, p1, v2

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_2

    move v4, v7

    :cond_0
    :goto_1
    invoke-direct {p0, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    move-result v5

    if-eqz v5, :cond_1

    if-le v2, v3, :cond_3

    if-nez v4, :cond_3

    sub-int v5, v2, v3

    invoke-virtual {v0, p1, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v2, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v6, 0x3c

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    if-le v2, v3, :cond_5

    sub-int v1, v2, v3

    invoke-virtual {v0, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_5
    return-object v0
.end method

.method public filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .locals 8

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int v1, p2, p3

    move v2, p2

    move v3, p2

    move v4, v7

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v5, p1, v2

    invoke-direct {p0, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_2

    if-le v2, v3, :cond_2

    sub-int v4, v2, v3

    invoke-virtual {v0, p1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v2, 0x1

    move v4, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    if-le v2, v3, :cond_4

    sub-int v1, v2, v3

    invoke-virtual {v0, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_4
    return-object v0
.end method

.method public abstract getCharSetName()Ljava/lang/String;
.end method

.method public abstract getConfidence()F
.end method

.method public abstract getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public abstract handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public abstract reset()V
.end method
