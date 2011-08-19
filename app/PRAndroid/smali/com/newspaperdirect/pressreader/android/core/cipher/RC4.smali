.class public final Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# instance fields
.field state:[B

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    .line 9
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "key"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    .line 12
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->setKey([B)V

    .line 13
    return-void
.end method

.method private final arcfour_byte()I
    .locals 6

    .prologue
    .line 51
    iget v4, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->x:I

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v2, v4, 0xff

    .line 52
    .local v2, x:I
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    aget-byte v0, v4, v2

    .line 53
    .local v0, sx:I
    iget v4, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->y:I

    add-int/2addr v4, v0

    and-int/lit16 v3, v4, 0xff

    .line 54
    .local v3, y:I
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    aget-byte v1, v4, v3

    .line 55
    .local v1, sy:I
    iput v2, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->x:I

    .line 56
    iput v3, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->y:I

    .line 57
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 58
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 59
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    add-int v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    return v4
.end method


# virtual methods
.method public decrypt([BI[BII)V
    .locals 0
    .parameter "src"
    .parameter "srcOff"
    .parameter "dest"
    .parameter "destOff"
    .parameter "len"

    .prologue
    .line 22
    invoke-virtual/range {p0 .. p5}, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->encrypt([BI[BII)V

    .line 23
    return-void
.end method

.method public declared-synchronized encrypt([BI[BII)V
    .locals 5
    .parameter "src"
    .parameter "srcOff"
    .parameter "dest"
    .parameter "destOff"
    .parameter "len"

    .prologue
    .line 16
    monitor-enter p0

    add-int v1, p2, p5

    .line 17
    .local v1, end:I
    move v2, p2

    .local v2, si:I
    move v0, p4

    .local v0, di:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 19
    monitor-exit p0

    return-void

    .line 18
    :cond_0
    :try_start_0
    aget-byte v3, p1, v2

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->arcfour_byte()I

    move-result v4

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setKey([B)V
    .locals 8
    .parameter "key"

    .prologue
    const/16 v7, 0x100

    .line 31
    const/4 v0, 0x0

    .local v0, counter:I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, keyindex:I
    const/4 v2, 0x0

    .line 35
    .local v2, stateindex:I
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v7, :cond_1

    .line 44
    return-void

    .line 32
    .end local v1           #keyindex:I
    .end local v2           #stateindex:I
    :cond_0
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    int-to-byte v6, v0

    aput-byte v6, v5, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .restart local v1       #keyindex:I
    .restart local v2       #stateindex:I
    :cond_1
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    aget-byte v3, v5, v0

    .line 37
    .local v3, t:I
    aget-byte v5, p1, v1

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    and-int/lit16 v2, v5, 0xff

    .line 38
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    aget-byte v4, v5, v2

    .line 39
    .local v4, u:I
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 40
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->state:[B

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 41
    add-int/lit8 v1, v1, 0x1

    array-length v5, p1

    if-lt v1, v5, :cond_2

    .line 42
    const/4 v1, 0x0

    .line 35
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
