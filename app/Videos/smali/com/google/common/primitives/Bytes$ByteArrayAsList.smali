.class Lcom/google/common/primitives/Bytes$ByteArrayAsList;
.super Ljava/util/AbstractList;
.source "Bytes.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Bytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[B

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([B)V
    .locals 2
    .parameter "array"

    .prologue
    .line 266
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([BII)V

    .line 267
    return-void
.end method

.method constructor <init>([BII)V
    .locals 0
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    .line 271
    iput p2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    .line 272
    iput p3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    .line 273
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 290
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Bytes;->access$000([BBII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "object"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 334
    if-ne p1, p0, :cond_0

    move v4, v8

    .line 350
    :goto_0
    return v4

    .line 337
    :cond_0
    instance-of v4, p1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v4, :cond_4

    .line 338
    move-object v0, p1

    check-cast v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    move-object v3, v0

    .line 339
    .local v3, that:Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v2

    .line 340
    .local v2, size:I
    invoke-virtual {v3}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v4

    if-eq v4, v2, :cond_1

    move v4, v7

    .line 341
    goto :goto_0

    .line 343
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 344
    iget-object v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v5, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    iget-object v5, v3, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v6, v3, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_2

    move v4, v7

    .line 345
    goto :goto_0

    .line 343
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v4, v8

    .line 348
    goto :goto_0

    .line 350
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #that:Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Byte;
    .locals 2
    .parameter "index"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 285
    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->get(I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 354
    const/4 v1, 0x1

    .line 355
    .local v1, result:I
    iget v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 356
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Bytes;->hashCode(B)I

    move-result v3

    add-int v1, v2, v3

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter "target"

    .prologue
    .line 296
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Bytes;->access$000([BBII)I

    move-result v0

    .line 298
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 299
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 302
    .end local v0           #i:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter "target"

    .prologue
    .line 307
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Bytes;->access$100([BBII)I

    move-result v0

    .line 309
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 310
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 313
    .end local v0           #i:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Byte;)Ljava/lang/Byte;
    .locals 4
    .parameter "index"
    .parameter "element"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 318
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v2, p1

    aget-byte v0, v1, v2

    .line 319
    .local v0, oldValue:B
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 320
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    check-cast p2, Ljava/lang/Byte;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->set(ILjava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    .line 326
    .local v0, size:I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 327
    if-ne p1, p2, :cond_0

    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([BII)V

    goto :goto_0
.end method

.method toByteArray()[B
    .locals 5

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v1

    .line 373
    .local v1, size:I
    new-array v0, v1, [B

    .line 374
    .local v0, result:[B
    iget-object v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 363
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 365
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    aget-byte v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
