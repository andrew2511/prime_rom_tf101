.class Lcom/google/common/collect/Synchronized$SynchronizedMultiset;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, delegate:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 512
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 519
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected delegate()Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object p0

    .end local p0           #this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    check-cast p0, Lcom/google/common/collect/Multiset;

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 505
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 505
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 554
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 567
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    if-ne p1, p0, :cond_0

    .line 568
    const/4 v0, 0x1

    .line 571
    :goto_0
    return v0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 576
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 2
    .parameter "o"
    .parameter "n"

    .prologue
    .line 531
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 539
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 2
    .parameter
    .parameter "oldCount"
    .parameter "newCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, this:Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,"Lcom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
