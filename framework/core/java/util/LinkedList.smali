.class public Ljava/util/LinkedList;
.super Ljava/util/AbstractSequentialList;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/Deque;
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedList$ReverseLinkIterator;,
        Ljava/util/LinkedList$LinkIterator;,
        Ljava/util/LinkedList$Link;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field transient size:I

.field transient voidLink:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    .line 246
    new-instance v0, Ljava/util/LinkedList$Link;

    invoke-direct {v0, v1, v1, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 247
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 248
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 262
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 263
    return-void
.end method

.method private addFirstImpl(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 419
    .local v1, oldFirst:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 420
    .local v0, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 421
    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 422
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 423
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 424
    const/4 v2, 0x1

    return v2
.end method

.method private addLastImpl(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 316
    .local v1, oldLast:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 317
    .local v0, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 318
    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 319
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 320
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 321
    const/4 v2, 0x1

    return v2
.end method

.method private getFirstImpl()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 536
    .local v0, first:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_b

    .line 537
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    .line 539
    :cond_b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method private peekFirstImpl()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 909
    .local v0, first:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    goto :goto_9
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v4, 0x0

    .line 980
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 981
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, p0, Ljava/util/LinkedList;->size:I

    .line 982
    new-instance v3, Ljava/util/LinkedList$Link;

    invoke-direct {v3, v4, v4, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 983
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 984
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .local v0, i:I
    :goto_15
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_26

    .line 985
    new-instance v2, Ljava/util/LinkedList$Link;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 986
    .local v2, nextLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 987
    move-object v1, v2

    .line 988
    goto :goto_15

    .line 989
    .end local v2           #nextLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_26
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 990
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v3, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 991
    return-void
.end method

.method private removeFirstImpl()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 682
    .local v0, first:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_21

    .line 683
    iget-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 684
    .local v1, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 685
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 686
    iget v2, p0, Ljava/util/LinkedList;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 687
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 688
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    .line 690
    .end local v1           #next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_21
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method private removeFirstOccurrenceImpl(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 830
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$LinkIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedList$LinkIterator;-><init>(Ljava/util/LinkedList;I)V

    .line 831
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    invoke-direct {p0, p1, v0}, Ljava/util/LinkedList;->removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z

    move-result v1

    return v1
.end method

.method private removeLastImpl()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 705
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 706
    .local v0, last:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_21

    .line 707
    iget-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 708
    .local v1, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 709
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 710
    iget v2, p0, Ljava/util/LinkedList;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 711
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 712
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    .line 714
    .end local v1           #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_21
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method private removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z
    .registers 5
    .parameter "o"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 835
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 836
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 837
    .local v0, element:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_13

    if-nez v0, :cond_0

    .line 838
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 839
    const/4 v1, 0x1

    .line 842
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    :goto_12
    return v1

    .line 837
    .restart local v0       #element:Ljava/lang/Object;,"TE;"
    :cond_13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_e

    .line 842
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    :cond_1a
    const/4 v1, 0x0

    goto :goto_12
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
    .line 969
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 970
    iget v1, p0, Ljava/util/LinkedList;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 971
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 972
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 973
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_c

    .line 975
    :cond_1a
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 8
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    if-ltz p1, :cond_37

    iget v4, p0, Ljava/util/LinkedList;->size:I

    if-gt p1, v4, :cond_37

    .line 281
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 282
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_16

    .line 283
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-gt v0, p1, :cond_1f

    .line 284
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 287
    .end local v0           #i:I
    :cond_16
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0       #i:I
    :goto_18
    if-le v0, p1, :cond_1f

    .line 288
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 287
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 291
    :cond_1f
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 292
    .local v3, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    new-instance v2, Ljava/util/LinkedList$Link;

    invoke-direct {v2, p2, v3, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 293
    .local v2, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 294
    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 295
    iget v4, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->size:I

    .line 296
    iget v4, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->modCount:I

    .line 300
    return-void

    .line 298
    .end local v0           #i:I
    .end local v1           #link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v2           #newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v3           #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_37
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
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
    .line 311
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 12
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
    .line 344
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    if-ltz p1, :cond_6

    iget v8, p0, Ljava/util/LinkedList;->size:I

    if-le p1, v8, :cond_c

    .line 345
    :cond_6
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    .line 347
    :cond_c
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 348
    .local v0, adding:I
    if-nez v0, :cond_14

    .line 349
    const/4 v8, 0x0

    .line 374
    :goto_13
    return v8

    .line 351
    :cond_14
    if-ne p2, p0, :cond_2c

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v8

    .line 354
    .local v2, elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :goto_1c
    iget-object v7, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 355
    .local v7, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v8, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v8, v8, 0x2

    if-ge p1, v8, :cond_2e

    .line 356
    const/4 v3, 0x0

    .local v3, i:I
    :goto_25
    if-ge v3, p1, :cond_37

    .line 357
    iget-object v7, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v2           #elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    .end local v3           #i:I
    .end local v7           #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_2c
    move-object v2, p2

    .line 351
    goto :goto_1c

    .line 360
    .restart local v2       #elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    .restart local v7       #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_2e
    iget v3, p0, Ljava/util/LinkedList;->size:I

    .restart local v3       #i:I
    :goto_30
    if-lt v3, p1, :cond_37

    .line 361
    iget-object v7, v7, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 360
    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    .line 364
    :cond_37
    iget-object v6, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 365
    .local v6, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 366
    .local v1, e:Ljava/lang/Object;,"TE;"
    new-instance v5, Ljava/util/LinkedList$Link;

    const/4 v8, 0x0

    invoke-direct {v5, v1, v7, v8}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 367
    .local v5, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v5, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 368
    move-object v7, v5

    .line 369
    goto :goto_3d

    .line 370
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v5           #newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_51
    iput-object v6, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 371
    iput-object v7, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 372
    iget v8, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v8, v0

    iput v8, p0, Ljava/util/LinkedList;->size:I

    .line 373
    iget v8, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/util/LinkedList;->modCount:I

    .line 374
    const/4 v8, 0x1

    goto :goto_13
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 388
    .local v0, adding:I
    if-nez v0, :cond_8

    .line 389
    const/4 v6, 0x0

    .line 404
    :goto_7
    return v6

    .line 391
    :cond_8
    if-ne p1, p0, :cond_2c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v6

    .line 394
    .local v2, elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :goto_10
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v5, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 395
    .local v5, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 396
    .local v1, e:Ljava/lang/Object;,"TE;"
    new-instance v4, Ljava/util/LinkedList$Link;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 397
    .local v4, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v4, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 398
    move-object v5, v4

    .line 399
    goto :goto_18

    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v2           #elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v5           #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_2c
    move-object v2, p1

    .line 391
    goto :goto_10

    .line 400
    .restart local v2       #elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_2e
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v6, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 401
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v5, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 402
    iget v6, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v6, v0

    iput v6, p0, Ljava/util/LinkedList;->size:I

    .line 403
    iget v6, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/LinkedList;->modCount:I

    .line 404
    const/4 v6, 0x1

    goto :goto_7
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 445
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-lez v0, :cond_19

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    .line 447
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 448
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 449
    iget v0, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList;->modCount:I

    .line 451
    :cond_19
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 464
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 465
    .local v1, l:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/LinkedList;->size:I

    .line 466
    new-instance v2, Ljava/util/LinkedList$Link;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 467
    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 468
    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 469
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_22
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_22} :catch_23

    .line 470
    return-object v1

    .line 471
    .end local v1           #l:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 472
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x1

    .line 486
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 487
    .local v0, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_1a

    .line 488
    :goto_7
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_24

    .line 489
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    .line 502
    :goto_14
    return v1

    .line 492
    :cond_15
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    goto :goto_7

    .line 499
    :cond_18
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 495
    :cond_1a
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_24

    .line 496
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v1, :cond_18

    move v1, v2

    .line 497
    goto :goto_14

    .line 502
    :cond_24
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$ReverseLinkIterator;

    invoke-direct {v0, p0, p0}, Ljava/util/LinkedList$ReverseLinkIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 913
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->getFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_22

    iget v2, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v2, :cond_22

    .line 508
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 509
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v2, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_16

    .line 510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-gt v0, p1, :cond_1f

    .line 511
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 514
    .end local v0           #i:I
    :cond_16
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0       #i:I
    :goto_18
    if-le v0, p1, :cond_1f

    .line 515
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 514
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 518
    :cond_1f
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    .line 520
    .end local v0           #i:I
    .end local v1           #link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_22
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->getFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 551
    .local v0, last:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_b

    .line 552
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    .line 554
    :cond_b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "object"

    .prologue
    .line 559
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    .line 560
    .local v1, pos:I
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 561
    .local v0, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_1e

    .line 562
    :goto_7
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_28

    .line 563
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v1

    .line 578
    :goto_14
    return v2

    .line 566
    :cond_15
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 574
    :cond_1a
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 575
    add-int/lit8 v1, v1, 0x1

    .line 570
    :cond_1e
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_28

    .line 571
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1a

    move v2, v1

    .line 572
    goto :goto_14

    .line 578
    :cond_28
    const/4 v2, -0x1

    goto :goto_14
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "object"

    .prologue
    .line 592
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v1, p0, Ljava/util/LinkedList;->size:I

    .line 593
    .local v1, pos:I
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 594
    .local v0, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_1d

    .line 595
    :goto_8
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_29

    .line 596
    add-int/lit8 v1, v1, -0x1

    .line 597
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v1

    .line 611
    :goto_17
    return v2

    .line 600
    :cond_18
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    goto :goto_8

    .line 608
    :cond_1b
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 603
    :cond_1d
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_29

    .line 604
    add-int/lit8 v1, v1, -0x1

    .line 605
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1b

    move v2, v1

    .line 606
    goto :goto_17

    .line 611
    :cond_29
    const/4 v2, -0x1

    goto :goto_17
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
    .line 628
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$LinkIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/LinkedList$LinkIterator;-><init>(Ljava/util/LinkedList;I)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 892
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 744
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->peekFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->peekFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 764
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 765
    .local v0, last:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    goto :goto_9
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 896
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-direct {p0}, Ljava/util/LinkedList;->removeLastImpl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    .line 806
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 900
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 8
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_36

    iget v4, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v4, :cond_36

    .line 643
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 644
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_16

    .line 645
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-gt v0, p1, :cond_1f

    .line 646
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 649
    .end local v0           #i:I
    :cond_16
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0       #i:I
    :goto_18
    if-le v0, p1, :cond_1f

    .line 650
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 649
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 653
    :cond_1f
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 654
    .local v3, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 655
    .local v2, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 656
    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 657
    iget v4, p0, Ljava/util/LinkedList;->size:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/util/LinkedList;->size:I

    .line 658
    iget v4, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->modCount:I

    .line 659
    iget-object v4, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v4

    .line 661
    .end local v0           #i:I
    .end local v1           #link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v2           #next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v3           #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_36
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 666
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 815
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeLastImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 825
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$ReverseLinkIterator;

    invoke-direct {v0, p0, p0}, Ljava/util/LinkedList$ReverseLinkIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 826
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    invoke-direct {p0, p1, v0}, Ljava/util/LinkedList;->removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z

    move-result v1

    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 863
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    if-ltz p1, :cond_24

    iget v3, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v3, :cond_24

    .line 864
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 865
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v3, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v3, v3, 0x2

    if-ge p1, v3, :cond_16

    .line 866
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-gt v0, p1, :cond_1f

    .line 867
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 870
    .end local v0           #i:I
    :cond_16
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0       #i:I
    :goto_18
    if-le v0, p1, :cond_1f

    .line 871
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 870
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 874
    :cond_1f
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    .line 875
    .local v2, result:Ljava/lang/Object;,"TE;"
    iput-object p2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    .line 876
    return-object v2

    .line 878
    .end local v0           #i:I
    .end local v1           #link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v2           #result:Ljava/lang/Object;,"TE;"
    :cond_24
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public size()I
    .registers 2

    .prologue
    .line 888
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    .prologue
    .line 924
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    .line 925
    .local v1, index:I
    iget v4, p0, Ljava/util/LinkedList;->size:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 926
    .local v0, contents:[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 927
    .local v3, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :goto_9
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v3, v4, :cond_17

    .line 928
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    iget-object v4, v3, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    aput-object v4, v0, v1

    .line 929
    iget-object v3, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_9

    .line 931
    :cond_17
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 953
    .local v2, index:I
    iget v5, p0, Ljava/util/LinkedList;->size:I

    array-length v6, p1

    if-le v5, v6, :cond_1a

    .line 954
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 955
    .local v1, ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget v5, p0, Ljava/util/LinkedList;->size:I

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 957
    .end local v1           #ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1a
    iget-object v5, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v4, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 958
    .local v4, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :goto_1e
    iget-object v5, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v4, v5, :cond_2c

    .line 959
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iget-object v5, v4, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 960
    iget-object v4, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1e

    .line 962
    :cond_2c
    array-length v5, p1

    if-ge v2, v5, :cond_32

    .line 963
    const/4 v5, 0x0

    aput-object v5, p1, v2

    .line 965
    :cond_32
    return-object p1
.end method
