.class public abstract Ljava/util/AbstractList;
.super Ljava/util/AbstractCollection;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractList$SubAbstractList;,
        Ljava/util/AbstractList$SubAbstractListRandomAccess;,
        Ljava/util/AbstractList$FullListIterator;,
        Ljava/util/AbstractList$SimpleListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected transient modCount:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 383
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 384
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6
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
    .line 456
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 457
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 458
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, location:I
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    move p1, v1

    .end local v1           #location:I
    .restart local p1
    goto :goto_4

    .line 460
    :cond_15
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 473
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractList;->removeRange(II)V

    .line 474
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 489
    if-ne p0, p1, :cond_6

    move v6, v9

    .line 507
    :goto_5
    return v6

    .line 492
    :cond_6
    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_3f

    .line 493
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 494
    .local v5, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v7

    if-eq v6, v7, :cond_1a

    move v6, v8

    .line 495
    goto :goto_5

    .line 498
    :cond_1a
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it1:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 499
    .local v4, it2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 500
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, e1:Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 501
    .local v2, e2:Ljava/lang/Object;
    if-nez v1, :cond_36

    if-eqz v2, :cond_22

    :goto_34
    move v6, v8

    .line 502
    goto :goto_5

    .line 501
    :cond_36
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto :goto_34

    .end local v1           #e1:Ljava/lang/Object;
    .end local v2           #e2:Ljava/lang/Object;
    :cond_3d
    move v6, v9

    .line 505
    goto :goto_5

    .end local v3           #it1:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #it2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_3f
    move v6, v8

    .line 507
    goto :goto_5
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 531
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    const/4 v2, 0x1

    .line 532
    .local v2, result:I
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 533
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 534
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 535
    .local v1, object:Ljava/lang/Object;
    mul-int/lit8 v3, v2, 0x1f

    if-nez v1, :cond_17

    const/4 v4, 0x0

    :goto_14
    add-int v2, v3, v4

    .line 536
    goto :goto_5

    .line 535
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_14

    .line 537
    .end local v1           #object:Ljava/lang/Object;
    :cond_1c
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 550
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 551
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    if-eqz p1, :cond_1b

    .line 552
    :cond_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 553
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 554
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    .line 564
    :goto_1a
    return v1

    .line 558
    :cond_1b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 559
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 560
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    goto :goto_1a

    .line 564
    :cond_2c
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/util/AbstractList$SimpleListIterator;

    invoke-direct {v0, p0}, Ljava/util/AbstractList$SimpleListIterator;-><init>(Ljava/util/AbstractList;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 589
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 590
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    if-eqz p1, :cond_1f

    .line 591
    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 592
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 593
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 603
    :goto_1e
    return v1

    .line 597
    :cond_1f
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 598
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 599
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    goto :goto_1e

    .line 603
    :cond_30
    const/4 v1, -0x1

    goto :goto_1e
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/util/AbstractList$FullListIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractList$FullListIterator;-><init>(Ljava/util/AbstractList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected removeRange(II)V
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 662
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 663
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    move v0, p1

    .local v0, i:I
    :goto_5
    if-ge v0, p2, :cond_10

    .line 664
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 665
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 667
    :cond_10
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
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
    .line 736
    .local p0, this:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    if-ltz p1, :cond_20

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    if-gt p2, v0, :cond_20

    .line 737
    if-gt p1, p2, :cond_1a

    .line 738
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_14

    .line 739
    new-instance v0, Ljava/util/AbstractList$SubAbstractListRandomAccess;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$SubAbstractListRandomAccess;-><init>(Ljava/util/AbstractList;II)V

    .line 741
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/util/AbstractList$SubAbstractList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$SubAbstractList;-><init>(Ljava/util/AbstractList;II)V

    goto :goto_13

    .line 743
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 745
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
