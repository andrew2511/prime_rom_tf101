.class public abstract Lorg/apache/xpath/axes/LocPathIterator;
.super Lorg/apache/xpath/axes/PredicatedNodeTest;
.source "LocPathIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/axes/PathComponent;


# static fields
.field static final serialVersionUID:J = -0x3fdf47dcaa1dfdfaL


# instance fields
.field protected m_allowDetach:Z

.field protected transient m_cdtm:Lorg/apache/xml/dtm/DTM;

.field protected transient m_clones:Lorg/apache/xpath/axes/IteratorPool;

.field protected transient m_context:I

.field protected transient m_currentContextNode:I

.field protected transient m_execContext:Lorg/apache/xpath/XPathContext;

.field private m_isTopLevel:Z

.field public transient m_lastFetched:I

.field protected transient m_length:I

.field protected transient m_pos:I

.field private m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

.field transient m_stackFrame:I


# direct methods
.method protected constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 59
    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    .line 937
    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    .line 948
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    .line 956
    iput-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    .line 959
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 965
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 973
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 978
    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 980
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    .line 60
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 5
    .parameter "nscontext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    .line 937
    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    .line 948
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    .line 956
    iput-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    .line 959
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 965
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 973
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 978
    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 980
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    .line 72
    invoke-virtual {p0, p0}, Lorg/apache/xpath/axes/LocPathIterator;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    .line 73
    iput-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    .line 74
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
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
    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 92
    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V
    .registers 8
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .parameter "shouldLoadWalkers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 112
    invoke-direct {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>()V

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    .line 937
    new-instance v0, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    .line 948
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    .line 956
    iput-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    .line 959
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 965
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 973
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 978
    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 980
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    .line 113
    invoke-virtual {p0, p0}, Lorg/apache/xpath/axes/LocPathIterator;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    .line 114
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 141
    new-instance v1, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    .line 147
    return-void

    .line 143
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 145
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .registers 2
    .parameter "allowRelease"

    .prologue
    .line 666
    iput-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    .line 667
    return-void
.end method

.method public asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 5
    .parameter "xctxt"
    .parameter "contextNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 269
    .local v0, iter:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v0, p2, p1}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    .line 271
    return-object v0
.end method

