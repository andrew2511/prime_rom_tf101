.class public Lorg/apache/xpath/functions/FuncConcat;
.super Lorg/apache/xpath/functions/FunctionMultiArgs;
.source "FuncConcat.java"


# static fields
.field static final serialVersionUID:J = 0x181be077840824adL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionMultiArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .registers 3
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x2

    if-ge p1, v0, :cond_6

    .line 78
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncConcat;->reportWrongNumberArgs()V

    .line 79
    :cond_6
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_30

    .line 54
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_30
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_args:[Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_4c

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_args:[Lorg/apache/xpath/Expression;

    array-length v2, v2

    if-ge v0, v2, :cond_4c

    .line 60
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncConcat;->m_args:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 64
    .end local v0           #i:I
    :cond_4c
    new-instance v2, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "gtone"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
