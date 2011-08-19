.class public Lorg/apache/xpath/axes/FilterExprWalker;
.super Lorg/apache/xpath/axes/AxesWalker;
.source "FilterExprWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x4bbbce8b5bbeb3b7L


# instance fields
.field private m_canDetachNodeset:Z

.field private m_expr:Lorg/apache/xpath/Expression;

.field private transient m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

.field private m_mustHardReset:Z


# direct methods
.method public constructor <init>(Lorg/apache/xpath/axes/WalkingIterator;)V
    .registers 3
    .parameter "locPathIterator"

    .prologue
    .line 50
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_mustHardReset:Z

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/axes/FilterExprWalker;)Lorg/apache/xpath/Expression;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/xpath/axes/FilterExprWalker;Lorg/apache/xpath/Expression;)Lorg/apache/xpath/Expression;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-object p1
.end method


# virtual methods
.method public acceptNode(I)S
    .registers 5
    .parameter "n"

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/FilterExprWalker;->getPredicateCount()I

    move-result v1

    if-lez v1, :cond_18

    .line 169
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/FilterExprWalker;->countProximityPosition(I)V

    .line 171
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xpath/axes/FilterExprWalker;->executePredicates(ILorg/apache/xpath/XPathContext;)Z
    :try_end_13
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_13} :catch_1a

    move-result v1

    if-nez v1, :cond_18

    .line 172
    const/4 v1, 0x3

    .line 175
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_17

    .line 177
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 179
    .local v0, se:Ljavax/xml/transform/TransformerException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 4
    .parameter "visitor"

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/FilterExprWalker$filterExprOwner;-><init>(Lorg/apache/xpath/axes/FilterExprWalker;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 328
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 329
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/FilterExprWalker;

    .line 149
    .local v0, clone:Lorg/apache/xpath/axes/FilterExprWalker;
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v1, :cond_14

    .line 150
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/objects/XNodeSet;

    iput-object p0, v0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    .line 152
    :cond_14
    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 7
    .parameter "expr"

    .prologue
    const/4 v4, 0x0

    .line 337
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    .line 344
    :goto_8
    return v2

    .line 340
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/FilterExprWalker;

    move-object v1, v0

    .line 341
    .local v1, walker:Lorg/apache/xpath/axes/FilterExprWalker;
    iget-object v2, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    iget-object v3, v1, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_19

    move v2, v4

    .line 342
    goto :goto_8

    .line 344
    :cond_19
    const/4 v2, 0x1

    goto :goto_8
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 112
    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    .line 113
    iget-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->detach()V

    .line 117
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    .line 118
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 4
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->fixupVariables(Ljava/util/Vector;I)V

    .line 240
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 241
    return-void
.end method

.method public getAnalysisBits()I
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    instance-of v0, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v0, :cond_13

    .line 269
    iget-object p0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    .end local p0
    check-cast p0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {p0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result v0

    .line 271
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
    .line 294
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getAxis()I

    move-result v0

    return v0
.end method

.method public getInnerExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 3
    .parameter "xctxt"

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getLength()I

    move-result v0

    return v0
.end method

.method public getNextNode()I
    .registers 3

    .prologue
    .line 195
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v1, :cond_c

    .line 197
    iget-object v1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    .local v0, next:I
    move v1, v0

    .line 201
    .end local v0           #next:I
    :goto_b
    return v1

    :cond_c
    const/4 v1, -0x1

    goto :goto_b
.end method

.method public init(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 5
    .parameter "compiler"
    .parameter "opPos"
    .parameter "stepType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 69
    packed-switch p3, :pswitch_data_2c

    .line 86
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    .line 87
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 103
    :cond_13
    :goto_13
    return-void

    .line 73
    :pswitch_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_mustHardReset:Z

    .line 76
    :pswitch_17
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    .line 77
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 79
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    instance-of v0, v0, Lorg/apache/xpath/operations/Variable;

    if-eqz v0, :cond_13

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_canDetachNodeset:Z

    goto :goto_13

    .line 69
    :pswitch_data_2c
    .packed-switch 0x16
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public isDocOrdered()Z
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->isDocOrdered()Z

    move-result v0

    return v0
.end method

.method public setInnerExpression(Lorg/apache/xpath/Expression;)V
    .registers 2
    .parameter "expr"

    .prologue
    .line 256
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 257
    iput-object p1, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    .line 258
    return-void
.end method

.method public setRoot(I)V
    .registers 8
    .parameter "root"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    .line 131
    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getIsTopLevel()Z

    move-result v3

    iget-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    iget v4, v0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    iget-object v5, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_expr:Lorg/apache/xpath/Expression;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->executeFilterExpr(ILorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/PrefixResolver;ZILorg/apache/xpath/Expression;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/FilterExprWalker;->m_exprObj:Lorg/apache/xpath/objects/XNodeSet;

    .line 135
    return-void
.end method
