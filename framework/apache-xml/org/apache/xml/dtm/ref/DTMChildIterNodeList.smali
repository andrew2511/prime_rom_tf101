.class public Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMChildIterNodeList.java"


# instance fields
.field private m_firstChild:I

.field private m_parentDTM:Lorg/apache/xml/dtm/DTM;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTM;I)V
    .registers 4
    .parameter "parentDTM"
    .parameter "parentHandle"

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    .line 79
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    .line 80
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 4

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, count:I
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    .line 113
    .local v1, handle:I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 114
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v1

    goto :goto_3

    .line 117
    :cond_f
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, -0x1

    .line 96
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    .line 97
    .local v0, handle:I
    :goto_3
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_10

    if-eq v0, v2, :cond_10

    .line 98
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    goto :goto_3

    .line 100
    :cond_10
    if-ne v0, v2, :cond_14

    .line 101
    const/4 v1, 0x0

    .line 103
    :goto_13
    return-object v1

    :cond_14
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_13
.end method
