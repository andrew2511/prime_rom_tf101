.class public Lorg/apache/xpath/operations/Operation;
.super Lorg/apache/xpath/Expression;
.source "Operation.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/operations/Operation$LeftExprOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x2a2616514e5fefbeL


# instance fields
.field protected m_left:Lorg/apache/xpath/Expression;

.field protected m_right:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    .line 147
    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 5
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 172
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitBinaryOperation(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Operation;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 174
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/operations/Operation$LeftExprOwner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/operations/Operation$LeftExprOwner;-><init>(Lorg/apache/xpath/operations/Operation;)V

    invoke-virtual {v0, v1, p2}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 175
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 177
    :cond_15
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 76
    :goto_e
    return v0

    .line 73
    :cond_f
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    .line 74
    goto :goto_e

    .line 76
    :cond_1d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 6
    .parameter "expr"

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/xpath/operations/Operation;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    .line 210
    .end local p1
    :goto_8
    return v1

    .line 204
    .restart local p1
    :cond_9
    iget-object v2, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/operations/Operation;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v3

    .line 205
    goto :goto_8

    .line 207
    :cond_19
    iget-object v1, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    check-cast p1, Lorg/apache/xpath/operations/Operation;

    .end local p1
    iget-object v2, p1, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_27

    move v1, v3

    .line 208
    goto :goto_8

    .line 210
    :cond_27
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 109
    iget-object v3, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1, v4}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 110
    .local v0, left:Lorg/apache/xpath/objects/XObject;
    iget-object v3, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1, v4}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 112
    .local v2, right:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p0, v0, v2}, Lorg/apache/xpath/operations/Operation;->operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 113
    .local v1, result:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 114
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 115
    return-object v1
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 4
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 57
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 58
    return-void
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getLeftOperand()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getRightOperand()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .parameter "left"
    .parameter "right"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2
    .parameter "exp"

    .prologue
    .line 192
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 193
    iput-object p1, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    .line 194
    return-void
.end method

.method public setLeftRight(Lorg/apache/xpath/Expression;Lorg/apache/xpath/Expression;)V
    .registers 3
    .parameter "l"
    .parameter "r"

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/xpath/operations/Operation;->m_left:Lorg/apache/xpath/Expression;

    .line 89
    iput-object p2, p0, Lorg/apache/xpath/operations/Operation;->m_right:Lorg/apache/xpath/Expression;

    .line 90
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 91
    invoke-virtual {p2, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 92
    return-void
.end method
