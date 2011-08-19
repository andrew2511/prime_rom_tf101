.class public final Lcom/zinio/mobile/android/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x100

    const/4 v6, 0x0

    .line 89
    move v0, v6

    :goto_0
    if-ge v0, v7, :cond_0

    .line 90
    iget-object v1, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    move v1, v6

    move v2, v6

    .line 93
    :goto_1
    if-ge v0, v7, :cond_2

    .line 94
    iget-object v3, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    aget-byte v3, v3, v0

    .line 95
    aget-byte v4, p1, v2

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 96
    iget-object v4, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    aget-byte v4, v4, v1

    .line 97
    iget-object v5, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    .line 98
    iget-object v3, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 99
    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    if-lt v2, v3, :cond_1

    move v2, v6

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_2
    return-void
.end method

.method public final declared-synchronized a([BI[BII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    monitor-enter p0

    add-int v0, p2, p5

    move v1, p4

    move v2, p2

    .line 48
    :goto_0
    if-ge v2, v0, :cond_0

    .line 49
    :try_start_0
    aget-byte v3, p1, v2

    iget v4, p0, Lcom/zinio/mobile/android/e/a;->a:I

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    aget-byte v5, v5, v4

    iget v6, p0, Lcom/zinio/mobile/android/e/a;->b:I

    add-int/2addr v6, v5

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    aget-byte v7, v7, v6

    iput v4, p0, Lcom/zinio/mobile/android/e/a;->a:I

    iput v6, p0, Lcom/zinio/mobile/android/e/a;->b:I

    iget-object v8, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    and-int/lit16 v9, v5, 0xff

    int-to-byte v9, v9

    aput-byte v9, v8, v6

    iget-object v6, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    iget-object v4, p0, Lcom/zinio/mobile/android/e/a;->c:[B

    add-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([B[BII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zinio/mobile/android/e/a;->a([BI[BII)V

    .line 75
    return-void
.end method
