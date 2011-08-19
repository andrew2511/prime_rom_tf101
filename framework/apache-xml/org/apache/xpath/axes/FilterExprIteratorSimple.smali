.class public Lorg/apache/xpath/axes/FilterExprIteratorSimple;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "FilterExprIteratorSimple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x60da4ec68033d15bL


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lorg/apache/xpath/Expression;

.field private transient m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .registers 3
    .parameter "expr"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_mustHardReset:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_canDetachNodeset:Z

    .line 66
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)Lorg/apache/xpath/Expression;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/xpath/axes/FilterExprIteratorSimple;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-object p1
.end method

.method public static executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;
    .registers 13
    .parameter "context"
    .parameter "xctxt"
    .parameter "prefixResolver"
    .parameter "isTopLevel"
    .parameter "stackFrame"
    .parameter "expr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/utils/WrappedRuntimeException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    .line 95
    .local v2, savedResolver:Lorg/apache/xml/utils/PrefixResolver;
    const/4 v1, 0x0

    .line 99
    .local v1, result:Lorg/apache/xpath/objects/XNodeSet;
    :try_start_5
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 100
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 107
    if-eqz p3, :cond_2e

    .line 110
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v5

    .line 113
    .local v5, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual {v5}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v3

    .line 114
    .local v3, savedStart:I
    invoke-virtual {v5, p4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 116
    invoke-virtual {p5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    move-object v1, v0

    .line 117
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    .line 120
    invoke-virtual {v5, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_3f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_27} :catch_37

    .line 134
    .end local v3           #savedStart:I
    .end local v5           #vars:Lorg/apache/xpath/VariableStack;
    :goto_27
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 135
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 137
    return-object v1

    .line 123
    :cond_2e
    :try_start_2e
    invoke-virtual {p5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    move-object v1, v0
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_3f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2e .. :try_end_36} :catch_37

    goto :goto_27

    .line 126
    :catch_37
    move-exception v6

    move-object v4, v6

    .line 130
    .local v4, se:Ljavax/xml/transform/TransformerException;
    :try_start_39
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v6, v4}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3f

    .line 134
    .end local v4           #se:Ljavax/xml/transform/TransformerException;
    :catchall_3f
    move-exception v6

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 135
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    throw v6
.end method


# virtual methods
.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 4
    .parameter "visitor"

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprIteratorSimple;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 281
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 282
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 7
    .parameter "expr"

    .prologue
    const/4 v4, 0x0

    .line 289
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    .line 296
    :goto_8
    return v2

    .line 292
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    move-object v1, v0

    .line 293
    .local v1, fet:Lorg/apache/xpath/axes/FilterExprIteratorSimple;
    iget-object v2, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    iget-object v3, v1, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_19

    move v2, v4

    .line 294
    goto :goto_8

    .line 296
    :cond_19
    const/4 v2, 0x1

    goto :goto_8
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_allowDetach:Z

    if-eqz v0, :cond_f

    .line 185
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    .line 186
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->detach()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    .line 189
    :cond_f
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 4
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->fixupVariables(Ljava/util/Vector;I)V

    .line 204
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 205
    return-void
.end method

.method public getAnalysisBits()I
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_13

    .line 232
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    .end local p0
    check-cast p0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {p0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result v0

    .line 234
    :goto_12
    return v0

    .restart local p0
    :cond_13
    const/high16 v0, 0x400

    goto :goto_12
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_b

    .line 308
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getAxis()I

    move-result v0

    .line 310
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x14

    goto :goto_a
.end method

.method public getInnerExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public isDocOrdered()Z
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->isDocOrdered()Z

    move-result v0

    return v0
.end method

.method public nextNode()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 150
    iget-boolean v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_foundLast:Z

    if-eqz v1, :cond_7

    move v1, v2

    .line 172
    :goto_6
    return v1

    .line 155
    :cond_7
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v1, :cond_1d

    .line 157
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    .local v0, next:I
    iput v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_lastFetched:I

    .line 163
    :goto_13
    if-eq v2, v0, :cond_21

    .line 165
    iget v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_pos:I

    move v1, v0

    .line 166
    goto :goto_6

    .line 160
    .end local v0           #next:I
    :cond_1d
    const/4 v0, -0x1

    .restart local v0       #next:I
    iput v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_lastFetched:I

    goto :goto_13

    .line 170
    :cond_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_foundLast:Z

    move v1, v2

    .line 172
    goto :goto_6
.end method

.method public setInnerExpression(Lorg/apache/xpath/Expression;)V
    .registers 2
    .parameter "expr"

    .prologue
    .line 220
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 221
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    .line 222
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .registers 9
    .parameter "context"
    .parameter "environment"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->getIsTopLevel()Z

    move-result v3

    iget v4, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_stackFrame:I

    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_expr:Lorg/apache/xpath/Expression;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    .line 81
    return-void
.end method