.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .registers 6
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v3}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    .line 298
    .local v1, iter:Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 300
    .local v0, current:I
    invoke-interface {v1, v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 302
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v2

    .line 304
    .local v2, next:I
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 305
    return v2
.end method

.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .registers 4
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asNode(Lorg/apache/xpath/XPathContext;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 4
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 922
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 924
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z

    .line 925
    invoke-virtual {p0, p2}, Lorg/apache/xpath/axes/LocPathIterator;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 927
    :cond_c
    return-void
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/IteratorPool;->getInstanceOrThrow()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    .line 716
    .local v0, clone:Lorg/apache/xpath/axes/LocPathIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    iput-object v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 717
    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iput-object v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    .line 719
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 720
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 721
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iput v1, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    .line 725
    return-object v0
.end method

.method public detach()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 678
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_1a

    .line 682
    iput-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 684
    iput-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    .line 685
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    .line 686
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 687
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 688
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 689
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 691
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v0, p0}, Lorg/apache/xpath/axes/IteratorPool;->freeInstance(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 693
    :cond_1a
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    iget-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 212
    .local v0, iter:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    .line 214
    return-object v0
.end method

.method public executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .registers 8
    .parameter "xctxt"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;

    invoke-virtual {v4}, Lorg/apache/xpath/axes/IteratorPool;->getInstance()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    .line 238
    .local v0, clone:Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 239
    .local v1, current:I
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 241
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v3

    .line 242
    .local v3, node:I
    invoke-virtual {v0, v3}, Lorg/apache/xpath/axes/LocPathIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 243
    .local v2, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    .line 245
    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 247
    const/4 v4, 0x0

    invoke-interface {v2, v3, p2, v4}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 249
    :cond_21
    return-void
.end method

.method public getAnalysisBits()I
    .registers 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getAxis()I

    move-result v0

    .line 123
    .local v0, axis:I
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    move-result v1

    .line 124
    .local v1, bit:I
    return v1
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 1014
    const/4 v0, -0x1

    return v0
.end method

.method public final getContext()I
    .registers 2

    .prologue
    .line 846
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    return v0
.end method

.method public final getCurrentContextNode()I
    .registers 2

    .prologue
    .line 857
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    return v0
.end method

.method public getCurrentNode()I
    .registers 2

    .prologue
    .line 784
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method public final getCurrentPos()I
    .registers 2

    .prologue
    .line 405
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method public getFilter()Lorg/apache/xml/dtm/DTMFilter;
    .registers 2

    .prologue
    .line 621
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFoundLast()Z
    .registers 2

    .prologue
    .line 825
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    return v0
.end method

.method public getIsTopLevel()Z
    .registers 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    return v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 3
    .parameter "xctxt"

    .prologue
    .line 1030
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 510
    iget-object v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v6

    if-ne p0, v6, :cond_1c

    move v2, v8

    .line 513
    .local v2, isPredicateTest:Z
    :goto_b
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getPredicateCount()I

    move-result v5

    .line 518
    .local v5, predCount:I
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    if-eq v7, v6, :cond_1f

    if-eqz v2, :cond_1f

    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_predicateIndex:I

    if-ge v6, v8, :cond_1f

    .line 519
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    .line 564
    :goto_1b
    return v6

    .line 510
    .end local v2           #isPredicateTest:Z
    .end local v5           #predCount:I
    :cond_1c
    const/4 v6, 0x0

    move v2, v6

    goto :goto_b

    .line 523
    .restart local v2       #isPredicateTest:Z
    .restart local v5       #predCount:I
    :cond_1f
    iget-boolean v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    if-eqz v6, :cond_26

    .line 524
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    goto :goto_1b

    .line 529
    :cond_26
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_predicateIndex:I

    if-ltz v6, :cond_46

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getProximityPosition()I

    move-result v6

    move v4, v6

    .line 535
    .local v4, pos:I
    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;
    :try_end_35
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2f .. :try_end_35} :catch_4a

    .line 545
    .local v0, clone:Lorg/apache/xpath/axes/LocPathIterator;
    if-lez v5, :cond_3d

    if-eqz v2, :cond_3d

    .line 548
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_predicateIndex:I

    iput v6, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_predCount:I

    .line 556
    :cond_3d
    :goto_3d
    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v3

    .local v3, next:I
    if-eq v7, v3, :cond_4e

    .line 558
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 529
    .end local v0           #clone:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v3           #next:I
    .end local v4           #pos:I
    :cond_46
    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    move v4, v6

    goto :goto_2f

    .line 537
    .restart local v4       #pos:I
    :catch_4a
    move-exception v6

    move-object v1, v6

    .local v1, cnse:Ljava/lang/CloneNotSupportedException;
    move v6, v7

    .line 539
    goto :goto_1b

    .line 561
    .end local v1           #cnse:Ljava/lang/CloneNotSupportedException;
    .restart local v0       #clone:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v3       #next:I
    :cond_4e
    if-eqz v2, :cond_56

    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_predicateIndex:I

    if-ge v6, v8, :cond_56

    .line 562
    iput v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    :cond_56
    move v6, v4

    .line 564
    goto :goto_1b
.end method

.method public final getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    if-nez v0, :cond_c

    .line 891
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getExpressionOwner()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/PrefixResolver;

    iput-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    .line 894
    :cond_c
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-object v0
.end method

.method public getRoot()I
    .registers 2

    .prologue
    .line 632
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    return v0
.end method

.method public getWhatToShow()I
    .registers 2

    .prologue
    .line 608
    const/16 v0, -0x11

    return v0
.end method

.method public final getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public incrementCurrentPos()V
    .registers 2

    .prologue
    .line 448
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 449
    return-void
.end method

.method public isDocOrdered()Z
    .registers 2

    .prologue
    .line 1003
    const/4 v0, 0x1

    return v0
.end method

.method public isFresh()Z
    .registers 2

    .prologue
    .line 576
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

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
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public isNodesetExpr()Z
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public item(I)I
    .registers 4
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 479
    const-string v0, "item(int index) not supported by this iterator!"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    .line 480
    return v1
.end method

.method public abstract nextNode()I
.end method

.method public previousNode()I
    .registers 4

    .prologue
    .line 587
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_NODESETDTM_CANNOT_ITERATE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 700
    const/4 v0, 0x0

    const-string v1, "This iterator can not reset!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    .line 701
    return-void
.end method

.method protected returnNextNode(I)I
    .registers 4
    .parameter "nextNode"

    .prologue
    const/4 v1, -0x1

    .line 764
    if-eq v1, p1, :cond_9

    .line 766
    iget v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 769
    :cond_9
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 771
    if-ne v1, p1, :cond_10

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    .line 774
    :cond_10
    return p1
.end method

.method public runTo(I)V
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, -0x1

    .line 799
    iget-boolean v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    if-nez v1, :cond_d

    if-ltz p1, :cond_e

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentPos()I

    move-result v1

    if-gt p1, v1, :cond_e

    .line 816
    :cond_d
    :goto_d
    return-void

    .line 804
    :cond_e
    if-ne v2, p1, :cond_17

    .line 806
    :goto_10
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v0

    .local v0, n:I
    if-eq v2, v0, :cond_d

    goto :goto_10

    .line 810
    .end local v0           #n:I
    :cond_17
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->nextNode()I

    move-result v0

    .restart local v0       #n:I
    if-eq v2, v0, :cond_d

    .line 812
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentPos()I

    move-result v1

    if-lt v1, p1, :cond_17

    goto :goto_d
.end method

.method public final setCurrentContextNode(I)V
    .registers 2
    .parameter "n"

    .prologue
    .line 867
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 868
    return-void
.end method

.method public setCurrentPos(I)V
    .registers 4
    .parameter "i"

    .prologue
    .line 440
    const/4 v0, 0x0

    const-string v1, "setCurrentPos not supported by this iterator!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    .line 441
    return-void
.end method

.method public setEnvironment(Ljava/lang/Object;)V
    .registers 2
    .parameter "environment"

    .prologue
    .line 165
    return-void
.end method

.method public setIsTopLevel(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 334
    iput-boolean p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    .line 335
    return-void
.end method

.method public setItem(II)V
    .registers 5
    .parameter "node"
    .parameter "index"

    .prologue
    .line 498
    const/4 v0, 0x0

    const-string v1, "setItem not supported by this iterator!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    .line 499
    return-void
.end method

.method protected setNextPosition(I)V
    .registers 4
    .parameter "next"

    .prologue
    .line 391
    const/4 v0, 0x0

    const-string v1, "setNextPosition not supported in this iterator!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    .line 392
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .registers 8
    .parameter "context"
    .parameter "environment"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 360
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    .line 362
    move-object v0, p2

    check-cast v0, Lorg/apache/xpath/XPathContext;

    move-object v1, v0

    .line 363
    .local v1, xctxt:Lorg/apache/xpath/XPathContext;
    iput-object v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 364
    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    .line 366
    iput p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_currentContextNode:I

    .line 369
    iget-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    if-nez v2, :cond_1c

    .line 370
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_prefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    .line 372
    :cond_1c
    iput v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 373
    iput-boolean v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_foundLast:Z

    .line 374
    iput v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    .line 375
    iput v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    .line 377
    iget-boolean v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_isTopLevel:Z

    if-eqz v2, :cond_32

    .line 378
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v2

    iput v2, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    .line 381
    :cond_32
    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 418
    const/4 v0, 0x0

    const-string v1, "setShouldCacheNodes not supported by this iterater!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    .line 419
    return-void
.end method

.method public size()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 464
    const-string v0, "size() not supported by this iterator!"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/axes/LocPathIterator;->assertion(ZLjava/lang/String;)V

    .line 465
    return v1
.end method
