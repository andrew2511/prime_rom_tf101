.class public Lorg/apache/xpath/NodeSet;
.super Ljava/lang/Object;
.source "NodeSet.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/traversal/NodeIterator;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/ContextNodeList;


# instance fields
.field private m_blocksize:I

.field protected transient m_cacheNodes:Z

.field protected m_firstFree:I

.field private transient m_last:I

.field m_map:[Lorg/w3c/dom/Node;

.field private m_mapSize:I

.field protected transient m_mutable:Z

.field protected transient m_next:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 770
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    .line 774
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    .line 810
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    .line 832
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 68
    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    .line 69
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "blocksize"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 770
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    .line 774
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    .line 810
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    .line 832
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 79
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    .line 80
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/NodeSet;)V
    .registers 3
    .parameter "nodelist"

    .prologue
    .line 106
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 108
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 133
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 135
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .registers 3
    .parameter "nodelist"

    .prologue
    .line 92
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/NodeList;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;)V
    .registers 3
    .parameter "ni"

    .prologue
    .line 120
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    .line 123
    return-void
.end method

.method private addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z
    .registers 17
    .parameter "start"
    .parameter "end"
    .parameter "testIndex"
    .parameter "nodelist"
    .parameter "support"

    .prologue
    .line 575
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_11

    .line 576
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_11
    const/4 v9, 0x0

    .line 580
    .local v9, foundit:Z
    invoke-interface {p4, p3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 582
    .local v10, node:Lorg/w3c/dom/Node;
    move v2, p2

    .local v2, i:I
    :goto_17
    if-lt v2, p1, :cond_20

    .line 584
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 586
    .local v7, child:Lorg/w3c/dom/Node;
    if-ne v7, v10, :cond_28

    .line 588
    const/4 v2, -0x2

    .line 614
    .end local v7           #child:Lorg/w3c/dom/Node;
    :cond_20
    :goto_20
    const/4 v0, -0x1

    if-ne v2, v0, :cond_27

    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    .line 619
    :cond_27
    return v9

    .line 593
    .restart local v7       #child:Lorg/w3c/dom/Node;
    :cond_28
    invoke-static {v10, v7}, Lorg/apache/xml/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 595
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v10, v0}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    .line 597
    add-int/lit8 p3, p3, -0x1

    .line 599
    if-lez p3, :cond_20

    .line 601
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z

    move-result v8

    .line 604
    .local v8, foundPrev:Z
    if-nez v8, :cond_20

    .line 606
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int v3, v0, v1

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z

    goto :goto_20

    .line 582
    .end local v8           #foundPrev:Z
    :cond_53
    add-int/lit8 v2, v2, -0x1

    goto :goto_17
.end method


