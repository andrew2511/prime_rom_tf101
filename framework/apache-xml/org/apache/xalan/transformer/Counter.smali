.class public Lorg/apache/xalan/transformer/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# static fields
.field static final MAXCOUNTNODES:I = 0x1f4


# instance fields
.field m_countNodes:Lorg/apache/xpath/NodeSetDTM;

.field m_countNodesStartCount:I

.field m_countResult:I

.field m_fromNode:I

.field m_numberElem:Lorg/apache/xalan/templates/ElemNumber;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/apache/xpath/NodeSetDTM;)V
    .registers 4
    .parameter "numberElem"
    .parameter "countNodes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/transformer/Counter;->m_fromNode:I

    .line 88
    iput-object p2, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    .line 89
    iput-object p1, p0, Lorg/apache/xalan/transformer/Counter;->m_numberElem:Lorg/apache/xalan/templates/ElemNumber;

    .line 90
    return-void
.end method


# virtual methods
.method getLast()I
    .registers 4

    .prologue
    .line 153
    iget-object v1, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v1}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v0

    .line 155
    .local v0, size:I
    if-lez v0, :cond_12

    iget-object v1, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v1

    :goto_11
    return v1

    :cond_12
    const/4 v1, -0x1

    goto :goto_11
.end method

.method getPreviouslyCounted(Lorg/apache/xpath/XPathContext;I)I
    .registers 9
    .parameter "support"
    .parameter "node"

    .prologue
    .line 116
    iget-object v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v4}, Lorg/apache/xpath/NodeSetDTM;->size()I

    move-result v3

    .line 118
    .local v3, n:I
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    .line 120
    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_c
    if-ltz v2, :cond_1d

    .line 122
    iget-object v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodes:Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v4, v2}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    move-result v0

    .line 124
    .local v0, countedNode:I
    if-ne p2, v0, :cond_20

    .line 129
    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lorg/apache/xalan/transformer/Counter;->m_countNodesStartCount:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    .line 142
    .end local v0           #countedNode:I
    :cond_1d
    iget v4, p0, Lorg/apache/xalan/transformer/Counter;->m_countResult:I

    return v4

    .line 134
    .restart local v0       #countedNode:I
    :cond_20
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 138
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0, p2}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 120
    add-int/lit8 v2, v2, -0x1

    goto :goto_c
.end method
