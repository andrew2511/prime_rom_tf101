.class public Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;
    }
.end annotation


# instance fields
.field private higher:Ljava/util/Hashtable;

.field private lower:[Ljava/lang/Object;

.field private lowerCount:I

.field private maxKey:I

.field private maxLowerKey:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>(I)V

    .line 103
    return-void
.end method

.method constructor <init>(I)V
    .registers 5
    .parameter "initialLowerBufferSize"

    .prologue
    const/high16 v2, -0x8000

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/16 v0, 0x10

    .line 113
    .local v0, lowerBufferSize:I
    if-lez p1, :cond_f

    .line 114
    const/16 v1, 0x80

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 116
    :cond_f
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    .line 118
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    .line 119
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    .line 120
    return-void
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    return v0
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)[Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    return-object v0
.end method

.method private static compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z
    .registers 10
    .parameter "h1"
    .parameter "h2"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 337
    if-ne p0, p1, :cond_6

    move v4, v7

    .line 356
    :goto_5
    return v4

    .line 340
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v4, v6

    .line 341
    goto :goto_5

    .line 343
    :cond_c
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v5

    if-eq v4, v5, :cond_18

    move v4, v6

    .line 344
    goto :goto_5

    .line 347
    :cond_18
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 348
    .local v0, h1Keys:Ljava/util/Enumeration;
    :cond_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 349
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 350
    .local v3, key:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 351
    .local v1, h1Value:Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 352
    .local v2, h2Value:Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    move v4, v6

    .line 353
    goto :goto_5

    .end local v1           #h1Value:Ljava/lang/Object;
    .end local v2           #h2Value:Ljava/lang/Object;
    .end local v3           #key:Ljava/lang/Object;
    :cond_36
    move v4, v7

    .line 356
    goto :goto_5
.end method

.method private compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8
    .parameter "lower1"
    .parameter "lower2"

    .prologue
    const/4 v4, 0x0

    .line 312
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 314
    .local v1, min:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_25

    .line 315
    aget-object v2, p1, v0

    if-nez v2, :cond_12

    aget-object v2, p2, v0

    if-nez v2, :cond_20

    :cond_12
    aget-object v2, p1, v0

    if-eqz v2, :cond_22

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_20
    move v2, v4

    .line 330
    :goto_21
    return v2

    .line 314
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 321
    :cond_25
    array-length v2, p1

    array-length v3, p2

    if-le v2, v3, :cond_36

    .line 322
    move v0, v1

    :goto_2a
    array-length v2, p1

    if-ge v0, v2, :cond_47

    .line 323
    aget-object v2, p1, v0

    if-eqz v2, :cond_33

    move v2, v4

    goto :goto_21

    .line 322
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 325
    :cond_36
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_47

    .line 326
    move v0, v1

    :goto_3b
    array-length v2, p2

    if-ge v0, v2, :cond_47

    .line 327
    aget-object v2, p2, v0

    if-eqz v2, :cond_44

    move v2, v4

    goto :goto_21

    .line 326
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 330
    :cond_47
    const/4 v2, 0x1

    goto :goto_21
.end method

.method private expandLowerIfNecessary(I)Z
    .registers 7
    .parameter "key"

    .prologue
    const/16 v3, 0x80

    const/4 v4, 0x0

    .line 366
    if-ge p1, v3, :cond_25

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v2, v2

    if-lt p1, v2, :cond_25

    if-lez p1, :cond_25

    .line 367
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v2

    .line 369
    .local v1, size:I
    :cond_f
    shl-int/lit8 v1, v1, 0x1

    .line 370
    if-le v1, p1, :cond_f

    .line 371
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 372
    new-array v0, v1, [Ljava/lang/Object;

    .line 373
    .local v0, newLower:[Ljava/lang/Object;
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    .line 375
    const/4 v2, 0x1

    .line 377
    .end local v0           #newLower:[Ljava/lang/Object;
    .end local v1           #size:I
    :goto_24
    return v2

    :cond_25
    move v2, v4

    goto :goto_24
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    const/high16 v3, -0x8000

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 171
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 173
    :cond_10
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 174
    :cond_19
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    .line 175
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    .line 177
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 297
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 307
    :goto_5
    return v2

    .line 300
    :cond_6
    if-eqz p1, :cond_c

    instance-of v2, p1, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    if-nez v2, :cond_e

    :cond_c
    move v2, v4

    .line 301
    goto :goto_5

    .line 303
    :cond_e
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    move-object v1, v0

    .line 304
    .local v1, peer:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->size()I

    move-result v2

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_1e

    move v2, v4

    .line 305
    goto :goto_5

    .line 307
    :cond_1e
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    iget-object v3, v1, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    iget-object v3, v1, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v2, v5

    goto :goto_5

    :cond_34
    move v2, v4

    goto :goto_5
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 187
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    if-gt p1, v0, :cond_c

    if-ltz p1, :cond_c

    .line 188
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 194
    :goto_b
    return-object v0

    .line 189
    :cond_c
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    if-le p1, v0, :cond_12

    move-object v0, v1

    .line 190
    goto :goto_b

    .line 191
    :cond_12
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v0, :cond_21

    .line 192
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    :cond_21
    move-object v0, v1

    .line 194
    goto :goto_b
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 275
    const/4 v0, 0x1

    .line 276
    .local v0, hashCode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_19

    .line 277
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 278
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_16

    .line 279
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    add-int v0, v3, v1

    .line 276
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 284
    .end local v2           #value:Ljava/lang/Object;
    :cond_19
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v3, :cond_1f

    move v3, v0

    :goto_1e
    return v3

    :cond_1f
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_1e
.end method

.method public keys()Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;
    .registers 2

    .prologue
    .line 137
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;-><init>(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)V

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 209
    if-nez p2, :cond_6

    .line 210
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->remove(I)Ljava/lang/Object;

    .line 231
    :goto_5
    return-void

    .line 213
    :cond_6
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    if-le p1, v0, :cond_c

    .line 214
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    .line 216
    :cond_c
    if-ltz p1, :cond_13

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_19

    :cond_13
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->expandLowerIfNecessary(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 217
    :cond_19
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    if-le p1, v0, :cond_2a

    .line 218
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    .line 220
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    .line 224
    :cond_25
    :goto_25
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto :goto_5

    .line 221
    :cond_2a
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_25

    .line 222
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    goto :goto_25

    .line 226
    :cond_37
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_42

    .line 227
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    .line 229
    :cond_42
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 5
    .parameter "key"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, deleted:Ljava/lang/Object;
    if-ltz p1, :cond_1b

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p1, v1, :cond_1b

    .line 244
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 245
    if-eqz v0, :cond_14

    .line 246
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    .line 248
    :cond_14
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .end local v0           #deleted:Ljava/lang/Object;
    :cond_19
    move-object v1, v0

    .line 252
    :goto_1a
    return-object v1

    .line 249
    .restart local v0       #deleted:Ljava/lang/Object;
    :cond_1b
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v1, :cond_19

    .line 250
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1a
.end method

.method public size()I
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "IntMap{lower:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2a

    .line 384
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_27

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 386
    const-string v2, "=>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 388
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 391
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", higher:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
