.class public Lorg/apache/xpath/functions/FunctionDef1Arg;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FunctionDef1Arg.java"


# static fields
.field static final serialVersionUID:J = 0x2044bb739a495690L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public Arg0IsNodesetExpr()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->isNodesetExpr()Z

    move-result v0

    goto :goto_5
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-super {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->canTraverseOutsideSubtree()Z

    move-result v0

    goto :goto_5
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
    .line 143
    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    .line 144
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;->reportWrongNumberArgs()V

    .line 145
    :cond_6
    return-void
.end method

.method protected getArg0AsNode(Lorg/apache/xpath/XPathContext;)I
    .registers 3
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->asNode(Lorg/apache/xpath/XPathContext;)I

    move-result v0

    goto :goto_8
.end method

.method protected getArg0AsNumber(Lorg/apache/xpath/XPathContext;)D
    .registers 7
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v3, :cond_1b

    .line 119
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 120
    .local v0, currentNode:I
    const/4 v3, -0x1

    if-ne v3, v0, :cond_e

    .line 121
    const-wide/16 v3, 0x0

    .line 131
    .end local v0           #currentNode:I
    :goto_d
    return-wide v3

    .line 124
    .restart local v0       #currentNode:I
    :cond_e
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 125
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    .line 126
    .local v2, str:Lorg/apache/xml/utils/XMLString;
    invoke-interface {v2}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v3

    goto :goto_d

    .line 131
    .end local v0           #currentNode:I
    .end local v1           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v2           #str:Lorg/apache/xml/utils/XMLString;
    :cond_1b
    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v3

    goto :goto_d
.end method

.method protected getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;
    .registers 5
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    if-nez v2, :cond_17

    .line 86
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 87
    .local v0, currentNode:I
    const/4 v2, -0x1

    if-ne v2, v0, :cond_e

    .line 88
    sget-object v2, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .line 97
    .end local v0           #currentNode:I
    :goto_d
    return-object v2

    .line 91
    .restart local v0       #currentNode:I
    :cond_e
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 92
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    goto :goto_d

    .line 97
    .end local v0           #currentNode:I
    .end local v1           #dtm:Lorg/apache/xml/dtm/DTM;
    :cond_17
    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionDef1Arg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    goto :goto_d
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_ZERO_OR_ONE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
