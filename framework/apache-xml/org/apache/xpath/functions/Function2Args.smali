.class public Lorg/apache/xpath/functions/Function2Args;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "Function2Args.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/Function2Args$Arg1Owner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x4d5bdfc4080c0671L


# instance fields
.field m_arg1:Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    .line 130
    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 4
    .parameter "visitor"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/FunctionOneArg;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 158
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_11

    .line 159
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    new-instance v1, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;

    invoke-direct {v1, p0}, Lorg/apache/xpath/functions/Function2Args$Arg1Owner;-><init>(Lorg/apache/xpath/functions/Function2Args;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 160
    :cond_11
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->canTraverseOutsideSubtree()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v0

    goto :goto_7
.end method

.method public checkNumberArgs(I)V
    .registers 3
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    .line 105
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function2Args;->reportWrongNumberArgs()V

    .line 106
    :cond_6
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 6
    .parameter "expr"

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/FunctionOneArg;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    .line 181
    .end local p1
    :goto_8
    return v1

    .line 170
    .restart local p1
    :cond_9
    iget-object v1, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_25

    .line 172
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/functions/Function2Args;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-nez v1, :cond_17

    move v1, v3

    .line 173
    goto :goto_8

    .line 175
    :cond_17
    iget-object v1, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    check-cast p1, Lorg/apache/xpath/functions/Function2Args;

    .end local p1
    iget-object v2, p1, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, v2}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_2d

    move v1, v3

    .line 176
    goto :goto_8

    .line 178
    .restart local p1
    :cond_25
    check-cast p1, Lorg/apache/xpath/functions/Function2Args;

    .end local p1
    iget-object v1, p1, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_2d

    move v1, v3

    .line 179
    goto :goto_8

    .line 181
    :cond_2d
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 4
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/FunctionOneArg;->fixupVariables(Ljava/util/Vector;I)V

    .line 64
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_c

    .line 65
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 66
    :cond_c
    return-void
.end method

.method public getArg1()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "two"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .registers 4
    .parameter "arg"
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p2, :cond_6

    .line 84
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/FunctionOneArg;->setArg(Lorg/apache/xpath/Expression;I)V

    .line 92
    :goto_5
    return-void

    .line 85
    :cond_6
    const/4 v0, 0x1

    if-ne v0, p2, :cond_f

    .line 87
    iput-object p1, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    .line 88
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    goto :goto_5

    .line 91
    :cond_f
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function2Args;->reportWrongNumberArgs()V

    goto :goto_5
.end method
