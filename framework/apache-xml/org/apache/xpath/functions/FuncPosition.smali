.class public Lorg/apache/xpath/functions/FuncPosition;
.super Lorg/apache/xpath/functions/Function;
.source "FuncPosition.java"


# static fields
.field static final serialVersionUID:J = -0x7e304793e581981eL


# instance fields
.field private m_isTopLevel:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncPosition;->getPositionInContextNodeList(Lorg/apache/xpath/XPathContext;)I

    move-result v2

    int-to-double v0, v2

    .line 124
    .local v0, pos:D
    new-instance v2, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v2, v0, v1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v2
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 3
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 133
    return-void
.end method

.method public getPositionInContextNodeList(Lorg/apache/xpath/XPathContext;)I
    .registers 10
    .parameter "xctxt"

    .prologue
    const/4 v7, -0x1

    .line 62
    iget-boolean v6, p0, Lorg/apache/xpath/functions/FuncPosition;->m_isTopLevel:Z

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    move-object v3, v6

    .line 64
    .local v3, iter:Lorg/apache/xpath/axes/SubContextList;
    :goto_7
    if-eqz v3, :cond_15

    .line 66
    invoke-interface {v3, p1}, Lorg/apache/xpath/axes/SubContextList;->getProximityPosition(Lorg/apache/xpath/XPathContext;)I

    move-result v5

    .local v5, prox:I
    move v6, v5

    .line 109
    .end local v5           #prox:I
    :goto_e
    return v6

    .line 62
    .end local v3           #iter:Lorg/apache/xpath/axes/SubContextList;
    :cond_f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v6

    move-object v3, v6

    goto :goto_7

    .line 72
    .restart local v3       #iter:Lorg/apache/xpath/axes/SubContextList;
    :cond_15
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 74
    .local v0, cnl:Lorg/apache/xml/dtm/DTMIterator;
    if-eqz v0, :cond_45

    .line 76
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v4

    .line 77
    .local v4, n:I
    if-ne v4, v7, :cond_39

    .line 79
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v6

    if-nez v6, :cond_29

    .line 80
    const/4 v6, 0x0

    goto :goto_e

    .line 89
    :cond_29
    :try_start_29
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_2c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_29 .. :try_end_2c} :catch_3e

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    move-result v2

    .line 97
    .local v2, currentNode:I
    :cond_31
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v4

    if-eq v7, v4, :cond_39

    .line 99
    if-ne v4, v2, :cond_31

    .line 105
    .end local v2           #currentNode:I
    :cond_39
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentPos()I

    move-result v6

    goto :goto_e

    .line 91
    :catch_3e
    move-exception v1

    .line 93
    .local v1, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v6, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .end local v1           #cnse:Ljava/lang/CloneNotSupportedException;
    .end local v4           #n:I
    :cond_45
    move v6, v7

    .line 109
    goto :goto_e
.end method

.method public postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .registers 4
    .parameter "compiler"

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/xpath/functions/FuncPosition;->m_isTopLevel:Z

    .line 47
    return-void

    .line 46
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method
