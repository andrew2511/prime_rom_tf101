.class Ljava/util/Collections$SynchronizedList;
.super Ljava/util/Collections$SynchronizedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b9c101c7cbbef84L


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 548
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    .line 549
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 553
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    .line 554
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 687
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    instance-of v0, v0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_10

    .line 688
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 690
    :goto_f
    return-object v0

    :cond_10
    move-object v0, p0

    goto :goto_f
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 669
    monitor-exit v0

    .line 670
    return-void

    .line 669
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 559
    monitor-exit v0

    .line 560
    return-void

    .line 559
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 565
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 570
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 572
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 578
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 583
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 585
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7
    .parameter "object"

    .prologue
    .line 591
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 592
    :try_start_3
    iget-object v4, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 593
    .local v2, size:I
    new-array v0, v2, [Ljava/lang/Object;

    .line 594
    .local v0, array:[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 595
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_20

    .line 596
    if-eqz p1, :cond_26

    .line 597
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v2, :cond_32

    .line 598
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v1

    .line 609
    :goto_1f
    return v3

    .line 595
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_20
    move-exception v4

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v4

    .line 597
    .restart local v0       #array:[Ljava/lang/Object;
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 603
    .end local v1           #i:I
    :cond_26
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_27
    if-ge v1, v2, :cond_32

    .line 604
    aget-object v3, v0, v1

    if-nez v3, :cond_2f

    move v3, v1

    .line 605
    goto :goto_1f

    .line 603
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 609
    :cond_32
    const/4 v3, -0x1

    goto :goto_1f
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 8
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    const/4 v5, 0x1

    .line 615
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 616
    :try_start_4
    iget-object v4, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 617
    .local v2, size:I
    new-array v0, v2, [Ljava/lang/Object;

    .line 618
    .local v0, array:[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 619
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_22

    .line 620
    if-eqz p1, :cond_28

    .line 621
    sub-int v1, v2, v5

    .local v1, i:I
    :goto_16
    if-ltz v1, :cond_35

    .line 622
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v1

    .line 633
    :goto_21
    return v3

    .line 619
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_22
    move-exception v4

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v4

    .line 621
    .restart local v0       #array:[Ljava/lang/Object;
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 627
    .end local v1           #i:I
    :cond_28
    sub-int v1, v2, v5

    .restart local v1       #i:I
    :goto_2a
    if-ltz v1, :cond_35

    .line 628
    aget-object v3, v0, v1

    if-nez v3, :cond_32

    move v3, v1

    .line 629
    goto :goto_21

    .line 627
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 633
    :cond_35
    const/4 v3, -0x1

    goto :goto_21
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 639
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 645
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 649
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 651
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 657
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedList;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 663
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
