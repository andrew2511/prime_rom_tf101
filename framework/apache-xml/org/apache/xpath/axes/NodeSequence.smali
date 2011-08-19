.class public Lorg/apache/xpath/axes/NodeSequence;
.super Lorg/apache/xpath/objects/XObject;
.source "NodeSequence.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/PathComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x35a7b8becbfe0b34L


# instance fields
.field private m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

.field protected m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

.field protected m_iter:Lorg/apache/xml/dtm/DTMIterator;

.field protected m_last:I

.field protected m_next:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 5
    .parameter "nodeVector"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 180
    instance-of v1, p1, Lorg/apache/xml/utils/NodeVector;

    if-eqz v1, :cond_14

    .line 181
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/utils/NodeVector;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    .line 183
    :cond_14
    if-eqz p1, :cond_30

    .line 185
    instance-of v1, p1, Lorg/apache/xml/utils/NodeVector;

    const-string v2, "Must have a NodeVector as the object for NodeSequence!"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    .line 187
    instance-of v1, p1, Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_30

    .line 189
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 190
    check-cast p1, Lorg/apache/xml/dtm/DTMIterator;

    .end local p1
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 194
    :cond_30
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/dtm/DTMIterator;ILorg/apache/xpath/XPathContext;Z)V
    .registers 6
    .parameter "iter"
    .parameter "context"
    .parameter "xctxt"
    .parameter "shouldCacheNodes"

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 168
    invoke-virtual {p0, p2, p3}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    .line 169
    invoke-virtual {p0, p4}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 170
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 4
    .parameter "dtmMgr"

    .prologue
    const/4 v1, 0x0

    .line 202
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 50
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 203
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 204
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 205
    return-void
.end method

