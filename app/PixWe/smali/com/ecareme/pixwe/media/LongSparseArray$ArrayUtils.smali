.class public final Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;
.super Ljava/lang/Object;
.source "LongSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/LongSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayUtils"
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static EMPTY:[Ljava/lang/Object;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 349
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 346
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    return-void
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, value:Ljava/lang/Object;,"TT;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 452
    array-length v1, p0

    move v2, v4

    :goto_0
    if-lt v2, v1, :cond_0

    move v1, v4

    .line 461
    :goto_1
    return v1

    .line 452
    :cond_0
    aget-object v0, p0, v2

    .line 453
    .local v0, element:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_1

    .line 454
    if-nez p1, :cond_2

    move v1, v5

    .line 455
    goto :goto_1

    .line 457
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v5

    .line 458
    goto :goto_1

    .line 452
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    .line 424
    sget-object v2, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 438
    :goto_0
    return-object v2

    .line 427
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    .line 428
    .local v0, bucket:I
    sget-object v2, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 430
    .local v1, cache:Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 431
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 432
    sget-object v2, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 438
    :cond_2
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #cache:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public static equals([B[BI)Z
    .locals 5
    .parameter "array1"
    .parameter "array2"
    .parameter "length"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    if-ne p0, p1, :cond_0

    move v1, v4

    .line 413
    :goto_0
    return v1

    .line 405
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p0

    if-lt v1, p2, :cond_1

    array-length v1, p1

    if-ge v1, p2, :cond_2

    :cond_1
    move v1, v3

    .line 406
    goto :goto_0

    .line 408
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p2, :cond_3

    move v1, v4

    .line 413
    goto :goto_0

    .line 409
    :cond_3
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_4

    move v1, v3

    .line 410
    goto :goto_0

    .line 408
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static idealBooleanArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 363
    invoke-static {p0}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealByteArraySize(I)I
    .locals 4
    .parameter "need"

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 355
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    move v1, p0

    .line 359
    :goto_1
    return v1

    .line 356
    :cond_0
    shl-int v1, v2, v0

    sub-int/2addr v1, v3

    if-gt p0, v1, :cond_1

    .line 357
    shl-int v1, v2, v0

    sub-int/2addr v1, v3

    goto :goto_1

    .line 355
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealCharArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 371
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealFloatArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 379
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 375
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 387
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static idealObjectArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 383
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealShortArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 367
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
