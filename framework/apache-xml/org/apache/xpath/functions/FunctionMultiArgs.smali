.class public Lorg/apache/xpath/functions/FunctionMultiArgs;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FunctionMultiArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x62c59436157a481dL


# instance fields
.field m_args:[Lorg/apache/xpath/Expression;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    .line 162
    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 6
    .parameter "visitor"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 197
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_1c

    .line 199
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v2

    .line 200
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_1c

    .line 202
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    new-instance v3, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;

    invoke-direct {v3, p0, v0}, Lorg/apache/xpath/functions/FunctionMultiArgs$ArgMultiOwner;-><init>(Lorg/apache/xpath/functions/FunctionMultiArgs;I)V

    invoke-virtual {v2, v3, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 205
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_1c
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 146
    invoke-super {p0}, Lorg/apache/xpath/functions/Function3Args;->canTraverseOutsideSubtree()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    .line 158
    :goto_8
    return v2

    .line 150
    :cond_9
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v2

    .line 152
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_1e

    .line 154
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v3

    .line 155
    goto :goto_8

    .line 152
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 158
    :cond_1e
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public checkNumberArgs(I)V
    .registers 2
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 9
    .parameter "expr"

    .prologue
    const/4 v6, 0x0

    .line 212
    invoke-super {p0, p1}, Lorg/apache/xpath/functions/Function3Args;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v6

    .line 234
    :goto_8
    return v4

    .line 215
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/functions/FunctionMultiArgs;

    move-object v1, v0

    .line 216
    .local v1, fma:Lorg/apache/xpath/functions/FunctionMultiArgs;
    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_33

    .line 218
    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v3, v4

    .line 219
    .local v3, n:I
    if-eqz v1, :cond_1b

    iget-object v4, v1, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v4, v4

    if-eq v4, v3, :cond_1d

    :cond_1b
    move v4, v6

    .line 220
    goto :goto_8

    .line 222
    :cond_1d
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1e
    if-ge v2, v3, :cond_39

    .line 224
    iget-object v4, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v2

    iget-object v5, v1, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_30

    move v4, v6

    .line 225
    goto :goto_8

    .line 222
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 229
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_33
    iget-object v4, v1, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_39

    move v4, v6

    .line 231
    goto :goto_8

    .line 234
    :cond_39
    const/4 v4, 0x1

    goto :goto_8
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 5
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->fixupVariables(Ljava/util/Vector;I)V

    .line 103
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_17

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 107
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 110
    .end local v0           #i:I
    :cond_17
    return-void
.end method

.method public getArgs()[Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method protected reportWrongNumberArgs()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Programmer\'s assertion:  the method FunctionMultiArgs.reportWrongNumberArgs() should never be called."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, fMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .registers 7
    .parameter "arg"
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 66
    const/4 v1, 0x3

    if-ge p2, v1, :cond_8

    .line 67
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/functions/Function3Args;->setArg(Lorg/apache/xpath/Expression;I)V

    .line 88
    :goto_7
    return-void

    .line 70
    :cond_8
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    if-nez v1, :cond_19

    .line 72
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/xpath/Expression;

    iput-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    .line 73
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    aput-object p1, v1, v3

    .line 86
    :goto_15
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    goto :goto_7

    .line 79
    :cond_19
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/apache/xpath/Expression;

    .line 81
    .local v0, args:[Lorg/apache/xpath/Expression;
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 84
    iput-object v0, p0, Lorg/apache/xpath/functions/FunctionMultiArgs;->m_args:[Lorg/apache/xpath/Expression;

    goto :goto_15
.end method
