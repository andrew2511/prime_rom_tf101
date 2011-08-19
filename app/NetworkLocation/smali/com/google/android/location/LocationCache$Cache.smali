.class public Lcom/google/android/location/LocationCache$Cache;
.super Ljava/util/LinkedHashMap;
.source "LocationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/LocationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap;"
    }
.end annotation


# instance fields
.field private final mCapacity:I

.field private final mDir:Ljava/lang/String;

.field private mDirty:Z

.field private final mFile:Ljava/lang/String;

.field private mLastSaveTime:J

.field private final mMaxAge:J

.field final synthetic this$0:Lcom/google/android/location/LocationCache;


# direct methods
.method public constructor <init>(Lcom/google/android/location/LocationCache;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3
    .parameter
    .parameter "dir"
    .parameter "file"
    .parameter "capacity"
    .parameter "maxAge"

    .prologue
    .line 461
    .local p0, this:Lcom/google/android/location/LocationCache$Cache;,"Lcom/google/android/location/LocationCache$Cache<TT;>;"
    iput-object p1, p0, Lcom/google/android/location/LocationCache$Cache;->this$0:Lcom/google/android/location/LocationCache;

    .line 462
    add-int/lit8 v0, p4, 0x1

    const v1, 0x3f8ccccd

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 458
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/LocationCache$Cache;->mLastSaveTime:J

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/LocationCache$Cache;->mDirty:Z

    .line 463
    iput p4, p0, Lcom/google/android/location/LocationCache$Cache;->mCapacity:I

    .line 464
    iput-object p2, p0, Lcom/google/android/location/LocationCache$Cache;->mDir:Ljava/lang/String;

    .line 465
    iput-object p3, p0, Lcom/google/android/location/LocationCache$Cache;->mFile:Ljava/lang/String;

    .line 466
    iput-wide p5, p0, Lcom/google/android/location/LocationCache$Cache;->mMaxAge:J

    .line 467
    invoke-direct {p0}, Lcom/google/android/location/LocationCache$Cache;->load()V

    .line 468
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/google/android/location/LocationCache$Cache;->lookup(Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/location/LocationCache$Cache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/google/android/location/LocationCache$Cache;->save()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/LocationCache$Cache;->insert(Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V

    return-void
.end method

.method private insert(Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    .locals 3
    .parameter "key"
    .parameter "record"

    .prologue
    .line 496
    .local p0, this:Lcom/google/android/location/LocationCache$Cache;,"Lcom/google/android/location/LocationCache$Cache<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/LocationCache$Cache;->mDirty:Z

    .line 497
    invoke-virtual {p0, p1}, Lcom/google/android/location/LocationCache$Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/LocationCache$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v0, "LocationCache"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "LocationCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/location/LocationCache$Record;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    return-void
.end method

.method private load()V
    .locals 11

    .prologue
    .line 522
    .local p0, this:Lcom/google/android/location/LocationCache$Cache;,"Lcom/google/android/location/LocationCache$Cache<TT;>;"
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/google/android/location/LocationCache$Cache;->mDir:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/location/LocationCache$Cache;->mFile:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .local v2, f:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .local v4, istream:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    const/16 v10, 0x800

    invoke-direct {v9, v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 532
    .local v0, dataInput:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    .line 533
    .local v8, version:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 535
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 551
    .end local v0           #dataInput:Ljava/io/DataInputStream;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #istream:Ljava/io/FileInputStream;
    .end local v8           #version:I
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 526
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 538
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #dataInput:Ljava/io/DataInputStream;
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #istream:Ljava/io/FileInputStream;
    .restart local v8       #version:I
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    .line 540
    .local v7, records:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_1

    .line 541
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 542
    .local v5, key:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/location/LocationCache$Record;->read(Ljava/io/DataInput;)Lcom/google/android/location/LocationCache$Record;

    move-result-object v6

    .line 544
    .local v6, record:Lcom/google/android/location/LocationCache$Record;
    invoke-virtual {p0, v5, v6}, Lcom/google/android/location/LocationCache$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 547
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #record:Lcom/google/android/location/LocationCache$Record;
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 548
    .end local v3           #i:I
    .end local v7           #records:I
    .end local v8           #version:I
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private lookup(Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;
    .locals 7
    .parameter "key"

    .prologue
    .local p0, this:Lcom/google/android/location/LocationCache$Cache;,"Lcom/google/android/location/LocationCache$Cache<TT;>;"
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 471
    invoke-virtual {p0, p1}, Lcom/google/android/location/LocationCache$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/LocationCache$Record;

    .line 473
    .local v0, result:Lcom/google/android/location/LocationCache$Record;
    if-nez v0, :cond_1

    .line 474
    const-string v1, "LocationCache"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const-string v1, "LocationCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v6

    .line 492
    :goto_0
    return-object v1

    .line 481
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/location/LocationCache$Record;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/location/LocationCache$Cache;->mMaxAge:J

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 482
    const-string v1, "LocationCache"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    const-string v1, "LocationCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expired"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v1, v6

    .line 485
    goto :goto_0

    .line 488
    :cond_3
    const-string v1, "LocationCache"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 489
    const-string v1, "LocationCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/location/LocationCache$Record;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v1, v0

    .line 492
    goto :goto_0
.end method

.method private save()V
    .locals 15

    .prologue
    .line 554
    .local p0, this:Lcom/google/android/location/LocationCache$Cache;,"Lcom/google/android/location/LocationCache$Cache<TT;>;"
    iget-boolean v11, p0, Lcom/google/android/location/LocationCache$Cache;->mDirty:Z

    if-nez v11, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 558
    .local v6, now:J
    iget-wide v11, p0, Lcom/google/android/location/LocationCache$Cache;->mLastSaveTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_2

    iget-wide v11, p0, Lcom/google/android/location/LocationCache$Cache;->mLastSaveTime:J

    sub-long v11, v6, v11

    const-wide/32 v13, 0xea60

    cmp-long v11, v11, v13

    if-ltz v11, :cond_0

    .line 565
    :cond_2
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/google/android/location/LocationCache$Cache;->mDir:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v10, systemDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 567
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_3

    .line 568
    const-string v11, "LocationCache"

    const-string v12, "Cache.save(): couldn\'t create directory"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v11, p0, Lcom/google/android/location/LocationCache$Cache;->mDir:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/location/LocationCache$Cache;->mFile:Ljava/lang/String;

    invoke-direct {v3, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .local v3, f:Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 581
    .local v8, ostream:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v11, Ljava/io/BufferedOutputStream;

    const/16 v12, 0x1000

    invoke-direct {v11, v8, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 584
    .local v0, dataOut:Ljava/io/DataOutputStream;
    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 586
    invoke-virtual {p0}, Lcom/google/android/location/LocationCache$Cache;->size()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 588
    invoke-virtual {p0}, Lcom/google/android/location/LocationCache$Cache;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 589
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 590
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 591
    .local v5, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/location/LocationCache$Record;

    .line 592
    .local v9, record:Lcom/google/android/location/LocationCache$Record;
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v9, v0}, Lcom/google/android/location/LocationCache$Record;->write(Ljava/io/DataOutput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 599
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v4           #iter:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #record:Lcom/google/android/location/LocationCache$Record;
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 600
    .local v1, e:Ljava/io/IOException;
    const-string v11, "LocationCache"

    const-string v12, "Cache.save(): unable to write cache"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 576
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #f:Ljava/io/File;
    .end local v8           #ostream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    move-object v1, v11

    .line 577
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v11, "LocationCache"

    const-string v12, "Cache.save(): unable to create cache file"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 596
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #dataOut:Ljava/io/DataOutputStream;
    .restart local v3       #f:Ljava/io/File;
    .restart local v4       #iter:Ljava/util/Iterator;
    .restart local v8       #ostream:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 597
    iput-wide v6, p0, Lcom/google/android/location/LocationCache$Cache;->mLastSaveTime:J

    .line 598
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/location/LocationCache$Cache;->mDirty:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 507
    .local p0, this:Lcom/google/android/location/LocationCache$Cache;,"Lcom/google/android/location/LocationCache$Cache<TT;>;"
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 508
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/location/LocationCache$Cache;->mDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/location/LocationCache$Cache;->mFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 510
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/location/LocationCache$Cache;->mDirty:Z

    .line 511
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter "eldest"

    .prologue
    .line 516
    .local p0, this:Lcom/google/android/location/LocationCache$Cache;,"Lcom/google/android/location/LocationCache$Cache<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/location/LocationCache$Cache;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/location/LocationCache$Cache;->mCapacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
