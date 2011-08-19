.class public final Lcom/ecareme/pixwe/media/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    .line 49
    invoke-static {p1}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 51
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    .line 52
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 53
    iput v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    .line 54
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 6
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    .line 310
    add-int v1, p1, p2

    .local v1, high:I
    sub-int v2, p1, v5

    .line 312
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    if-gt v3, v5, :cond_0

    .line 321
    add-int v3, p1, p2

    if-ne v1, v3, :cond_2

    .line 322
    add-int v3, p1, p2

    xor-int/lit8 v3, v3, -0x1

    .line 326
    :goto_1
    return v3

    .line 313
    :cond_0
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 315
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_1

    .line 316
    move v2, v0

    goto :goto_0

    .line 318
    :cond_1
    move v1, v0

    goto :goto_0

    .line 323
    .end local v0           #guess:I
    :cond_2
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-nez v3, :cond_3

    move v3, v1

    .line 324
    goto :goto_1

    .line 326
    :cond_3
    xor-int/lit8 v3, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 6

    .prologue
    .line 331
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    if-lt v0, v2, :cond_0

    .line 340
    return-void

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    const/4 v5, 0x1

    sub-int v5, v0, v5

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 333
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    if-lt v1, v2, :cond_1

    .line 337
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 334
    :cond_1
    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    .end local v1           #j:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private gc()V
    .locals 8

    .prologue
    .line 103
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    iget v2, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    .line 104
    .local v2, n:I
    const/4 v3, 0x0

    .line 105
    .local v3, o:I
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    .line 106
    .local v1, keys:[J
    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 108
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 121
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    .line 122
    iput v3, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    .line 125
    return-void

    .line 109
    :cond_0
    aget-object v4, v5, v0

    .line 111
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Lcom/ecareme/pixwe/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_2

    .line 112
    if-eq v0, v3, :cond_1

    .line 113
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 114
    aput-object v4, v5, v3

    .line 117
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 108
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v7, 0x0

    .line 280
    iget v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    iget v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 281
    invoke-virtual {p0, p1, p2, p3}, Lcom/ecareme/pixwe/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 307
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/LongSparseArray;->gc()V

    .line 289
    :cond_1
    iget v3, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    .line 290
    .local v3, pos:I
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 291
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 293
    .local v0, n:I
    new-array v1, v0, [J

    .line 294
    .local v1, nkeys:[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 297
    .local v2, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iput-object v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    .line 301
    iput-object v2, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 304
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 305
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 306
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 264
    iget v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    .line 265
    .local v1, n:I
    iget-object v2, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 267
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 271
    iput v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    .line 272
    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    .line 273
    return-void

    .line 268
    :cond_0
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public delete(J)V
    .locals 4
    .parameter "key"

    .prologue
    .line 83
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/ecareme/pixwe/media/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 85
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/ecareme/pixwe/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 87
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Lcom/ecareme/pixwe/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    .line 91
    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ecareme/pixwe/media/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    .local p3, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/ecareme/pixwe/media/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 72
    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/ecareme/pixwe/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, p3

    .line 75
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 3
    .parameter "key"

    .prologue
    .line 235
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/LongSparseArray;->gc()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/ecareme/pixwe/media/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    iget-boolean v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/LongSparseArray;->gc()V

    .line 253
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    if-lt v0, v1, :cond_1

    .line 257
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2

    move v1, v0

    .line 255
    goto :goto_1

    .line 253
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public keyAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 196
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/LongSparseArray;->gc()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 132
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    iget v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/ecareme/pixwe/media/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 134
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 135
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 176
    :goto_0
    return-void

    .line 137
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 139
    iget v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Lcom/ecareme/pixwe/media/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 140
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 141
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_0

    .line 145
    :cond_1
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/LongSparseArray;->gc()V

    .line 149
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    iget v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/ecareme/pixwe/media/LongSparseArray;->binarySearch([JIIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 152
    :cond_2
    iget v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 153
    iget v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/ecareme/pixwe/media/LongSparseArray$ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 155
    .local v1, n:I
    new-array v2, v1, [J

    .line 156
    .local v2, nkeys:[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 159
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v2, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    .line 163
    iput-object v3, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 166
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 168
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :cond_4
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 173
    iget-object v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 174
    iget v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(J)V
    .locals 0
    .parameter "key"

    .prologue
    .line 97
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/ecareme/pixwe/media/LongSparseArray;->delete(J)V

    .line 98
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/LongSparseArray;->gc()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 228
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 183
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/LongSparseArray;->gc()V

    .line 187
    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/LongSparseArray;->gc()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
