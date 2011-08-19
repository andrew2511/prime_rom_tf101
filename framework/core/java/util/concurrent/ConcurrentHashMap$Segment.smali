.class final Ljava/util/concurrent/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field transient modCount:I

.field volatile transient table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient threshold:I


# direct methods
.method constructor <init>(IF)V
    .registers 4
    .parameter "initialCapacity"
    .parameter "lf"

    .prologue
    .line 288
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 289
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    .line 290
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 291
    return-void
.end method

.method static final newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .registers 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 295
    new-array v0, p0, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 4

    .prologue
    .line 548
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_1f

    .line 549
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 551
    :try_start_7
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 552
    .local v1, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 553
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 554
    :cond_13
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 555
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 557
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 560
    .end local v0           #i:I
    .end local v1           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1f
    return-void

    .line 557
    :catchall_20
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 5
    .parameter "key"
    .parameter "hash"

    .prologue
    .line 350
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v1, :cond_1b

    .line 351
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 352
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_8
    if-eqz v0, :cond_1b

    .line 353
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_18

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 354
    const/4 v1, 0x1

    .line 358
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_17
    return v1

    .line 355
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_18
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_8

    .line 358
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 8
    .parameter "value"

    .prologue
    .line 362
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_24

    .line 363
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 364
    .local v3, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v2, v3

    .line 365
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_24

    .line 366
    aget-object v0, v3, v1

    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_c
    if-eqz v0, :cond_21

    .line 367
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 368
    .local v4, v:Ljava/lang/Object;,"TV;"
    if-nez v4, :cond_16

    .line 369
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v4

    .line 370
    :cond_16
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 371
    const/4 v5, 0x1

    .line 375
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v4           #v:Ljava/lang/Object;,"TV;"
    :goto_1d
    return v5

    .line 366
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1       #i:I
    .restart local v2       #len:I
    .restart local v3       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v4       #v:Ljava/lang/Object;,"TV;"
    :cond_1e
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_c

    .line 365
    .end local v4           #v:Ljava/lang/Object;,"TV;"
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 375
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_24
    const/4 v5, 0x0

    goto :goto_1d
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_24

    .line 335
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 336
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_8
    if-eqz v0, :cond_24

    .line 337
    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_21

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 338
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 339
    .local v1, v:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_1c

    move-object v2, v1

    .line 346
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :goto_1b
    return-object v2

    .line 341
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1       #v:Ljava/lang/Object;,"TV;"
    :cond_1c
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->readValueUnderLock(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1b

    .line 343
    .end local v1           #v:Ljava/lang/Object;,"TV;"
    :cond_21
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_8

    .line 346
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_24
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .registers 5
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 312
    .local v0, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 14
    .parameter
    .parameter "hash"
    .parameter
    .parameter "onlyIfAbsent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 418
    :try_start_3
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 419
    .local v0, c:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #c:I
    .local v1, c:I
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    if-le v0, v7, :cond_e

    .line 420
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->rehash()V

    .line 421
    :cond_e
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 422
    .local v6, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v7, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    and-int v4, p2, v7

    .line 423
    .local v4, index:I
    aget-object v3, v6, v4

    .line 424
    .local v3, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v2, v3

    .line 425
    .local v2, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_18
    if-eqz v2, :cond_29

    iget v7, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v7, p2, :cond_26

    iget-object v7, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 426
    :cond_26
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_18

    .line 429
    :cond_29
    if-eqz v2, :cond_35

    .line 430
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 431
    .local v5, oldValue:Ljava/lang/Object;,"TV;"
    if-nez p4, :cond_31

    .line 432
    iput-object p3, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_46

    .line 442
    .end local v5           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_31
    :goto_31
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v5

    .line 435
    :cond_35
    const/4 v5, 0x0

    .line 436
    .restart local v5       #oldValue:Ljava/lang/Object;,"TV;"
    :try_start_36
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 437
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-direct {v7, p1, p2, v3, p3}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v7, v6, v4

    .line 438
    iput v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_46

    goto :goto_31

    .line 442
    .end local v1           #c:I
    .end local v2           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v4           #index:I
    .end local v5           #oldValue:Ljava/lang/Object;,"TV;"
    .end local v6           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_46
    move-exception v7

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v7
.end method

.method readValueUnderLock(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 325
    :try_start_3
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    .line 327
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_9
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()V
    .registers 24

    .prologue
    .line 447
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v16, v0

    .line 448
    .local v16, oldTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, v16

    array-length v0, v0

    move v15, v0

    .line 449
    .local v15, oldCapacity:I
    const/high16 v19, 0x4000

    move v0, v15

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    .line 508
    :goto_11
    return-void

    .line 466
    :cond_12
    shl-int/lit8 v19, v15, 0x1

    invoke-static/range {v19 .. v19}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v13

    .line 467
    .local v13, newTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v0, v13

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 468
    move-object v0, v13

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v18, v19, v20

    .line 469
    .local v18, sizeMask:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3d
    if-ge v6, v15, :cond_a2

    .line 472
    aget-object v5, v16, v6

    .line 474
    .local v5, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eqz v5, :cond_50

    .line 475
    iget-object v14, v5, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 476
    .local v14, next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v0, v5

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    and-int v7, v19, v18

    .line 479
    .local v7, idx:I
    if-nez v14, :cond_53

    .line 480
    aput-object v5, v13, v7

    .line 469
    .end local v7           #idx:I
    .end local v14           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 484
    .restart local v7       #idx:I
    .restart local v14       #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_53
    move-object v11, v5

    .line 485
    .local v11, lastRun:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move v10, v7

    .line 486
    .local v10, lastIdx:I
    move-object v9, v14

    .line 487
    .local v9, last:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_56
    if-eqz v9, :cond_66

    .line 489
    move-object v0, v9

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    and-int v8, v19, v18

    .line 490
    .local v8, k:I
    if-eq v8, v10, :cond_63

    .line 491
    move v10, v8

    .line 492
    move-object v11, v9

    .line 488
    :cond_63
    iget-object v9, v9, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_56

    .line 495
    .end local v8           #k:I
    :cond_66
    aput-object v11, v13, v10

    .line 498
    move-object/from16 v17, v5

    .local v17, p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_6a
    move-object/from16 v0, v17

    move-object v1, v11

    if-eq v0, v1, :cond_50

    .line 499
    move-object/from16 v0, v17

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v19, v0

    and-int v8, v19, v18

    .line 500
    .restart local v8       #k:I
    aget-object v12, v13, v8

    .line 501
    .local v12, n:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    new-instance v19, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object v3, v12

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v19, v13, v8

    .line 498
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v17, v0

    goto :goto_6a

    .line 507
    .end local v5           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v7           #idx:I
    .end local v8           #k:I
    .end local v9           #last:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v10           #lastIdx:I
    .end local v11           #lastRun:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v12           #n:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v14           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v17           #p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_a2
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto/16 :goto_11
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 19
    .parameter "key"
    .parameter "hash"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 516
    :try_start_3
    iget v12, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    const/4 v13, 0x1

    sub-int v2, v12, v13

    .line 517
    .local v2, c:I
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 518
    .local v10, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v12, v10

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    and-int v5, p2, v12

    .line 519
    .local v5, index:I
    aget-object v4, v10, v5

    .line 520
    .local v4, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v3, v4

    .line 521
    .local v3, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_12
    if-eqz v3, :cond_29

    iget v12, v3, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move v0, v12

    move/from16 v1, p2

    if-ne v0, v1, :cond_26

    iget-object v12, v3, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_29

    .line 522
    :cond_26
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_12

    .line 524
    :cond_29
    const/4 v8, 0x0

    .line 525
    .local v8, oldValue:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_59

    .line 526
    iget-object v11, v3, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 527
    .local v11, v:Ljava/lang/Object;,"TV;"
    if-eqz p3, :cond_39

    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 528
    :cond_39
    move-object v8, v11

    .line 532
    iget v12, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 533
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 534
    .local v6, newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v9, v4

    .local v9, p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v7, v6

    .end local v6           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .local v7, newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_44
    if-eq v9, v3, :cond_55

    .line 535
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v13, v9, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    iget-object v14, v9, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v6, v12, v13, v7, v14}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    .line 534
    .end local v7           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v6       #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget-object v9, v9, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object v7, v6

    .end local v6           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v7       #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    goto :goto_44

    .line 537
    :cond_55
    aput-object v7, v10, v5

    .line 538
    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_5d

    .line 543
    .end local v7           #newFirst:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v8           #oldValue:Ljava/lang/Object;,"TV;"
    .end local v9           #p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v11           #v:Ljava/lang/Object;,"TV;"
    :cond_59
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v8

    .end local v2           #c:I
    .end local v3           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v4           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v5           #index:I
    .end local v10           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_5d
    move-exception v12

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v12
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 399
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 400
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_7
    if-eqz v0, :cond_18

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_15

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 401
    :cond_15
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_7

    .line 403
    :cond_18
    const/4 v1, 0x0

    .line 404
    .local v1, oldValue:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_1f

    .line 405
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 406
    iput-object p3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    .line 410
    .end local v1           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_1f
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return-object v1

    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_23
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 381
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->getFirst(I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 382
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_7
    if-eqz v0, :cond_18

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_15

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 383
    :cond_15
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_7

    .line 385
    :cond_18
    const/4 v1, 0x0

    .line 386
    .local v1, replaced:Z
    if-eqz v0, :cond_26

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 387
    const/4 v1, 0x1

    .line 388
    iput-object p4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2a

    .line 392
    :cond_26
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    return v1

    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #replaced:Z
    :catchall_2a
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, newTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 304
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 305
    return-void
.end method