.method private cacheComplete()Z
    .registers 3

    .prologue
    .line 106
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_b

    .line 107
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$100(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    move-result v0

    .line 111
    .local v0, complete:Z
    :goto_a
    return v0

    .line 109
    .end local v0           #complete:Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #complete:Z
    goto :goto_a
.end method

.method private getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    return-object v0
.end method

.method private markCacheComplete()V
    .registers 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    .line 120
    .local v0, nv:Lorg/apache/xml/utils/NodeVector;
    if-eqz v0, :cond_c

    .line 121
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    const/4 v2, 0x1

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V
    invoke-static {v1, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$200(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    .line 123
    :cond_c
    return-void
.end method


# virtual methods
.method protected SetVector(Lorg/apache/xml/utils/NodeVector;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method protected addNodeInDocOrder(I)I
    .registers 10
    .parameter "node"

    .prologue
    .line 723
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v6

    const-string v7, "addNodeInDocOrder must be done on a mutable sequence!"

    invoke-virtual {p0, v6, v7}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    .line 725
    const/4 v3, -0x1

    .line 727
    .local v3, insertIndex:I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v5

    .line 732
    .local v5, vec:Lorg/apache/xml/utils/NodeVector;
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v4

    .line 734
    .local v4, size:I
    const/4 v6, 0x1

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_15
    if-ltz v2, :cond_1e

    .line 736
    invoke-virtual {v5, v2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

    .line 738
    .local v0, child:I
    if-ne v0, p1, :cond_27

    .line 740
    const/4 v2, -0x2

    .line 752
    .end local v0           #child:I
    :cond_1e
    const/4 v6, -0x2

    if-eq v2, v6, :cond_26

    .line 754
    add-int/lit8 v3, v2, 0x1

    .line 756
    invoke-virtual {v5, p1, v3}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    .line 760
    :cond_26
    return v3

    .line 745
    .restart local v0       #child:I
    :cond_27
    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v6, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 746
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, p1, v0}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 734
    add-int/lit8 v2, v2, -0x1

    goto :goto_15
.end method

.method public allowDetachToRelease(Z)V
    .registers 3
    .parameter "allowRelease"

    .prologue
    .line 409
    if-nez p1, :cond_c

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_c

    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 414
    :cond_c
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_15

    .line 415
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->allowDetachToRelease(Z)V

    .line 416
    :cond_15
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 417
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    .line 655
    .local v0, clone:Lorg/apache/xpath/axes/NodeSequence;
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;

    iput-object v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    .line 656
    :cond_14
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_1d

    .line 662
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    .line 665
    :cond_1d
    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence;

    .line 630
    .local v0, seq:Lorg/apache/xpath/axes/NodeSequence;
    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 631
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_12

    .line 637
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    .line 640
    :cond_12
    return-object v0
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 399
    :cond_9
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 400
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 3
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 710
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/objects/XObject;->fixupVariables(Ljava/util/Vector;I)V

    .line 711
    return-void
.end method

.method public getAnalysisBits()I
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_13

    .line 700
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    .end local p0
    check-cast p0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {p0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result v0

    .line 702
    :goto_12
    return v0

    .restart local p0
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getAxis()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_c

    .line 686
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getAxis()I

    move-result v0

    .line 690
    :goto_b
    return v0

    .line 689
    :cond_c
    const-string v0, "Can not getAxis from a non-iterated node sequence!"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    move v0, v1

    .line 690
    goto :goto_b
.end method

.method public final getContainedIter()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-object v0
.end method

.method public getCurrentNode()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 424
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 426
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 427
    .local v0, currentIndex:I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    .line 428
    .local v1, vec:Lorg/apache/xml/utils/NodeVector;
    if-ltz v0, :cond_1d

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 429
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v2

    .line 439
    .end local v0           #currentIndex:I
    .end local v1           #vec:Lorg/apache/xml/utils/NodeVector;
    :goto_1c
    return v2

    .restart local v0       #currentIndex:I
    .restart local v1       #vec:Lorg/apache/xml/utils/NodeVector;
    :cond_1d
    move v2, v4

    .line 431
    goto :goto_1c

    .line 434
    .end local v0           #currentIndex:I
    .end local v1           #vec:Lorg/apache/xml/utils/NodeVector;
    :cond_1f
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v2, :cond_2a

    .line 436
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v2

    goto :goto_1c

    :cond_2a
    move v2, v4

    .line 439
    goto :goto_1c
.end method

.method public getCurrentPos()I
    .registers 2

    .prologue
    .line 481
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    .line 223
    .local v0, mgr:Lorg/apache/xml/dtm/DTMManager;
    if-eqz v0, :cond_f

    .line 224
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 228
    :goto_e
    return-object v1

    .line 227
    :cond_f
    const/4 v1, 0x0

    const-string v2, "Can not get a DTM Unless a DTMManager has been set!"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    .line 228
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_b

    .line 302
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getExpandEntityReferences()Z

    move-result v0

    .line 304
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method protected getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .registers 2

    .prologue
    .line 950
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    return-object v0
.end method

.method public getLength()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 589
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->getCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-result-object v0

    .line 591
    .local v0, cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    if-eqz v0, :cond_31

    .line 594
    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$100(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 597
    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;
    invoke-static {v0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    .line 598
    .local v1, nv:Lorg/apache/xml/utils/NodeVector;
    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    .line 619
    .end local v1           #nv:Lorg/apache/xml/utils/NodeVector;
    :goto_15
    return v3

    .line 604
    :cond_16
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    instance-of v3, v3, Lorg/apache/xpath/NodeSetDTM;

    if-eqz v3, :cond_23

    .line 606
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v3

    goto :goto_15

    .line 609
    :cond_23
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v4, v3, :cond_2e

    .line 611
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 612
    .local v2, pos:I
    invoke-virtual {p0, v4}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    .line 613
    iput v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 615
    .end local v2           #pos:I
    :cond_2e
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_15

    .line 619
    :cond_31
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v4, v3, :cond_3e

    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v3

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_15

    :cond_3e
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_15
.end method

.method public getRoot()I
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_b

    .line 246
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result v0

    .line 252
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method protected getVector()Lorg/apache/xml/utils/NodeVector;
    .registers 3

    .prologue
    .line 66
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    move-object v0, v1

    .line 67
    .local v0, nv:Lorg/apache/xml/utils/NodeVector;
    :goto_b
    return-object v0

    .line 66
    .end local v0           #nv:Lorg/apache/xml/utils/NodeVector;
    :cond_c
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_b
.end method

.method public getWhatToShow()I
    .registers 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, -0x11

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getWhatToShow()I

    move-result v0

    goto :goto_8
.end method

.method public hasCache()Z
    .registers 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    .line 96
    .local v0, nv:Lorg/apache/xml/utils/NodeVector;
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public isDocOrdered()Z
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_b

    .line 675
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v0

    .line 677
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isFresh()Z
    .registers 2

    .prologue
    .line 447
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMutable()Z
    .registers 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    return v0
.end method

.method public item(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setCurrentPos(I)V

    .line 530
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    .line 531
    .local v0, n:I
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 532
    return v0
.end method

.method public nextNode()I
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 314
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    .line 315
    .local v2, vec:Lorg/apache/xml/utils/NodeVector;
    if-eqz v2, :cond_33

    .line 318
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {v2}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 321
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v1

    .line 322
    .local v1, next:I
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    move v3, v1

    .line 366
    .end local v1           #next:I
    :goto_1c
    return v3

    .line 325
    :cond_1d
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->cacheComplete()Z

    move-result v3

    if-nez v3, :cond_2b

    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    if-ne v5, v3, :cond_2b

    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-nez v3, :cond_33

    .line 327
    :cond_2b
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    move v3, v5

    .line 328
    goto :goto_1c

    .line 332
    :cond_33
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-nez v3, :cond_39

    move v3, v5

    .line 333
    goto :goto_1c

    .line 335
    :cond_39
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    .line 336
    .restart local v1       #next:I
    if-eq v5, v1, :cond_72

    .line 338
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 340
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 342
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 343
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    :cond_5c
    :goto_5c
    move v3, v1

    .line 366
    goto :goto_1c

    .line 347
    :cond_5e
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->addNodeInDocOrder(I)I

    move-result v0

    .line 348
    .local v0, insertIndex:I
    if-ltz v0, :cond_5c

    .line 349
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_5c

    .line 353
    .end local v0           #insertIndex:I
    :cond_6b
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_5c

    .line 360
    :cond_72
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;->markCacheComplete()V

    .line 362
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 363
    iget v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_5c
.end method

.method public previousNode()I
    .registers 4

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 376
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-gtz v1, :cond_c

    .line 377
    const/4 v1, -0x1

    .line 388
    :goto_b
    return v1

    .line 380
    :cond_c
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 381
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    move-result v1

    goto :goto_b

    .line 386
    :cond_19
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->previousNode()I

    move-result v0

    .line 387
    .local v0, n:I
    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 388
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_b
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 285
    return-void
.end method

.method public runTo(I)V
    .registers 7
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 491
    if-ne v4, p1, :cond_e

    .line 493
    iget v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 494
    .local v1, pos:I
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    .local v0, n:I
    if-ne v4, v0, :cond_5

    .line 495
    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 514
    .end local v0           #n:I
    .end local v1           #pos:I
    :cond_d
    :goto_d
    return-void

    .line 497
    :cond_e
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-eq v2, p1, :cond_d

    .line 501
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 503
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    goto :goto_d

    .line 505
    :cond_27
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    if-nez v2, :cond_3c

    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-ge p1, v2, :cond_3c

    .line 507
    :goto_31
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-lt v2, p1, :cond_d

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->previousNode()I

    move-result v0

    .restart local v0       #n:I
    if-eq v4, v0, :cond_d

    goto :goto_31

    .line 511
    .end local v0           #n:I
    :cond_3c
    :goto_3c
    iget v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    if-ge v2, p1, :cond_d

    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    .restart local v0       #n:I
    if-eq v4, v0, :cond_d

    goto :goto_3c
.end method

.method public setCurrentPos(I)V
    .registers 2
    .parameter "i"

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    .line 522
    return-void
.end method

.method public setItem(II)V
    .registers 11
    .parameter "node"
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    .line 540
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v5

    .line 541
    .local v5, vec:Lorg/apache/xml/utils/NodeVector;
    if-eqz v5, :cond_45

    .line 543
    invoke-virtual {v5, p2}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v3

    .line 544
    .local v3, oldNode:I
    if-eq v3, p1, :cond_2c

    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->useCount()I
    invoke-static {v6}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$300(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)I

    move-result v6

    if-le v6, v7, :cond_2c

    .line 552
    new-instance v1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    invoke-direct {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    .line 555
    .local v1, newCache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    :try_start_1a
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/NodeVector;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1a .. :try_end_20} :catch_36

    .line 562
    .local v2, nv:Lorg/apache/xml/utils/NodeVector;
    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V
    invoke-static {v1, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    .line 563
    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V
    invoke-static {v1, v7}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$200(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V

    .line 564
    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 565
    move-object v5, v2

    .line 568
    invoke-super {p0, v2}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    .line 577
    .end local v1           #newCache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .end local v2           #nv:Lorg/apache/xml/utils/NodeVector;
    :cond_2c
    invoke-virtual {v5, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    .line 578
    invoke-virtual {v5}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v6

    iput v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 582
    .end local v3           #oldNode:I
    :goto_35
    return-void

    .line 556
    .restart local v1       #newCache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .restart local v3       #oldNode:I
    :catch_36
    move-exception v6

    move-object v0, v6

    .line 558
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 559
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 560
    .local v4, rte:Ljava/lang/RuntimeException;
    throw v4

    .line 581
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    .end local v1           #newCache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    .end local v3           #oldNode:I
    .end local v4           #rte:Ljava/lang/RuntimeException;
    :cond_45
    iget-object v6, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v6, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    goto :goto_35
.end method

.method public final setIter(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 2
    .parameter "iter"

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    .line 138
    return-void
.end method

.method protected setObject(Ljava/lang/Object;)V
    .registers 6
    .parameter "obj"

    .prologue
    .line 778
    instance-of v3, p1, Lorg/apache/xml/utils/NodeVector;

    if-eqz v3, :cond_24

    .line 781
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    .line 784
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/utils/NodeVector;

    move-object v2, v0

    .line 785
    .local v2, v:Lorg/apache/xml/utils/NodeVector;
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v3, :cond_15

    .line 786
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V
    invoke-static {v3, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    .line 802
    .end local v2           #v:Lorg/apache/xml/utils/NodeVector;
    :cond_14
    :goto_14
    return-void

    .line 787
    .restart local v2       #v:Lorg/apache/xml/utils/NodeVector;
    :cond_15
    if-eqz v2, :cond_14

    .line 788
    new-instance v3, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    invoke-direct {v3}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;-><init>()V

    iput-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 789
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V
    invoke-static {v3, v2}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V

    goto :goto_14

    .line 791
    .end local v2           #v:Lorg/apache/xml/utils/NodeVector;
    :cond_24
    instance-of v3, p1, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    if-eqz v3, :cond_3b

    .line 792
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-object v1, v0

    .line 793
    .local v1, cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    .line 794
    iget-object v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V
    invoke-static {v3}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V

    .line 797
    #calls: Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;
    invoke-static {v1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;

    move-result-object v3

    invoke-super {p0, v3}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    goto :goto_14

    .line 799
    .end local v1           #cache:Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
    :cond_3b
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public setRoot(ILjava/lang/Object;)V
    .registers 7
    .parameter "nodeHandle"
    .parameter "environment"

    .prologue
    const/4 v3, 0x0

    .line 261
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v2, :cond_2d

    .line 263
    move-object v0, p2

    check-cast v0, Lorg/apache/xpath/XPathContext;

    move-object v1, v0

    .line 264
    .local v1, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 265
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v2, p1, p2}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 266
    iget-object v2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->isDocOrdered()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 268
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v2

    if-nez v2, :cond_26

    .line 269
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 270
    :cond_26
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/axes/NodeSequence;->runTo(I)V

    .line 271
    iput v3, p0, Lorg/apache/xpath/axes/NodeSequence;->m_next:I

    .line 276
    .end local v1           #xctxt:Lorg/apache/xpath/XPathContext;
    :cond_2c
    :goto_2c
    return-void

    .line 275
    :cond_2d
    const-string v2, "Can not setRoot on a non-iterated NodeSequence!"

    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/axes/NodeSequence;->assertion(ZLjava/lang/String;)V

    goto :goto_2c
.end method

.method public setShouldCacheNodes(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 455
    if-eqz p1, :cond_11

    .line 457
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_10

    .line 459
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    .line 466
    :cond_10
    :goto_10
    return-void

    .line 465
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    goto :goto_10
.end method
