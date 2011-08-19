.class public Lcom/google/api/client/util/ArrayMap;
.super Ljava/util/AbstractMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ArrayMap$Entry;,
        Lcom/google/api/client/util/ArrayMap$EntryIterator;,
        Lcom/google/api/client/util/ArrayMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private data:[Ljava/lang/Object;

.field private entrySet:Lcom/google/api/client/util/ArrayMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/client/util/ArrayMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 399
    return-void
.end method

.method static synthetic access$000(Lcom/google/api/client/util/ArrayMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    return v0
.end method

.method public static create()Lcom/google/api/client/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/api/client/util/ArrayMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/google/api/client/util/ArrayMap;

    invoke-direct {v0}, Lcom/google/api/client/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/api/client/util/ArrayMap;
    .locals 1
    .parameter "initialCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/api/client/util/ArrayMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    .line 60
    .local v0, result:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/ArrayMap;->ensureCapacity(I)V

    .line 61
    return-object v0
.end method

.method private getDataIndexOfKey(Ljava/lang/Object;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 280
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v1, v4, 0x1

    .line 281
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 282
    .local v0, data:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 283
    aget-object v3, v0, v2

    .line 284
    .local v3, k:Ljava/lang/Object;
    if-nez p1, :cond_1

    if-nez v3, :cond_2

    :cond_0
    move v4, v2

    .line 288
    .end local v3           #k:Ljava/lang/Object;
    :goto_1
    return v4

    .line 284
    .restart local v3       #k:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 288
    .end local v3           #k:Ljava/lang/Object;
    :cond_3
    const/4 v4, -0x2

    goto :goto_1
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;
    .locals 7
    .parameter "keyValuePairs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/util/ArrayMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 76
    invoke-static {v6}, Lcom/google/api/client/util/ArrayMap;->create(I)Lcom/google/api/client/util/ArrayMap;

    move-result-object v2

    .line 77
    .local v2, result:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    array-length v1, p0

    .line 78
    .local v1, length:I
    rem-int/lit8 v3, v1, 0x2

    if-ne v6, v3, :cond_0

    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing value for last key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, v1, v6

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_0
    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 83
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, v2, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 84
    .local v0, data:[Ljava/lang/Object;
    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    return-object v2
.end method

.method private removeFromDataIndexOfKey(I)Ljava/lang/Object;
    .locals 8
    .parameter "dataIndexOfKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 296
    iget v4, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v1, v4, 0x1

    .line 297
    .local v1, dataSize:I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    move-object v4, v6

    .line 308
    :goto_0
    return-object v4

    .line 300
    :cond_1
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v3

    .line 301
    .local v3, result:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 302
    .local v0, data:[Ljava/lang/Object;
    sub-int v4, v1, p1

    sub-int v2, v4, v7

    .line 303
    .local v2, moved:I
    if-eqz v2, :cond_2

    .line 304
    add-int/lit8 v4, p1, 0x2

    invoke-static {v0, v4, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    :cond_2
    iget v4, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 307
    sub-int v4, v1, v7

    invoke-direct {p0, v4, v6, v6}, Lcom/google/api/client/util/ArrayMap;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v3

    .line 308
    goto :goto_0
.end method

.method private setData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "dataIndexOfKey"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 262
    .local v0, data:[Ljava/lang/Object;
    aput-object p2, v0, p1

    .line 263
    add-int/lit8 v1, p1, 0x1

    aput-object p3, v0, v1

    .line 264
    return-void
.end method

.method private setDataCapacity(I)V
    .locals 5
    .parameter "newDataCapacity"

    .prologue
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 246
    if-nez p1, :cond_1

    .line 247
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget v2, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 251
    .local v2, size:I
    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 252
    .local v1, oldData:[Ljava/lang/Object;
    if-eqz v2, :cond_2

    array-length v3, v1

    if-eq p1, v3, :cond_0

    .line 253
    :cond_2
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 254
    .local v0, newData:[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 255
    shl-int/lit8 v3, v2, 0x1

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private valueAtDataIndex(I)Ljava/lang/Object;
    .locals 2
    .parameter "dataIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-gez p1, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 272
    :goto_0
    return-object v1

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .local v0, result:Ljava/lang/Object;,"TV;"
    move-object v1, v0

    .line 272
    goto :goto_0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 313
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public clone()Lcom/google/api/client/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/client/util/ArrayMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 343
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/util/ArrayMap;

    .line 344
    .local v3, result:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/google/api/client/util/ArrayMap;->entrySet:Lcom/google/api/client/util/ArrayMap$EntrySet;

    .line 345
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 346
    .local v0, data:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 347
    array-length v2, v0

    .line 348
    .local v2, length:I
    new-array v4, v2, [Ljava/lang/Object;

    iput-object v4, v3, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 349
    .local v4, resultData:[Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #length:I
    .end local v4           #resultData:[Ljava/lang/Object;
    :cond_0
    move-object v5, v3

    .line 354
    .end local v0           #data:[Ljava/lang/Object;
    .end local v3           #result:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    :goto_0
    return-object v5

    .line 352
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/CloneNotSupportedException;
    move-object v5, v7

    .line 354
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 178
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v0, -0x2

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 319
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v1, v4, 0x1

    .line 320
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 321
    .local v0, data:[Ljava/lang/Object;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 322
    aget-object v3, v0, v2

    .line 323
    .local v3, v:Ljava/lang/Object;
    if-nez p1, :cond_1

    if-nez v3, :cond_2

    .line 324
    :cond_0
    const/4 v4, 0x1

    .line 327
    .end local v3           #v:Ljava/lang/Object;
    :goto_1
    return v4

    .line 323
    .restart local v3       #v:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 327
    .end local v3           #v:Ljava/lang/Object;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final ensureCapacity(I)V
    .locals 6
    .parameter "minCapacity"

    .prologue
    .line 230
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 231
    .local v0, data:[Ljava/lang/Object;
    shl-int/lit8 v1, p1, 0x1

    .line 232
    .local v1, minDataCapacity:I
    if-nez v0, :cond_3

    const/4 v4, 0x0

    move v3, v4

    .line 233
    .local v3, oldDataCapacity:I
    :goto_0
    if-le v1, v3, :cond_2

    .line 234
    div-int/lit8 v4, v3, 0x2

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v2, v4, 0x1

    .line 235
    .local v2, newDataCapacity:I
    rem-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 236
    add-int/lit8 v2, v2, 0x1

    .line 238
    :cond_0
    if-ge v2, v1, :cond_1

    .line 239
    move v2, v1

    .line 241
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/api/client/util/ArrayMap;->setDataCapacity(I)V

    .line 243
    .end local v2           #newDataCapacity:I
    :cond_2
    return-void

    .line 232
    .end local v3           #oldDataCapacity:I
    :cond_3
    array-length v4, v0

    move v3, v4

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->entrySet:Lcom/google/api/client/util/ArrayMap$EntrySet;

    .line 333
    .local v0, entrySet:Lcom/google/api/client/util/ArrayMap$EntrySet;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.EntrySet;"
    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/google/api/client/util/ArrayMap$EntrySet;

    .end local v0           #entrySet:Lcom/google/api/client/util/ArrayMap$EntrySet;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.EntrySet;"
    invoke-direct {v0, p0}, Lcom/google/api/client/util/ArrayMap$EntrySet;-><init>(Lcom/google/api/client/util/ArrayMap;)V

    iput-object v0, p0, Lcom/google/api/client/util/ArrayMap;->entrySet:Lcom/google/api/client/util/ArrayMap$EntrySet;

    .line 336
    .restart local v0       #entrySet:Lcom/google/api/client/util/ArrayMap$EntrySet;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.EntrySet;"
    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getIndexOfKey(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getKey(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-lt p1, v1, :cond_1

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    return-object v1

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    shl-int/lit8 v2, p1, 0x1

    aget-object v0, v1, v2

    .local v0, result:Ljava/lang/Object;,"TK;"
    move-object v1, v0

    .line 101
    goto :goto_0
.end method

.method public final getValue(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-lt p1, v0, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_1
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 203
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 204
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 206
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    shl-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->removeFromDataIndexOfKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->removeFromDataIndexOfKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget v1, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 146
    .local v1, size:I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 147
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 149
    :cond_1
    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v2, v3, 0x1

    .line 150
    .local v2, valueDataIndex:I
    invoke-direct {p0, v2}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, result:Ljava/lang/Object;,"TV;"
    iget-object v3, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 152
    return-object v0
.end method

.method public final set(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    if-gez p1, :cond_0

    .line 125
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 127
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 128
    .local v1, minSize:I
    invoke-virtual {p0, v1}, Lcom/google/api/client/util/ArrayMap;->ensureCapacity(I)V

    .line 129
    shl-int/lit8 v0, p1, 0x1

    .line 130
    .local v0, dataIndex:I
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v2

    .line 131
    .local v2, result:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, v0, p2, p3}, Lcom/google/api/client/util/ArrayMap;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget v3, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-le v1, v3, :cond_1

    .line 133
    iput v1, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 135
    :cond_1
    return-object v2
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    return v0
.end method

.method public final trim()V
    .locals 1

    .prologue
    .line 222
    .local p0, this:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->setDataCapacity(I)V

    .line 223
    return-void
.end method
