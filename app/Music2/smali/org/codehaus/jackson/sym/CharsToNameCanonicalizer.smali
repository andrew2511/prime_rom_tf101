.class public final Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TABLE_SIZE:I = 0x40

.field static final MAX_SYMBOL_TABLE_SIZE:I = 0x1770

.field static final sBootstrapSymbolTable:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;


# instance fields
.field protected _buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

.field protected _dirty:Z

.field protected _indexMask:I

.field final _intern:Z

.field protected _parent:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

.field protected _size:I

.field protected _sizeThreshold:I

.field protected _symbols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;-><init>(IZ)V

    sput-object v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 62
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4
    .parameter "initialSize"
    .parameter "intern"

    .prologue
    const/4 v1, 0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-boolean p2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_intern:Z

    .line 161
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 164
    if-ge p1, v1, :cond_0

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not use negative/zero initial size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    const/4 v0, 0x4

    .line 172
    .local v0, currSize:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 173
    add-int/2addr v0, v0

    goto :goto_0

    .line 175
    :cond_1
    move p1, v0

    .line 178
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->initTables(I)V

    .line 179
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;Z[Ljava/lang/String;[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;I)V
    .locals 2
    .parameter "parent"
    .parameter "intern"
    .parameter "symbols"
    .parameter "buckets"
    .parameter "size"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 199
    iput-boolean p2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_intern:Z

    .line 201
    iput-object p3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 203
    iput p5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    .line 205
    array-length v0, p3

    .line 206
    .local v0, arrayLen:I
    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 207
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 211
    return-void
.end method

.method public static calcHash(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 391
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 392
    .local v0, hash:I
    const/4 v1, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 393
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_0
    return v0
.end method

.method public static calcHash([CII)I
    .locals 4
    .parameter "buffer"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 383
    const/4 v2, 0x0

    aget-char v0, p0, v2

    .line 384
    .local v0, hash:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 385
    mul-int/lit8 v2, v0, 0x1f

    aget-char v3, p0, v1

    add-int v0, v2, v3

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_0
    return v0
.end method

.method private copyArrays()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 410
    iget-object v1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 411
    .local v1, oldSyms:[Ljava/lang/String;
    array-length v2, v1

    .line 412
    .local v2, size:I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 413
    iget-object v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 415
    .local v0, oldBuckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    array-length v2, v0

    .line 416
    new-array v3, v2, [Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 417
    iget-object v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    return-void
.end method

.method public static createRoot(Z)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .locals 1
    .parameter "intern"

    .prologue
    .line 147
    sget-object v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeOrphan(Z)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method private initTables(I)V
    .locals 1
    .parameter "initialSize"

    .prologue
    .line 183
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 184
    shr-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 186
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    .line 189
    shr-int/lit8 v0, p1, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 190
    return-void
.end method

.method private makeOrphan(Z)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .locals 6
    .parameter "intern"

    .prologue
    .line 232
    new-instance v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v4, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;-><init>(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;Z[Ljava/lang/String;[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;I)V

    return-object v0
.end method

.method private declared-synchronized mergeChild(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    const/16 v1, 0x1770

    if-le v0, v1, :cond_1

    .line 256
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->initTables(I)V

    .line 276
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_0
    monitor-exit p0

    return-void

    .line 262
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 266
    iget-object v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 267
    iget-object v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 268
    iget v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    .line 269
    iget v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 270
    iget v0, p1, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    iput v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private rehash()V
    .locals 13

    .prologue
    .line 429
    iget-object v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v8, v10

    .line 430
    .local v8, size:I
    add-int v5, v8, v8

    .line 431
    .local v5, newSize:I
    iget-object v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 432
    .local v7, oldSyms:[Ljava/lang/String;
    iget-object v6, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 433
    .local v6, oldBuckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    new-array v10, v5, [Ljava/lang/String;

    iput-object v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 434
    shr-int/lit8 v10, v5, 0x1

    new-array v10, v10, [Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 436
    const/4 v10, 0x1

    sub-int v10, v5, v10

    iput v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 437
    iget v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    iget v11, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    add-int/2addr v10, v11

    iput v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 439
    const/4 v2, 0x0

    .line 444
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_2

    .line 445
    aget-object v9, v7, v3

    .line 446
    .local v9, symbol:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 447
    add-int/lit8 v2, v2, 0x1

    .line 448
    invoke-static {v9}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v10

    iget v11, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int v4, v10, v11

    .line 449
    .local v4, index:I
    iget-object v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v10, v10, v4

    if-nez v10, :cond_1

    .line 450
    iget-object v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v9, v10, v4

    .line 444
    .end local v4           #index:I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .restart local v4       #index:I
    :cond_1
    shr-int/lit8 v1, v4, 0x1

    .line 453
    .local v1, bix:I
    iget-object v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    new-instance v11, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v12, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v12, v12, v1

    invoke-direct {v11, v9, v12}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V

    aput-object v11, v10, v1

    goto :goto_1

    .line 458
    .end local v1           #bix:I
    .end local v4           #index:I
    .end local v9           #symbol:Ljava/lang/String;
    :cond_2
    shr-int/lit8 v8, v8, 0x1

    .line 459
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_5

    .line 460
    aget-object v0, v6, v3

    .line 461
    .local v0, b:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    :goto_3
    if-eqz v0, :cond_4

    .line 462
    add-int/lit8 v2, v2, 0x1

    .line 463
    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getSymbol()Ljava/lang/String;

    move-result-object v9

    .line 464
    .restart local v9       #symbol:Ljava/lang/String;
    invoke-static {v9}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v10

    iget v11, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int v4, v10, v11

    .line 465
    .restart local v4       #index:I
    iget-object v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v10, v10, v4

    if-nez v10, :cond_3

    .line 466
    iget-object v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v9, v10, v4

    .line 471
    :goto_4
    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object v0

    .line 472
    goto :goto_3

    .line 468
    :cond_3
    shr-int/lit8 v1, v4, 0x1

    .line 469
    .restart local v1       #bix:I
    iget-object v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    new-instance v11, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v12, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v12, v12, v1

    invoke-direct {v11, v9, v12}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V

    aput-object v11, v10, v1

    goto :goto_4

    .line 459
    .end local v1           #bix:I
    .end local v4           #index:I
    .end local v9           #symbol:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 475
    .end local v0           #b:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    :cond_5
    iget v10, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    if-eq v2, v10, :cond_6

    .line 476
    new-instance v10, Ljava/lang/Error;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Internal error on SymbolTable.rehash(): had "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries; now have "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10

    .line 478
    :cond_6
    return-void
.end method


# virtual methods
.method public findSymbol([CIII)Ljava/lang/String;
    .locals 8
    .parameter "buffer"
    .parameter "start"
    .parameter "len"
    .parameter "hash"

    .prologue
    const/4 v7, 0x1

    .line 313
    if-ge p3, v7, :cond_0

    .line 314
    const-string v5, ""

    .line 370
    :goto_0
    return-object v5

    .line 317
    :cond_0
    iget v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int/2addr p4, v5

    .line 319
    iget-object v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v4, v5, p4

    .line 322
    .local v4, sym:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 324
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, p3, :cond_3

    .line 325
    const/4 v2, 0x0

    .line 327
    .local v2, i:I
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v6, p2, v2

    aget-char v6, p1, v6

    if-eq v5, v6, :cond_2

    .line 332
    :goto_1
    if-ne v2, p3, :cond_3

    move-object v5, v4

    .line 333
    goto :goto_0

    .line 330
    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_1

    goto :goto_1

    .line 337
    .end local v2           #i:I
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    shr-int/lit8 v6, p4, 0x1

    aget-object v0, v5, v6

    .line 338
    .local v0, b:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_4

    .line 339
    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->find([CII)Ljava/lang/String;

    move-result-object v4

    .line 340
    if-eqz v4, :cond_4

    move-object v5, v4

    .line 341
    goto :goto_0

    .line 346
    .end local v0           #b:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    :cond_4
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    if-nez v5, :cond_7

    .line 347
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->copyArrays()V

    .line 348
    iput-boolean v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 356
    :cond_5
    :goto_2
    iget v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    .line 358
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 359
    .local v3, newSymbol:Ljava/lang/String;
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_intern:Z

    if-eqz v5, :cond_6

    .line 360
    sget-object v5, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;

    invoke-virtual {v5, v3}, Lorg/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 363
    :cond_6
    iget-object v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v5, v5, p4

    if-nez v5, :cond_8

    .line 364
    iget-object v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v3, v5, p4

    :goto_3
    move-object v5, v3

    .line 370
    goto :goto_0

    .line 349
    .end local v3           #newSymbol:Ljava/lang/String;
    :cond_7
    iget v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    iget v6, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    if-lt v5, v6, :cond_5

    .line 350
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->rehash()V

    .line 354
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->calcHash([CII)I

    move-result v5

    iget v6, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int p4, v5, v6

    goto :goto_2

    .line 366
    .restart local v3       #newSymbol:Ljava/lang/String;
    :cond_8
    shr-int/lit8 v1, p4, 0x1

    .line 367
    .local v1, bix:I
    iget-object v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    new-instance v6, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v7, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v7, v7, v1

    invoke-direct {v6, v3, v7}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V

    aput-object v6, v5, v1

    goto :goto_3
.end method

.method public declared-synchronized makeChild(Z)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .locals 6
    .parameter "intern"

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v3, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v4, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_buckets:[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    iget v5, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;-><init>(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;Z[Ljava/lang/String;[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->mergeChild(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_dirty:Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->_size:I

    return v0
.end method
