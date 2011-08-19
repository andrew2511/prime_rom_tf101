.class public Lorg/apache/xpath/axes/ChildTestIterator;
.super Lorg/apache/xpath/axes/BasicTestIterator;
.source "ChildTestIterator.java"


# static fields
.field static final serialVersionUID:J = -0x6e254e40aacb86baL


# instance fields
.field protected transient m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V
    .registers 3
    .parameter "traverser"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 72
    iput-object p1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 73
    return-void
.end method

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
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/BasicTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 58
    return-void
.end method


# virtual methods
.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-super {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/ChildTestIterator;

    .line 111
    .local v0, clone:Lorg/apache/xpath/axes/ChildTestIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object v1, v0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 113
    return-object v0
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_allowDetach:Z

    if-eqz v0, :cond_a

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 174
    invoke-super {p0}, Lorg/apache/xpath/axes/BasicTestIterator;->detach()V

    .line 176
    :cond_a
    return-void
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x3

    return v0
.end method

.method protected getNextNode()I
    .registers 4

    .prologue
    .line 83
    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_lastFetched:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_context:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    :goto_d
    iput v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_lastFetched:I

    .line 95
    iget v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_lastFetched:I

    return v0

    .line 83
    :cond_12
    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_context:I

    iget v2, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_lastFetched:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    goto :goto_d
.end method

.method public setRoot(ILjava/lang/Object;)V
    .registers 5
    .parameter "context"
    .parameter "environment"

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/BasicTestIterator;->setRoot(ILjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/ChildTestIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 147
    return-void
.end method
