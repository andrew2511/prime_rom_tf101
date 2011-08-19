.class public Lorg/apache/xpath/axes/AttributeIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "AttributeIterator.java"


# static fields
.field static final serialVersionUID:J = -0x74d2b24dcbea3b36L


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 4
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 49
    return-void
.end method


# virtual methods
.method public getAxis()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x2

    return v0
.end method

.method protected getNextNode()I
    .registers 3

    .prologue
    .line 56
    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_lastFetched:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_context:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    :goto_d
    iput v0, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_lastFetched:I

    .line 59
    iget v0, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_lastFetched:I

    return v0

    .line 56
    :cond_12
    iget-object v0, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/AttributeIterator;->m_lastFetched:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_d
.end method
