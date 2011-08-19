.class public abstract Lorg/apache/xpath/functions/Function;
.super Lorg/apache/xpath/Expression;
.source "Function.java"


# static fields
.field static final serialVersionUID:J = 0x6023ff31b9615858L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 2
    .parameter "visitor"

    .prologue
    .line 111
    return-void
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 4
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 119
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    invoke-virtual {p0, p2}, Lorg/apache/xpath/functions/Function;->callArgVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 123
    :cond_9
    return-void
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
    .line 74
    if-eqz p1, :cond_5

    .line 75
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function;->reportWrongNumberArgs()V

    .line 76
    :cond_5
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 3
    .parameter "expr"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/Function;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
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
    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Error! Function.execute should not be called!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .registers 2
    .parameter "compiler"

    .prologue
    .line 143
    return-void
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "zero"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArg(Lorg/apache/xpath/Expression;I)V
    .registers 3
    .parameter "arg"
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function;->reportWrongNumberArgs()V

    .line 60
    return-void
.end method
