.class public Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMAxisIterNodeList.java"


# instance fields
.field private m_cachedNodes:Lorg/apache/xml/utils/IntVector;

.field private m_dtm:Lorg/apache/xml/dtm/DTM;

.field private m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

.field private m_last:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTM;Lorg/apache/xml/dtm/DTMAxisIterator;)V
    .registers 4
    .parameter "dtm"
    .parameter "dtmAxisIterator"

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    .line 73
    if-nez p2, :cond_e

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    .line 79
    :goto_b
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 80
    return-void

    .line 76
    :cond_e
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    .line 77
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    goto :goto_b
.end method


# virtual methods
.method public getDTMAxisIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    return-object v0
.end method

.method public getLength()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 133
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    if-ne v1, v2, :cond_1b

    .line 135
    :goto_5
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v0

    .local v0, node:I
    if-eq v0, v2, :cond_13

    .line 136
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    goto :goto_5

    .line 138
    :cond_13
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntVector;->size()I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    .line 140
    .end local v0           #node:I
    :cond_1b
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    return v1
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 105
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v2, :cond_34

    .line 107
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntVector;->size()I

    move-result v0

    .line 109
    .local v0, count:I
    if-le v0, p1, :cond_1a

    .line 110
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v1

    .line 111
    .local v1, node:I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 125
    .end local v0           #count:I
    .end local v1           #node:I
    :goto_19
    return-object v2

    .line 112
    .restart local v0       #count:I
    :cond_1a
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    if-ne v2, v3, :cond_34

    .line 114
    :goto_1e
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v1

    .restart local v1       #node:I
    if-eq v1, v3, :cond_30

    if-gt v0, p1, :cond_30

    .line 115
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 118
    :cond_30
    if-ne v1, v3, :cond_36

    .line 119
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    .line 125
    .end local v0           #count:I
    .end local v1           #node:I
    :cond_34
    const/4 v2, 0x0

    goto :goto_19

    .line 121
    .restart local v0       #count:I
    .restart local v1       #node:I
    :cond_36
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_19
.end method