# virtual methods
.method public addElement(Lorg/w3c/dom/Node;)V
    .registers 6
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 877
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v1, :cond_12

    .line 878
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESET_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 880
    :cond_12
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_28

    .line 882
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_35

    .line 884
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 885
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 899
    :cond_28
    :goto_28
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object p1, v1, v2

    .line 901
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 902
    return-void

    .line 889
    :cond_35
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 891
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v0, v1, [Lorg/w3c/dom/Node;

    .line 893
    .local v0, newMap:[Lorg/w3c/dom/Node;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_28
.end method

.method public addNode(Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter "n"

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_11

    .line 383
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    .line 386
    return-void
.end method

.method public addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I
    .registers 6
    .parameter "node"
    .parameter "support"

    .prologue
    .line 709
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_11

    .line 710
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;ZLorg/apache/xpath/XPathContext;)I

    move-result v0

    return v0
.end method

.method public addNodeInDocOrder(Lorg/w3c/dom/Node;ZLorg/apache/xpath/XPathContext;)I
    .registers 12
    .parameter "node"
    .parameter "test"
    .parameter "support"

    .prologue
    .line 635
    iget-boolean v5, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v5, :cond_11

    .line 636
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "ER_NODESET_NOT_MUTABLE"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 638
    :cond_11
    const/4 v3, -0x1

    .line 640
    .local v3, insertIndex:I
    if-eqz p2, :cond_36

    .line 646
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v4

    .line 648
    .local v4, size:I
    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, i:I
    :goto_1b
    if-ltz v2, :cond_24

    .line 650
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 652
    .local v0, child:Lorg/w3c/dom/Node;
    if-ne v0, p1, :cond_2d

    .line 654
    const/4 v2, -0x2

    .line 665
    .end local v0           #child:Lorg/w3c/dom/Node;
    :cond_24
    const/4 v5, -0x2

    if-eq v2, v5, :cond_2c

    .line 667
    add-int/lit8 v3, v2, 0x1

    .line 669
    invoke-virtual {p0, p1, v3}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    .line 693
    .end local v4           #size:I
    :cond_2c
    :goto_2c
    return v3

    .line 659
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v4       #size:I
    :cond_2d
    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 648
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 674
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_36
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v3

    .line 676
    const/4 v1, 0x0

    .line 678
    .local v1, foundit:Z
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3c
    if-ge v2, v3, :cond_49

    .line 680
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 682
    const/4 v1, 0x1

    .line 688
    :cond_49
    if-nez v1, :cond_2c

    .line 689
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    goto :goto_2c

    .line 678
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c
.end method

.method public addNodes(Lorg/apache/xpath/NodeSet;)V
    .registers 5
    .parameter "ns"

    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_11

    .line 475
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    .line 478
    return-void
.end method

.method public addNodes(Lorg/w3c/dom/NodeList;)V
    .registers 8
    .parameter "nodelist"

    .prologue
    .line 434
    iget-boolean v3, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v3, :cond_11

    .line 435
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_NODESET_NOT_MUTABLE"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 437
    :cond_11
    if-eqz p1, :cond_26

    .line 439
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 441
    .local v1, nChildren:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v1, :cond_26

    .line 443
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 445
    .local v2, obj:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_23

    .line 447
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    .line 441
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 453
    .end local v0           #i:I
    .end local v1           #nChildren:I
    .end local v2           #obj:Lorg/w3c/dom/Node;
    :cond_26
    return-void
.end method

.method public addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V
    .registers 6
    .parameter "iterator"

    .prologue
    .line 491
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v1, :cond_11

    .line 492
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESET_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_11
    if-eqz p1, :cond_1d

    .line 498
    :goto_13
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, obj:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1d

    .line 500
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    goto :goto_13

    .line 505
    .end local v0           #obj:Lorg/w3c/dom/Node;
    :cond_1d
    return-void
.end method

.method public addNodesInDocOrder(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .registers 9
    .parameter "nodelist"
    .parameter "support"

    .prologue
    .line 519
    iget-boolean v3, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v3, :cond_11

    .line 520
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_NODESET_NOT_MUTABLE"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 522
    :cond_11
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 524
    .local v1, nChildren:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v1, :cond_24

    .line 526
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 528
    .local v2, node:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_21

    .line 530
    invoke-virtual {p0, v2, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I

    .line 524
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 533
    .end local v2           #node:Lorg/w3c/dom/Node;
    :cond_24
    return-void
.end method

.method public addNodesInDocOrder(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .registers 7
    .parameter "iterator"
    .parameter "support"

    .prologue
    .line 547
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v1, :cond_11

    .line 548
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESET_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_11
    :goto_11
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1b

    .line 554
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I

    goto :goto_11

    .line 556
    :cond_1b
    return-void
.end method

.method public appendNodes(Lorg/apache/xpath/NodeSet;)V
    .registers 8
    .parameter "nodes"

    .prologue
    const/4 v5, 0x0

    .line 1141
    invoke-virtual {p1}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v0

    .line 1143
    .local v0, nNodes:I
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v2, :cond_23

    .line 1145
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1146
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v2, v2, [Lorg/w3c/dom/Node;

    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1159
    :cond_14
    :goto_14
    iget-object v2, p1, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v4, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 1162
    return-void

    .line 1148
    :cond_23
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v2, v3, :cond_14

    .line 1150
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1152
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v1, v2, [Lorg/w3c/dom/Node;

    .line 1154
    .local v1, newMap:[Lorg/w3c/dom/Node;
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/2addr v3, v0

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1156
    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_14
.end method

.method public clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 848
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/NodeSet;

    .line 850
    .local v0, clone:Lorg/apache/xpath/NodeSet;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v2, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-ne v1, v2, :cond_22

    .line 852
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    array-length v1, v1

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 854
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v2, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    :cond_22
    return-object v0
.end method

.method public cloneWithReset()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/NodeSet;

    .line 162
    .local v0, clone:Lorg/apache/xpath/NodeSet;
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSet;->reset()V

    .line 164
    return-object v0
.end method

.method public contains(Lorg/w3c/dom/Node;)Z
    .registers 6
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 1297
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 1299
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v2, :cond_b

    move v2, v3

    .line 1310
    :goto_a
    return v2

    .line 1302
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v2, :cond_21

    .line 1304
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v2, v0

    .line 1306
    .local v1, node:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1307
    const/4 v2, 0x1

    goto :goto_a

    .line 1302
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .end local v1           #node:Lorg/w3c/dom/Node;
    :cond_21
    move v2, v3

    .line 1310
    goto :goto_a
.end method

.method public detach()V
    .registers 1

    .prologue
    .line 295
    return-void
.end method

.method public elementAt(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "i"

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_6

    .line 1283
    const/4 v0, 0x0

    .line 1285
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v0, v0, p1

    goto :goto_5
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 759
    iget-boolean v2, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-nez v2, :cond_11

    .line 760
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_NODESET_CANNOT_INDEX"

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 763
    :cond_11
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 764
    .local v1, saved:I
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v2, v3, :cond_23

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    .line 765
    .local v0, n:Lorg/w3c/dom/Node;
    :goto_20
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 766
    return-object v0

    .end local v0           #n:Lorg/w3c/dom/Node;
    :cond_23
    move-object v0, v4

    .line 764
    goto :goto_20
.end method

.method public getCurrentPos()I
    .registers 2

    .prologue
    .line 730
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return v0
.end method

.method public getExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLast()I
    .registers 2

    .prologue
    .line 814
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 366
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 368
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v0

    return v0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldCacheNodes()Z
    .registers 2

    .prologue
    .line 784
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    return v0
.end method

.method public getWhatToShow()I
    .registers 2

    .prologue
    .line 189
    const/16 v0, -0x11

    return v0
.end method

.method public indexOf(Lorg/w3c/dom/Node;)I
    .registers 6
    .parameter "elem"

    .prologue
    const/4 v3, -0x1

    .line 1354
    invoke-virtual {p0, v3}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 1356
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v2, :cond_a

    move v2, v3

    .line 1367
    :goto_9
    return v2

    .line 1359
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v2, :cond_20

    .line 1361
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v2, v0

    .line 1363
    .local v1, node:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1d

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v0

    .line 1364
    goto :goto_9

    .line 1359
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v1           #node:Lorg/w3c/dom/Node;
    :cond_20
    move v2, v3

    .line 1367
    goto :goto_9
.end method

.method public indexOf(Lorg/w3c/dom/Node;I)I
    .registers 7
    .parameter "elem"
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 1326
    invoke-virtual {p0, v3}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 1328
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v2, :cond_a

    move v2, v3

    .line 1339
    :goto_9
    return v2

    .line 1331
    :cond_a
    move v0, p2

    .local v0, i:I
    :goto_b
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v2, :cond_20

    .line 1333
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v2, v0

    .line 1335
    .local v1, node:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1d

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v0

    .line 1336
    goto :goto_9

    .line 1331
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v1           #node:Lorg/w3c/dom/Node;
    :cond_20
    move v2, v3

    .line 1339
    goto :goto_9
.end method

.method public insertElementAt(Lorg/w3c/dom/Node;I)V
    .registers 8
    .parameter "value"
    .parameter "at"

    .prologue
    const/4 v3, 0x0

    .line 1104
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v1, :cond_12

    .line 1105
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESET_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1107
    :cond_12
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_3d

    .line 1109
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1110
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1123
    :cond_20
    :goto_20
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_32

    .line 1125
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1128
    :cond_32
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v1, p2

    .line 1130
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 1131
    return-void

    .line 1112
    :cond_3d
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_20

    .line 1114
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1116
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v0, v1, [Lorg/w3c/dom/Node;

    .line 1118
    .local v0, newMap:[Lorg/w3c/dom/Node;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1120
    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_20
.end method

.method public insertNode(Lorg/w3c/dom/Node;I)V
    .registers 6
    .parameter "n"
    .parameter "pos"

    .prologue
    .line 400
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_11

    .line 401
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_11
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    .line 404
    return-void
.end method

.method public isFresh()Z
    .registers 2

    .prologue
    .line 307
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 352
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 244
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 246
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0, v1}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 248
    .local v0, next:Lorg/w3c/dom/Node;
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    move-object v1, v0

    .line 253
    .end local v0           #next:Lorg/w3c/dom/Node;
    :goto_15
    return-object v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public final peepOrNull()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 993
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-lez v0, :cond_11

    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final peepTail()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 1078
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final peepTailSub1()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final pop()Lorg/w3c/dom/Node;
    .registers 5

    .prologue
    .line 948
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 950
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aget-object v0, v1, v2

    .line 952
    .local v0, n:Lorg/w3c/dom/Node;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 954
    return-object v0
.end method

.method public final popAndTop()Lorg/w3c/dom/Node;
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 966
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 968
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object v3, v0, v1

    .line 970
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-nez v0, :cond_13

    move-object v0, v3

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_12
.end method

.method public final popPair()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1040
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 1041
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object v2, v0, v1

    .line 1042
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    aput-object v2, v0, v1

    .line 1043
    return-void
.end method

.method public final popQuick()V
    .registers 4

    .prologue
    .line 979
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 981
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 982
    return-void
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-nez v0, :cond_12

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_CANNOT_ITERATE"

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_12
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_23

    .line 276
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 278
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 281
    :goto_22
    return-object v0

    :cond_23
    move-object v0, v2

    goto :goto_22
.end method

.method public final push(Lorg/w3c/dom/Node;)V
    .registers 7
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 912
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 914
    .local v0, ff:I
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v2, v3, :cond_17

    .line 916
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v2, :cond_20

    .line 918
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v2, v2, [Lorg/w3c/dom/Node;

    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 919
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 933
    :cond_17
    :goto_17
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v2, v0

    .line 935
    add-int/lit8 v0, v0, 0x1

    .line 937
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 938
    return-void

    .line 923
    :cond_20
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 925
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v1, v2, [Lorg/w3c/dom/Node;

    .line 927
    .local v1, newMap:[Lorg/w3c/dom/Node;
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_17
.end method

.method public final pushPair(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 7
    .parameter "v1"
    .parameter "v2"

    .prologue
    const/4 v3, 0x0

    .line 1008
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_24

    .line 1010
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1011
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1027
    :cond_f
    :goto_f
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object p1, v1, v2

    .line 1028
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v1, v2

    .line 1029
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 1030
    return-void

    .line 1015
    :cond_24
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_f

    .line 1017
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1019
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    new-array v0, v1, [Lorg/w3c/dom/Node;

    .line 1021
    .local v0, newMap:[Lorg/w3c/dom/Node;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1023
    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_f
.end method

.method public removeAllElements()V
    .registers 4

    .prologue
    .line 1173
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_5

    .line 1182
    :goto_4
    return-void

    .line 1176
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v1, :cond_12

    .line 1178
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1176
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1181
    :cond_12
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    goto :goto_4
.end method

.method public removeElement(Lorg/w3c/dom/Node;)Z
    .registers 10
    .parameter "s"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1197
    iget-boolean v2, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v2, :cond_13

    .line 1198
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_NODESET_NOT_MUTABLE"

    invoke-static {v3, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1200
    :cond_13
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v2, :cond_19

    move v2, v3

    .line 1219
    :goto_18
    return v2

    .line 1203
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v2, :cond_4c

    .line 1205
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v2, v0

    .line 1207
    .local v1, node:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_49

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1209
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v2, v6

    if-ge v0, v2, :cond_3c

    .line 1210
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v5, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1212
    :cond_3c
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v2, v6

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 1213
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object v7, v2, v3

    move v2, v6

    .line 1215
    goto :goto_18

    .line 1203
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .end local v1           #node:Lorg/w3c/dom/Node;
    :cond_4c
    move v2, v3

    .line 1219
    goto :goto_18
.end method

.method public removeElementAt(I)V
    .registers 7
    .parameter "i"

    .prologue
    const/4 v4, 0x1

    .line 1233
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_6

    .line 1246
    :goto_5
    return-void

    .line 1236
    :cond_6
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-lt p1, v0, :cond_29

    .line 1237
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1238
    :cond_29
    if-gez p1, :cond_31

    .line 1239
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 1241
    :cond_31
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v0, v4

    if-ge p1, v0, :cond_43

    .line 1242
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1244
    :cond_43
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 1245
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_5
.end method

.method public removeNode(Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter "n"

    .prologue
    .line 416
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_11

    .line 417
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->removeElement(Lorg/w3c/dom/Node;)Z

    .line 420
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 173
    return-void
.end method

.method public runTo(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 325
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-nez v0, :cond_11

    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_CANNOT_INDEX"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_11
    if-ltz p1, :cond_1c

    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v1, :cond_1c

    .line 330
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 333
    :goto_1b
    return-void

    .line 332
    :cond_1c
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    goto :goto_1b
.end method

.method public setCurrentPos(I)V
    .registers 5
    .parameter "i"

    .prologue
    .line 742
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-nez v0, :cond_11

    .line 743
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_CANNOT_INDEX"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_11
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 747
    return-void
.end method

.method public setElementAt(Lorg/w3c/dom/Node;I)V
    .registers 6
    .parameter "node"
    .parameter "index"

    .prologue
    .line 1260
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-nez v0, :cond_11

    .line 1261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESET_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_11
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_1f

    .line 1265
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v0, v0, [Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1266
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1269
    :cond_1f
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v0, p2

    .line 1270
    return-void
.end method

.method public setLast(I)V
    .registers 2
    .parameter "last"

    .prologue
    .line 819
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    .line 820
    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .registers 5
    .parameter "b"

    .prologue
    .line 801
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->isFresh()Z

    move-result v0

    if-nez v0, :cond_13

    .line 802
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_CANNOT_CALL_SETSHOULDCACHENODE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_13
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    .line 807
    return-void
.end method

.method public final setTail(Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter "n"

    .prologue
    .line 1054
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-object p1, v0, v1

    .line 1055
    return-void
.end method

.method public final setTailSub1(Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter "n"

    .prologue
    .line 1066
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    aput-object p1, v0, v1

    .line 1067
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 867
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return v0
.end method
