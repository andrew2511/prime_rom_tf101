.class public Lorg/apache/xml/utils/SuballocatedIntVector;
.super Ljava/lang/Object;
.source "SuballocatedIntVector.java"


# static fields
.field protected static final NUMBLOCKS_DEFAULT:I = 0x20


# instance fields
.field protected m_MASK:I

.field protected m_SHIFT:I

.field protected m_blocksize:I

.field protected m_buildCache:[I

.field protected m_buildCacheStartIndex:I

.field protected m_firstFree:I

.field protected m_map:[[I

.field protected m_map0:[I

.field protected m_numblocks:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 81
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "blocksize"

    .prologue
    .line 115
    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    .line 116
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .parameter "blocksize"
    .parameter "numblocks"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    .line 61
    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 95
    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    :goto_d
    ushr-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_18

    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    goto :goto_d

    .line 97
    :cond_18
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    shl-int v0, v1, v0

    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    .line 98
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    .line 99
    iput p2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    .line 101
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    .line 102
    new-array v0, p2, [[I

    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 103
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    aput-object v1, v0, v2

    .line 104
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    .line 105
    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    .line 106
    return-void
.end method

.method private addElements(I)V
    .registers 8
    .parameter "numberOfElements"

    .prologue
    .line 233
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int v3, v4, p1

    .line 234
    .local v3, newlen:I
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-le v3, v4, :cond_24

    .line 236
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, v4, v5

    .line 237
    .local v1, index:I
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/2addr v4, p1

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, v4, v5

    .line 238
    .local v2, newindex:I
    add-int/lit8 v0, v1, 0x1

    .local v0, i:I
    :goto_17
    if-gt v0, v2, :cond_24

    .line 239
    iget-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v5, v5, [I

    aput-object v5, v4, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 241
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #newindex:I
    :cond_24
    iput v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 242
    return-void
.end method

.method private addElements(II)V
    .registers 15
    .parameter "value"
    .parameter "numberOfElements"

    .prologue
    const/4 v11, 0x0

    .line 192
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/2addr v9, p2

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge v9, v10, :cond_18

    .line 193
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, p2, :cond_6b

    .line 195
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    aput p1, v9, v10

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 199
    .end local v3           #i:I
    :cond_18
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v4, v9, v10

    .line 200
    .local v4, index:I
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v7, v9, v10

    .line 201
    .local v7, offset:I
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/2addr v9, p2

    iput v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 202
    :goto_29
    if-lez p2, :cond_6b

    .line 204
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v9, v9

    if-lt v4, v9, :cond_40

    .line 206
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int v6, v4, v9

    .line 207
    .local v6, newsize:I
    new-array v5, v6, [[I

    .line 208
    .local v5, newMap:[[I
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v10, v10

    invoke-static {v9, v11, v5, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 211
    .end local v5           #newMap:[[I
    .end local v6           #newsize:I
    :cond_40
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v9, v4

    .line 212
    .local v0, block:[I
    if-nez v0, :cond_4e

    .line 213
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v10, [I

    .end local v0           #block:[I
    aput-object v0, v9, v4

    .line 214
    .restart local v0       #block:[I
    :cond_4e
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v9, v7

    if-ge v9, p2, :cond_65

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v9, v7

    move v1, v9

    .line 216
    .local v1, copied:I
    :goto_57
    sub-int/2addr p2, v1

    move v2, v1

    .end local v1           #copied:I
    .local v2, copied:I
    move v8, v7

    .line 217
    .end local v7           #offset:I
    .local v8, offset:I
    :goto_5a
    add-int/lit8 v1, v2, -0x1

    .end local v2           #copied:I
    .restart local v1       #copied:I
    if-lez v2, :cond_67

    .line 218
    add-int/lit8 v7, v8, 0x1

    .end local v8           #offset:I
    .restart local v7       #offset:I
    aput p1, v0, v8

    move v2, v1

    .end local v1           #copied:I
    .restart local v2       #copied:I
    move v8, v7

    .end local v7           #offset:I
    .restart local v8       #offset:I
    goto :goto_5a

    .end local v2           #copied:I
    .end local v8           #offset:I
    .restart local v7       #offset:I
    :cond_65
    move v1, p2

    .line 214
    goto :goto_57

    .line 220
    .end local v7           #offset:I
    .restart local v1       #copied:I
    .restart local v8       #offset:I
    :cond_67
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    .line 221
    .end local v8           #offset:I
    .restart local v7       #offset:I
    goto :goto_29

    .line 223
    .end local v0           #block:[I
    .end local v1           #copied:I
    .end local v4           #index:I
    .end local v7           #offset:I
    :cond_6b
    return-void
.end method

.method private contains(I)Z
    .registers 4
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 454
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method private insertElementAt(II)V
    .registers 15
    .parameter "value"
    .parameter "at"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 257
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-ne p2, v8, :cond_a

    .line 258
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 305
    :cond_9
    :goto_9
    return-void

    .line 259
    :cond_a
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-le p2, v8, :cond_40

    .line 261
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, p2, v8

    .line 262
    .local v2, index:I
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v8, v8

    if-lt v2, v8, :cond_27

    .line 264
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int v5, v2, v8

    .line 265
    .local v5, newsize:I
    new-array v4, v5, [[I

    .line 266
    .local v4, newMap:[[I
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v9, v9

    invoke-static {v8, v10, v4, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iput-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 269
    .end local v4           #newMap:[[I
    .end local v5           #newsize:I
    :cond_27
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v8, v2

    .line 270
    .local v0, block:[I
    if-nez v0, :cond_35

    .line 271
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v9, [I

    .end local v0           #block:[I
    aput-object v0, v8, v2

    .line 272
    .restart local v0       #block:[I
    :cond_35
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v6, p2, v8

    .line 273
    .local v6, offset:I
    aput p1, v0, v6

    .line 274
    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    goto :goto_9

    .line 278
    .end local v0           #block:[I
    .end local v2           #index:I
    .end local v6           #offset:I
    :cond_40
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, p2, v8

    .line 279
    .restart local v2       #index:I
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, v8, v9

    .line 280
    .local v3, maxindex:I
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 281
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v6, p2, v8

    .line 285
    .restart local v6       #offset:I
    :goto_54
    if-gt v2, v3, :cond_9

    .line 287
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v8, v6

    sub-int v1, v8, v11

    .line 288
    .local v1, copylen:I
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v8, v2

    .line 289
    .restart local v0       #block:[I
    if-nez v0, :cond_71

    .line 291
    const/4 v7, 0x0

    .line 292
    .local v7, push:I
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v9, [I

    .end local v0           #block:[I
    aput-object v0, v8, v2

    .line 299
    .restart local v0       #block:[I
    :goto_6a
    aput p1, v0, v6

    .line 300
    move p1, v7

    .line 301
    const/4 v6, 0x0

    .line 302
    add-int/lit8 v2, v2, 0x1

    .line 303
    goto :goto_54

    .line 296
    .end local v7           #push:I
    :cond_71
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v8, v11

    aget v7, v0, v8

    .line 297
    .restart local v7       #push:I
    add-int/lit8 v8, v6, 0x1

    invoke-static {v0, v6, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6a
.end method

.method private lastIndexOf(I)I
    .registers 8
    .parameter "elem"

    .prologue
    .line 524
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v1, v4, v5

    .line 525
    .local v1, boffset:I
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, v4, v5

    .line 526
    .local v2, index:I
    :goto_c
    if-ltz v2, :cond_27

    .line 529
    iget-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v4, v2

    .line 530
    .local v0, block:[I
    if-eqz v0, :cond_23

    .line 531
    move v3, v1

    .local v3, offset:I
    :goto_15
    if-ltz v3, :cond_23

    .line 532
    aget v4, v0, v3

    if-ne v4, p1, :cond_20

    .line 533
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    .line 536
    .end local v0           #block:[I
    .end local v3           #offset:I
    :goto_1f
    return v4

    .line 531
    .restart local v0       #block:[I
    .restart local v3       #offset:I
    :cond_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 534
    .end local v3           #offset:I
    :cond_23
    const/4 v1, 0x0

    .line 527
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 536
    .end local v0           #block:[I
    :cond_27
    const/4 v4, -0x1

    goto :goto_1f
.end method

.method private removeElement(I)Z
    .registers 4
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    move-result v0

    .line 331
    .local v0, at:I
    if-gez v0, :cond_8

    .line 334
    :goto_7
    return v1

    .line 333
    :cond_8
    invoke-direct {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->removeElementAt(I)V

    .line 334
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private removeElementAt(I)V
    .registers 12
    .parameter "at"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 348
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-ge p1, v6, :cond_4e

    .line 350
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, p1, v6

    .line 351
    .local v2, index:I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, v6, v7

    .line 352
    .local v3, maxindex:I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v5, p1, v6

    .line 354
    .local v5, offset:I
    :goto_14
    if-gt v2, v3, :cond_4e

    .line 356
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v6, v5

    sub-int v1, v6, v8

    .line 357
    .local v1, copylen:I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v6, v2

    .line 358
    .local v0, block:[I
    if-nez v0, :cond_40

    .line 359
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v7, [I

    .end local v0           #block:[I
    aput-object v0, v6, v2

    .line 362
    .restart local v0       #block:[I
    :goto_29
    if-ge v2, v3, :cond_48

    .line 364
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    add-int/lit8 v7, v2, 0x1

    aget-object v4, v6, v7

    .line 365
    .local v4, next:[I
    if-eqz v4, :cond_3c

    .line 366
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v6, v8

    if-eqz v4, :cond_46

    aget v7, v4, v9

    :goto_3a
    aput v7, v0, v6

    .line 370
    .end local v4           #next:[I
    :cond_3c
    :goto_3c
    const/4 v5, 0x0

    .line 371
    add-int/lit8 v2, v2, 0x1

    .line 372
    goto :goto_14

    .line 361
    :cond_40
    add-int/lit8 v6, v5, 0x1

    invoke-static {v0, v6, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    .restart local v4       #next:[I
    :cond_46
    move v7, v9

    .line 366
    goto :goto_3a

    .line 369
    .end local v4           #next:[I
    :cond_48
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v6, v8

    aput v9, v0, v6

    goto :goto_3c

    .line 374
    .end local v0           #block:[I
    .end local v1           #copylen:I
    .end local v2           #index:I
    .end local v3           #maxindex:I
    .end local v5           #offset:I
    :cond_4e
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    sub-int/2addr v6, v8

    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 375
    return-void
.end method


# virtual methods
.method public addElement(I)V
    .registers 11
    .parameter "value"

    .prologue
    const/4 v8, 0x0

    .line 147
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    sub-int v2, v6, v7

    .line 150
    .local v2, indexRelativeToCache:I
    if-ltz v2, :cond_18

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge v2, v6, :cond_18

    .line 151
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    aput p1, v6, v2

    .line 152
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 183
    :goto_17
    return-void

    .line 161
    :cond_18
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, v6, v7

    .line 162
    .local v1, index:I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v5, v6, v7

    .line 164
    .local v5, offset:I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v6, v6

    if-lt v1, v6, :cond_39

    .line 166
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int v4, v1, v6

    .line 167
    .local v4, newsize:I
    new-array v3, v4, [[I

    .line 168
    .local v3, newMap:[[I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v7, v7

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 171
    .end local v3           #newMap:[[I
    .end local v4           #newsize:I
    :cond_39
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v6, v1

    .line 172
    .local v0, block:[I
    if-nez v0, :cond_47

    .line 173
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v7, [I

    .end local v0           #block:[I
    aput-object v0, v6, v1

    .line 174
    .restart local v0       #block:[I
    :cond_47
    aput p1, v0, v5

    .line 178
    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    .line 179
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    sub-int/2addr v6, v5

    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    .line 181
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    goto :goto_17
.end method

.method public elementAt(I)I
    .registers 4
    .parameter "i"

    .prologue
    .line 439
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 440
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    aget v0, v0, p1

    .line 442
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_8
.end method

.method public final getMap()[[I
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    return-object v0
.end method

.method public final getMap0()[I
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    return-object v0
.end method

.method public indexOf(I)I
    .registers 3
    .parameter "elem"

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .registers 12
    .parameter "elem"
    .parameter "index"

    .prologue
    const/4 v8, -0x1

    .line 470
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-lt p2, v6, :cond_7

    move v6, v8

    .line 494
    :goto_6
    return v6

    .line 473
    :cond_7
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v0, p2, v6

    .line 474
    .local v0, bindex:I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v2, p2, v6

    .line 475
    .local v2, boffset:I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, v6, v7

    .line 478
    .local v3, maxindex:I
    :goto_15
    if-ge v0, v3, :cond_32

    .line 480
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v1, v6, v0

    .line 481
    .local v1, block:[I
    if-eqz v1, :cond_2e

    .line 482
    move v5, v2

    .local v5, offset:I
    :goto_1e
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge v5, v6, :cond_2e

    .line 483
    aget v6, v1, v5

    if-ne v6, p1, :cond_2b

    .line 484
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v5

    goto :goto_6

    .line 482
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 485
    .end local v5           #offset:I
    :cond_2e
    const/4 v2, 0x0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 488
    .end local v1           #block:[I
    :cond_32
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v4, v6, v7

    .line 489
    .local v4, maxoffset:I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v1, v6, v3

    .line 490
    .restart local v1       #block:[I
    move v5, v2

    .restart local v5       #offset:I
    :goto_3d
    if-ge v5, v4, :cond_4b

    .line 491
    aget v6, v1, v5

    if-ne v6, p1, :cond_48

    .line 492
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    goto :goto_6

    .line 490
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_4b
    move v6, v8

    .line 494
    goto :goto_6
.end method

.method public removeAllElements()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iput v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 313
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    .line 314
    iput v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    .line 315
    return-void
.end method

.method public setElementAt(II)V
    .registers 11
    .parameter "value"
    .parameter "at"

    .prologue
    const/4 v7, 0x0

    .line 389
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p2, v5, :cond_12

    .line 390
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    aput p1, v5, p2

    .line 410
    :goto_9
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-lt p2, v5, :cond_11

    .line 411
    add-int/lit8 v5, p2, 0x1

    iput v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 412
    :cond_11
    return-void

    .line 393
    :cond_12
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, p2, v5

    .line 394
    .local v1, index:I
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v4, p2, v5

    .line 396
    .local v4, offset:I
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v5, v5

    if-lt v1, v5, :cond_2f

    .line 398
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int v3, v1, v5

    .line 399
    .local v3, newsize:I
    new-array v2, v3, [[I

    .line 400
    .local v2, newMap:[[I
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v6, v6

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iput-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 404
    .end local v2           #newMap:[[I
    .end local v3           #newsize:I
    :cond_2f
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v5, v1

    .line 405
    .local v0, block:[I
    if-nez v0, :cond_3d

    .line 406
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v6, [I

    .end local v0           #block:[I
    aput-object v0, v5, v1

    .line 407
    .restart local v0       #block:[I
    :cond_3d
    aput p1, v0, v4

    goto :goto_9
.end method

.method public setSize(I)V
    .registers 3
    .parameter "sz"

    .prologue
    .line 136
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-le v0, p1, :cond_6

    .line 137
    iput p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 138
    :cond_6
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return v0
.end method
