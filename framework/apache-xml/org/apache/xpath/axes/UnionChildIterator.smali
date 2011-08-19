.class public Lorg/apache/xpath/axes/UnionChildIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "UnionChildIterator.java"


# static fields
.field static final serialVersionUID:J = 0x30938eec96f3f3e7L


# instance fields
.field private m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    .line 42
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 50
    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .registers 9
    .parameter "n"

    .prologue
    const/4 v6, 0x1

    .line 115
    invoke-virtual {p0}, Lorg/apache/xpath/axes/UnionChildIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    .line 118
    .local v4, xctxt:Lorg/apache/xpath/XPathContext;
    :try_start_5
    invoke-virtual {v4, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    array-length v5, v5

    if-ge v0, v5, :cond_33

    .line 121
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    aget-object v1, v5, v0

    .line 122
    .local v1, pnt:Lorg/apache/xpath/axes/PredicatedNodeTest;
    invoke-virtual {v1, v4, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 123
    .local v2, score:Lorg/apache/xpath/objects/XObject;
    sget-object v5, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v2, v5, :cond_30

    .line 126
    invoke-virtual {v1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v5

    if-lez v5, :cond_2b

    .line 128
    invoke-virtual {v1, p1, v4}, Lorg/apache/xpath/axes/PredicatedNodeTest;->executePredicates(ILorg/apache/xpath/XPathContext;)Z
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_44
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_23} :catch_38

    move-result v5

    if-eqz v5, :cond_30

    .line 145
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move v5, v6

    .line 147
    .end local v1           #pnt:Lorg/apache/xpath/axes/PredicatedNodeTest;
    .end local v2           #score:Lorg/apache/xpath/objects/XObject;
    :goto_2a
    return v5

    .line 145
    .restart local v1       #pnt:Lorg/apache/xpath/axes/PredicatedNodeTest;
    .restart local v2       #score:Lorg/apache/xpath/objects/XObject;
    :cond_2b
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move v5, v6

    goto :goto_2a

    .line 119
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 145
    .end local v1           #pnt:Lorg/apache/xpath/axes/PredicatedNodeTest;
    .end local v2           #score:Lorg/apache/xpath/objects/XObject;
    :cond_33
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 147
    const/4 v5, 0x3

    goto :goto_2a

    .line 137
    .end local v0           #i:I
    :catch_38
    move-exception v5

    move-object v3, v5

    .line 141
    .local v3, se:Ljavax/xml/transform/TransformerException;
    :try_start_3a
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_44

    .line 145
    .end local v3           #se:Ljavax/xml/transform/TransformerException;
    :catchall_44
    move-exception v5

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v5
.end method

.method public addNodeTest(Lorg/apache/xpath/axes/PredicatedNodeTest;)V
    .registers 6
    .parameter "test"

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    if-nez v2, :cond_12

    .line 67
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/xpath/axes/PredicatedNodeTest;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 68
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    aput-object p1, v2, v3

    .line 81
    :goto_e
    invoke-virtual {p1, p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 82
    return-void

    .line 72
    :cond_12
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 73
    .local v1, tests:[Lorg/apache/xpath/axes/PredicatedNodeTest;
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    array-length v0, v2

    .line 75
    .local v0, len:I
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lorg/apache/xpath/axes/PredicatedNodeTest;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 77
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    aput-object p1, v2, v0

    goto :goto_e
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 5
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->fixupVariables(Ljava/util/Vector;I)V

    .line 97
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    if-eqz v1, :cond_17

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 99
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 102
    .end local v0           #i:I
    :cond_17
    return-void
.end method
