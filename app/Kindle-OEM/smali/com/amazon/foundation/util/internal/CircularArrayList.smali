.class public Lcom/amazon/foundation/util/internal/CircularArrayList;
.super Ljava/util/AbstractList;
.source "CircularArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x19

.field private static final DUMMY:Ljava/lang/Object;


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private arrayBufferEnd:I

.field private arrayBufferStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/foundation/util/internal/CircularArrayList;->DUMMY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;-><init>(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 79
    if-gez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 84
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    sget-object v1, Lcom/amazon/foundation/util/internal/CircularArrayList;->DUMMY:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayFill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 86
    iput v3, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferEnd:I

    .line 87
    iput v3, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferStart:I

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;-><init>(I)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    return-void
.end method

.method private static arrayFill([Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 3
    .parameter "array"
    .parameter "value"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 648
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v2, p0

    sub-int/2addr v2, p2

    if-ge v2, p3, :cond_1

    .line 650
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 653
    :cond_1
    add-int v0, p2, p3

    .line 654
    .local v0, end:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 656
    aput-object p1, p0, v1

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_2
    return-void
.end method

.method private arrayNew(I)[Ljava/lang/Object;
    .locals 2
    .parameter "minimumSize"

    .prologue
    .line 292
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    if-gez p1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-gt p1, v1, :cond_1

    .line 300
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v0, v1

    .line 304
    .local v0, newSize:I
    if-nez v0, :cond_2

    .line 306
    const/16 v0, 0x19

    .line 309
    :cond_2
    :goto_0
    if-ge v0, p1, :cond_3

    .line 311
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_3
    new-array v1, v0, [Ljava/lang/Object;

    return-object v1
.end method

.method private arrayToList(I)I
    .locals 3
    .parameter "arrayIndex"

    .prologue
    .line 586
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-le p1, v1, :cond_1

    .line 588
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 593
    :cond_1
    iget v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferStart:I

    if-lt p1, v1, :cond_2

    .line 595
    iget v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferStart:I

    sub-int v0, p1, v1

    .line 602
    .local v0, listIndex:I
    :goto_0
    return v0

    .line 599
    .end local v0           #listIndex:I
    :cond_2
    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferStart:I

    sub-int/2addr v1, v2

    add-int v0, p1, v1

    .restart local v0       #listIndex:I
    goto :goto_0
.end method

.method private listClear(II)V
    .locals 6
    .parameter "start"
    .parameter "length"

    .prologue
    .line 460
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    if-gez p2, :cond_0

    .line 462
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->minListIndex()I

    move-result v2

    if-lt p1, v2, :cond_1

    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->maxListIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, p1

    if-ge v2, p2, :cond_2

    .line 468
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 472
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listToArray(I)I

    move-result v0

    .line 473
    .local v0, arrayStart:I
    iget-object v2, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 476
    .local v1, splitLength:I
    iget-object v2, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    sget-object v3, Lcom/amazon/foundation/util/internal/CircularArrayList;->DUMMY:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayFill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 479
    iget-object v2, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    sget-object v3, Lcom/amazon/foundation/util/internal/CircularArrayList;->DUMMY:Ljava/lang/Object;

    const/4 v4, 0x0

    sub-int v5, p2, v1

    invoke-static {v2, v3, v4, v5}, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayFill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 480
    return-void
.end method

.method private listCopy(III)V
    .locals 8
    .parameter "from"
    .parameter "to"
    .parameter "length"

    .prologue
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 437
    if-ge p2, p1, :cond_0

    const/4 v4, 0x0

    move v3, v4

    .line 438
    .local v3, start:I
    :goto_0
    if-ge p2, p1, :cond_1

    move v1, p3

    .line 439
    .local v1, end:I
    :goto_1
    if-ge p2, p1, :cond_2

    move v0, v6

    .line 441
    .local v0, delta:I
    :goto_2
    move v2, v3

    .local v2, i:I
    :goto_3
    if-eq v2, v1, :cond_3

    .line 443
    iget-object v4, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    add-int v5, p2, v2

    invoke-direct {p0, v5}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listToArray(I)I

    move-result v5

    iget-object v6, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    add-int v7, p1, v2

    invoke-direct {p0, v7}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listToArray(I)I

    move-result v7

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 441
    add-int/2addr v2, v0

    goto :goto_3

    .line 437
    .end local v0           #delta:I
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #start:I
    :cond_0
    sub-int v4, p3, v6

    move v3, v4

    goto :goto_0

    .restart local v3       #start:I
    :cond_1
    move v1, v5

    .line 438
    goto :goto_1

    .restart local v1       #end:I
    :cond_2
    move v0, v5

    .line 439
    goto :goto_2

    .line 445
    .restart local v0       #delta:I
    .restart local v2       #i:I
    :cond_3
    return-void
.end method

.method private listCopyToArray(II[Ljava/lang/Object;I)V
    .locals 6
    .parameter "listStartIndex"
    .parameter "length"
    .parameter "destArray"
    .parameter "destArrayStartIndex"

    .prologue
    .line 336
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    if-nez p3, :cond_0

    .line 338
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 341
    :cond_0
    if-gez p2, :cond_1

    .line 343
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 346
    :cond_1
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p1

    if-lt v3, p2, :cond_2

    if-ltz p4, :cond_2

    array-length v3, p3

    sub-int/2addr v3, p4

    if-ge v3, p2, :cond_3

    .line 351
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 354
    :cond_3
    if-eqz p2, :cond_4

    .line 356
    invoke-direct {p0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listToArray(I)I

    move-result v2

    .line 361
    .local v2, sourceArrayStartIndex:I
    iget-object v3, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 366
    .local v0, firstBlockLength:I
    sub-int v1, p2, v0

    .line 368
    .local v1, secondBlockLength:I
    iget-object v3, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    invoke-static {v3, v2, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    iget-object v3, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    const/4 v4, 0x0

    add-int v5, p4, v0

    invoke-static {v3, v4, p3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    .end local v0           #firstBlockLength:I
    .end local v1           #secondBlockLength:I
    .end local v2           #sourceArrayStartIndex:I
    :cond_4
    return-void
.end method

.method private listDelete(II)V
    .locals 1
    .parameter "index"
    .parameter "length"

    .prologue
    .line 212
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-ge v0, p2, :cond_1

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 218
    :cond_1
    neg-int v0, p2

    invoke-direct {p0, p1, v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listInsert(II)V

    .line 219
    return-void
.end method

.method private listGet(I)Ljava/lang/Object;
    .locals 2
    .parameter "listIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->minListIndex()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->maxListIndex()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 539
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listToArray(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private listInsert(II)V
    .locals 7
    .parameter "index"
    .parameter "numToInsert"

    .prologue
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    const/4 v6, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v0

    .line 232
    .local v0, listSize:I
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    const v3, 0x7fffffff

    sub-int/2addr v3, p1

    if-ge v3, p2, :cond_1

    .line 236
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 239
    :cond_1
    shr-int/lit8 v1, v0, 0x1

    .line 241
    .local v1, midpoint:I
    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->maxListIndex()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge v3, p2, :cond_2

    .line 249
    add-int v3, v0, p2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayNew(I)[Ljava/lang/Object;

    move-result-object v2

    .line 251
    .local v2, newArray:[Ljava/lang/Object;
    invoke-direct {p0, v6, p1, v2, v6}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listCopyToArray(II[Ljava/lang/Object;I)V

    .line 252
    sget-object v3, Lcom/amazon/foundation/util/internal/CircularArrayList;->DUMMY:Ljava/lang/Object;

    invoke-static {v2, v3, p1, p2}, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayFill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 253
    sub-int v3, v0, p1

    add-int v4, p1, p2

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listCopyToArray(II[Ljava/lang/Object;I)V

    .line 254
    sget-object v3, Lcom/amazon/foundation/util/internal/CircularArrayList;->DUMMY:Ljava/lang/Object;

    add-int v4, v0, p2

    array-length v5, v2

    sub-int/2addr v5, v0

    sub-int/2addr v5, p2

    invoke-static {v2, v3, v4, v5}, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayFill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 256
    check-cast v2, [Ljava/lang/Object;

    .end local v2           #newArray:[Ljava/lang/Object;
    iput-object v2, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    .line 257
    iput v6, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferStart:I

    .line 258
    add-int v3, v0, p2

    iput v3, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferEnd:I

    .line 282
    :goto_0
    return-void

    .line 260
    :cond_2
    if-ge p1, v1, :cond_3

    .line 265
    neg-int v3, p2

    invoke-direct {p0, v6, v3, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listMove(III)V

    .line 266
    neg-int v3, p2

    invoke-direct {p0, v3}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listToArray(I)I

    move-result v3

    iput v3, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferStart:I

    goto :goto_0

    .line 273
    :cond_3
    if-gez p2, :cond_4

    .line 275
    neg-int v3, p2

    add-int/2addr p1, v3

    .line 279
    :cond_4
    add-int v3, p1, p2

    sub-int v4, v0, p1

    invoke-direct {p0, p1, v3, v4}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listMove(III)V

    .line 280
    add-int v3, v0, p2

    invoke-direct {p0, v3}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listToArray(I)I

    move-result v3

    iput v3, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferEnd:I

    goto :goto_0
.end method

.method private listMove(III)V
    .locals 6
    .parameter "from"
    .parameter "to"
    .parameter "length"

    .prologue
    .line 388
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    if-gez p3, :cond_0

    .line 390
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 395
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p1

    if-lt v5, p3, :cond_1

    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->minListIndex()I

    move-result v5

    if-lt p2, v5, :cond_1

    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->maxListIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v5, p2

    if-ge v5, p3, :cond_2

    .line 400
    :cond_1
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 403
    :cond_2
    if-eq p1, p2, :cond_3

    .line 406
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listCopy(III)V

    .line 408
    add-int v4, p2, p3

    .line 409
    .local v4, toEnd:I
    add-int v3, p1, p3

    .line 414
    .local v3, fromEnd:I
    if-ge p1, p2, :cond_4

    move v2, p1

    .line 415
    .local v2, clearStart:I
    :goto_0
    if-ge p1, p2, :cond_5

    move v0, p2

    .line 416
    .local v0, clearEnd:I
    :goto_1
    sub-int v1, v0, v2

    .line 418
    .local v1, clearLength:I
    invoke-direct {p0, v2, v1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listClear(II)V

    .line 420
    .end local v0           #clearEnd:I
    .end local v1           #clearLength:I
    .end local v2           #clearStart:I
    .end local v3           #fromEnd:I
    .end local v4           #toEnd:I
    :cond_3
    return-void

    .restart local v3       #fromEnd:I
    .restart local v4       #toEnd:I
    :cond_4
    move v2, v4

    .line 414
    goto :goto_0

    .restart local v2       #clearStart:I
    :cond_5
    move v0, v3

    .line 415
    goto :goto_1
.end method

.method private listSet(ILjava/lang/Object;)V
    .locals 2
    .parameter "listIndex"
    .parameter "o"

    .prologue
    .line 490
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listToArray(I)I

    move-result v1

    aput-object p2, v0, v1

    .line 496
    return-void
.end method

.method private listSetMultiple(ILjava/util/Collection;)V
    .locals 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 511
    .local v2, sizeToAdd:I
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p1

    if-ge v3, v2, :cond_1

    .line 514
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 517
    :cond_1
    move v0, p1

    .line 518
    .local v0, i:I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 519
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listSet(ILjava/lang/Object;)V

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_2
    return-void
.end method

.method private listToArray(I)I
    .locals 2
    .parameter "listIndex"

    .prologue
    .line 616
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->minListIndex()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->maxListIndex()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 618
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 622
    :cond_1
    iget v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferStart:I

    add-int v0, v1, p1

    .line 625
    .local v0, arrayIndex:I
    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 628
    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 636
    :cond_2
    :goto_0
    return v0

    .line 630
    :cond_3
    if-gez v0, :cond_2

    .line 633
    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private maxListIndex()I
    .locals 2

    .prologue
    .line 569
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    iget-object v0, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private minListIndex()I
    .locals 3

    .prologue
    .line 554
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v2

    sub-int v0, v1, v2

    .line 556
    .local v0, unusedSpace:I
    neg-int v1, v0

    return v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    .local p2, o:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listInsert(II)V

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listSet(ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 112
    .local v0, sizeToAdd:I
    invoke-direct {p0, p1, v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listInsert(II)V

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listSetMultiple(ILjava/util/Collection;)V

    .line 115
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    const/4 v1, 0x0

    .line 121
    iput v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferStart:I

    .line 122
    iput v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferEnd:I

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->array:[Ljava/lang/Object;

    sget-object v2, Lcom/amazon/foundation/util/internal/CircularArrayList;->DUMMY:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listGet(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isConsistent()Z
    .locals 6

    .prologue
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    const/4 v5, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v3

    .line 180
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 182
    invoke-direct {p0, v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listGet(I)Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, item:Ljava/lang/Object;
    sget-object v4, Lcom/amazon/foundation/util/internal/CircularArrayList;->DUMMY:Ljava/lang/Object;

    if-ne v1, v4, :cond_0

    move v4, v5

    .line 200
    .end local v1           #item:Ljava/lang/Object;
    :goto_1
    return v4

    .line 180
    .restart local v1       #item:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v1           #item:Ljava/lang/Object;
    :cond_1
    invoke-direct {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->maxListIndex()I

    move-result v2

    .line 191
    .local v2, maxListIndex:I
    move v0, v3

    :goto_2
    if-gt v0, v2, :cond_3

    .line 193
    invoke-direct {p0, v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listGet(I)Ljava/lang/Object;

    move-result-object v1

    .line 194
    .restart local v1       #item:Ljava/lang/Object;
    sget-object v4, Lcom/amazon/foundation/util/internal/CircularArrayList;->DUMMY:Ljava/lang/Object;

    if-eq v1, v4, :cond_2

    move v4, v5

    .line 196
    goto :goto_1

    .line 191
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 200
    .end local v1           #item:Ljava/lang/Object;
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    invoke-virtual {p0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, retval:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listDelete(II)V

    .line 137
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_1

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 159
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listGet(I)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, retval:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1, p2}, Lcom/amazon/foundation/util/internal/CircularArrayList;->listSet(ILjava/lang/Object;)V

    .line 162
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 169
    .local p0, this:Lcom/amazon/foundation/util/internal/CircularArrayList;,"Lcom/amazon/foundation/util/internal/CircularArrayList<TT;>;"
    iget v0, p0, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayBufferEnd:I

    invoke-direct {p0, v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;->arrayToList(I)I

    move-result v0

    return v0
.end method
