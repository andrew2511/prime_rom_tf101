.class public Lorg/apache/xpath/axes/ChildIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "ChildIterator.java"


# static fields
.field static final serialVersionUID:J = -0x603f9708c7e3feafL


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 5
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/ChildIterator;->initNodeTest(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .registers 5
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 71
    .local v0, current:I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 73
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v2

    return v2
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x3

    return v0
.end method

.method public nextNode()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 86
    iget-boolean v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_foundLast:Z

    if-eqz v1, :cond_7

    move v1, v3

    .line 105
    :goto_6
    return v1

    .line 91
    :cond_7
    iget v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_lastFetched:I

    if-ne v3, v1, :cond_20

    iget-object v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xpath/axes/ChildIterator;->m_context:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v1

    move v0, v1

    .local v0, next:I
    :goto_14
    iput v0, p0, Lorg/apache/xpath/axes/ChildIterator;->m_lastFetched:I

    .line 96
    if-eq v3, v0, :cond_2a

    .line 98
    iget v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_pos:I

    move v1, v0

    .line 99
    goto :goto_6

    .line 91
    .end local v0           #next:I
    :cond_20
    iget-object v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xpath/axes/ChildIterator;->m_lastFetched:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v1

    move v0, v1

    goto :goto_14

    .line 103
    .restart local v0       #next:I
    :cond_2a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xpath/axes/ChildIterator;->m_foundLast:Z

    move v1, v3

    .line 105
    goto :goto_6
.end method
