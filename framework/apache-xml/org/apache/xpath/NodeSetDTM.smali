.class public Lorg/apache/xpath/NodeSetDTM;
.super Lorg/apache/xml/utils/NodeVector;
.source "NodeSetDTM.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x6aabdcf4e04f714eL


# instance fields
.field protected transient m_cacheNodes:Z

.field private transient m_last:I

.field m_manager:Lorg/apache/xml/dtm/DTMManager;

.field protected transient m_mutable:Z

.field protected transient m_next:I

.field protected m_root:I


# direct methods
.method public constructor <init>(IILorg/apache/xml/dtm/DTMManager;)V
    .registers 6
    .parameter "blocksize"
    .parameter "dummy"
    .parameter "dtmManager"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/NodeVector;-><init>(I)V

    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    .line 1166
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 84
    iput-object p3, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 85
    return-void
.end method

.method public constructor <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .registers 5
    .parameter "node"
    .parameter "dtmManager"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    .line 1166
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 187
    iput-object p2, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 189
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    .line 190
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 4
    .parameter "ni"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    .line 1166
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 129
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 130
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodes(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 4
    .parameter "dtmManager"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    .line 1166
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 72
    iput-object p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/NodeSetDTM;)V
    .registers 4
    .parameter "nodelist"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    .line 1166
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 112
    invoke-virtual {p1}, Lorg/apache/xpath/NodeSetDTM;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 113
    invoke-virtual {p1}, Lorg/apache/xpath/NodeSetDTM;->getRoot()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodes(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .registers 9
    .parameter "nodeList"
    .parameter "xctxt"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 163
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    .line 1103
    iput v5, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1159
    iput-boolean v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    .line 1166
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v5, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 165
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 168
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, v2, :cond_2b

    .line 170
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 171
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-virtual {p2, v3}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 173
    .local v0, handle:I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 175
    .end local v0           #handle:I
    .end local v3           #node:Lorg/w3c/dom/Node;
    :cond_2b
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .registers 7
    .parameter "iterator"
    .parameter "xctxt"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    .line 1103
    iput v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1159
    iput-boolean v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1163
    iput-boolean v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    .line 1166
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    .line 1212
    iput v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 146
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    .line 148
    :goto_16
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, node:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_24

    .line 150
    invoke-virtual {p2, v1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    .line 151
    .local v0, handle:I
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    goto :goto_16

    .line 153
    .end local v0           #handle:I
    :cond_24
    return-void
.end method


# virtual methods
.method public addElement(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 896
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 897
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 900
    return-void
.end method

.method public addNode(I)V
    .registers 5
    .parameter "n"

    .prologue
    .line 538
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 539
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    .line 542
    return-void
.end method

.method public addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I
    .registers 6
    .parameter "node"
    .parameter "support"

    .prologue
    .line 870
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 871
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(IZLorg/apache/xpath/XPathContext;)I

    move-result v0

    return v0
.end method

.method public addNodeInDocOrder(IZLorg/apache/xpath/XPathContext;)I
    .registers 13
    .parameter "node"
    .parameter "test"
    .parameter "support"

    .prologue
    .line 795
    iget-boolean v6, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v6, :cond_11

    .line 796
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 798
    :cond_11
    const/4 v4, -0x1

    .line 800
    .local v4, insertIndex:I
    if-eqz p2, :cond_3a

    .line 806
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v5

    .line 808
    .local v5, size:I
    const/4 v6, 0x1

    sub-int v3, v5, v6

    .local v3, i:I
    :goto_1b
    if-ltz v3, :cond_24

    .line 810
    invoke-virtual {p0, v3}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    .line 812
    .local v0, child:I
    if-ne v0, p1, :cond_2d

    .line 814
    const/4 v3, -0x2

    .line 826
    .end local v0           #child:I
    :cond_24
    const/4 v6, -0x2

    if-eq v3, v6, :cond_2c

    .line 828
    add-int/lit8 v4, v3, 0x1

    .line 830
    invoke-virtual {p0, p1, v4}, Lorg/apache/xpath/NodeSetDTM;->insertElementAt(II)V

    .line 854
    .end local v5           #size:I
    :cond_2c
    :goto_2c
    return v4

    .line 819
    .restart local v0       #child:I
    .restart local v5       #size:I
    :cond_2d
    invoke-virtual {p3, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 820
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, p1, v0}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 808
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 835
    .end local v0           #child:I
    .end local v1           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v3           #i:I
    .end local v5           #size:I
    :cond_3a
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v4

    .line 837
    const/4 v2, 0x0

    .line 839
    .local v2, foundit:Z
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_40
    if-ge v3, v4, :cond_45

    .line 841
    if-ne v3, p1, :cond_4b

    .line 843
    const/4 v2, 0x1

    .line 849
    :cond_45
    if-nez v2, :cond_2c

    .line 850
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    goto :goto_2c

    .line 839
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_40
.end method

.method public addNodes(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 6
    .parameter "iterator"

    .prologue
    .line 649
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v1, :cond_11

    .line 650
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_11
    if-eqz p1, :cond_1e

    .line 656
    :goto_13
    const/4 v1, -0x1

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    .local v0, obj:I
    if-eq v1, v0, :cond_1e

    .line 658
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    goto :goto_13

    .line 663
    .end local v0           #obj:I
    :cond_1e
    return-void
.end method

.method public addNodesInDocOrder(Lorg/apache/xml/dtm/DTMIterator;Lorg/apache/xpath/XPathContext;)V
    .registers 7
    .parameter "iterator"
    .parameter "support"

    .prologue
    .line 706
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v1, :cond_11

    .line 707
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_11
    :goto_11
    const/4 v1, -0x1

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    .local v0, node:I
    if-eq v1, v0, :cond_1c

    .line 713
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    goto :goto_11

    .line 715
    :cond_1c
    return-void
.end method

.method public allowDetachToRelease(Z)V
    .registers 2
    .parameter "allowRelease"

    .prologue
    .line 450
    return-void
.end method

.method public appendNodes(Lorg/apache/xml/utils/NodeVector;)V
    .registers 5
    .parameter "nodes"

    .prologue
    .line 932
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 933
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->appendNodes(Lorg/apache/xml/utils/NodeVector;)V

    .line 936
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    .line 257
    .local v0, clone:Lorg/apache/xpath/NodeSetDTM;
    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    .line 275
    .local v0, clone:Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->reset()V

    .line 277
    return-object v0
.end method

.method public contains(I)Z
    .registers 3
    .parameter "s"

    .prologue
    .line 1059
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 1061
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->contains(I)Z

    move-result v0

    return v0
.end method

.method public detach()V
    .registers 1

    .prologue
    .line 439
    return-void
.end method

.method public elementAt(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 1044
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 1046
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 1243
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentNode()I
    .registers 6

    .prologue
    .line 1144
    iget-boolean v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-nez v3, :cond_c

    .line 1145
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "This NodeSetDTM can not do indexing or counting functions!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1148
    :cond_c
    iget v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1152
    .local v2, saved:I
    iget v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    if-lez v3, :cond_23

    iget v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    .line 1153
    .local v0, current:I
    :goto_17
    iget v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_firstFree:I

    if-ge v0, v3, :cond_27

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v3

    move v1, v3

    .line 1154
    .local v1, n:I
    :goto_20
    iput v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1155
    return v1

    .line 1152
    .end local v0           #current:I
    .end local v1           #n:I
    :cond_23
    iget v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    move v0, v3

    goto :goto_17

    .line 1153
    .restart local v0       #current:I
    :cond_27
    const/4 v3, -0x1

    move v1, v3

    goto :goto_20
.end method

.method public getCurrentPos()I
    .registers 2

    .prologue
    .line 1115
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 356
    iget-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public getFilter()Lorg/apache/xml/dtm/DTMFilter;
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLast()I
    .registers 2

    .prologue
    .line 1216
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 522
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 524
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    return v0
.end method

.method public getRoot()I
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 217
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    if-ne v1, v0, :cond_13

    .line 219
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->item(I)I

    move-result v0

    .line 225
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 222
    goto :goto_10

    .line 225
    :cond_13
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    goto :goto_10
.end method

.method public getShouldCacheNodes()Z
    .registers 2

    .prologue
    .line 1176
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    return v0
.end method

.method public getWhatToShow()I
    .registers 2

    .prologue
    .line 302
    const/16 v0, -0x11

    return v0
.end method

.method public indexOf(I)I
    .registers 3
    .parameter "elem"

    .prologue
    .line 1096
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 1098
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .registers 4
    .parameter "elem"
    .parameter "index"

    .prologue
    .line 1078
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 1080
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public insertElementAt(II)V
    .registers 6
    .parameter "value"
    .parameter "at"

    .prologue
    .line 916
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 917
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_11
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    .line 920
    return-void
.end method

.method public insertNode(II)V
    .registers 6
    .parameter "n"
    .parameter "pos"

    .prologue
    .line 556
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_11
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;->insertElementAt(II)V

    .line 560
    return-void
.end method

.method public isDocOrdered()Z
    .registers 2

    .prologue
    .line 1232
    const/4 v0, 0x1

    return v0
.end method

.method public isFresh()Z
    .registers 2

    .prologue
    .line 463
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

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
    .line 1209
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    return v0
.end method

.method public item(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    .line 508
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public nextNode()I
    .registers 4

    .prologue
    .line 388
    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 390
    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    invoke-virtual {p0, v1}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    .line 392
    .local v0, next:I
    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    move v1, v0

    .line 397
    .end local v0           #next:I
    :goto_15
    return v1

    :cond_16
    const/4 v1, -0x1

    goto :goto_15
.end method

.method public previousNode()I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 414
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-nez v0, :cond_12

    .line 415
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_CANNOT_ITERATE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_12
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_23

    .line 420
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 422
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    .line 425
    :goto_22
    return v0

    :cond_23
    const/4 v0, -0x1

    goto :goto_22
.end method

.method public removeAllElements()V
    .registers 4

    .prologue
    .line 949
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 950
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_11
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->removeAllElements()V

    .line 953
    return-void
.end method

.method public removeElement(I)Z
    .registers 5
    .parameter "s"

    .prologue
    .line 971
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 972
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->removeElement(I)Z

    move-result v0

    return v0
.end method

.method public removeElementAt(I)V
    .registers 5
    .parameter "i"

    .prologue
    .line 990
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 991
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->removeElementAt(I)V

    .line 994
    return-void
.end method

.method public removeNode(I)V
    .registers 5
    .parameter "n"

    .prologue
    .line 572
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 573
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->removeElement(I)Z

    .line 576
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 286
    return-void
.end method

.method public runTo(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 481
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-nez v0, :cond_11

    .line 482
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_CANNOT_INDEX"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_11
    if-ltz p1, :cond_1c

    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_firstFree:I

    if-ge v0, v1, :cond_1c

    .line 486
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 489
    :goto_1b
    return-void

    .line 488
    :cond_1c
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_firstFree:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    goto :goto_1b
.end method

.method public setCurrentPos(I)V
    .registers 5
    .parameter "i"

    .prologue
    .line 1127
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    if-nez v0, :cond_11

    .line 1128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_CANNOT_INDEX"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_11
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    .line 1132
    return-void
.end method

.method public setElementAt(II)V
    .registers 6
    .parameter "node"
    .parameter "index"

    .prologue
    .line 1011
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 1012
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_11
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    .line 1015
    return-void
.end method

.method public setEnvironment(Ljava/lang/Object;)V
    .registers 2
    .parameter "environment"

    .prologue
    .line 208
    return-void
.end method

.method public setItem(II)V
    .registers 6
    .parameter "node"
    .parameter "index"

    .prologue
    .line 1028
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    if-nez v0, :cond_11

    .line 1029
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_NOT_MUTABLE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_11
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    .line 1032
    return-void
.end method

.method public setLast(I)V
    .registers 2
    .parameter "last"

    .prologue
    .line 1221
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    .line 1222
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .registers 3
    .parameter "context"
    .parameter "environment"

    .prologue
    .line 238
    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .registers 5
    .parameter "b"

    .prologue
    .line 1193
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->isFresh()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_CANNOT_CALL_SETSHOULDCACHENODE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_13
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    .line 1198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    .line 1199
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 883
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v0

    return v0
.end method
