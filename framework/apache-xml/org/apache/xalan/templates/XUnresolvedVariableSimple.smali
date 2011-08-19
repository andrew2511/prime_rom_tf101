.class public Lorg/apache/xalan/templates/XUnresolvedVariableSimple;
.super Lorg/apache/xpath/objects/XObject;
.source "XUnresolvedVariableSimple.java"


# static fields
.field static final serialVersionUID:J = -0x10fdfddee2c7dcc9L


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemVariable;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 41
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
    .line 55
    iget-object p0, p0, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;->m_obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/ElemVariable;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    .line 56
    .local v0, expr:Lorg/apache/xpath/Expression;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 57
    .local v1, xobj:Lorg/apache/xpath/objects/XObject;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 58
    return-object v1
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 68
    const/16 v0, 0x258

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XUnresolvedVariableSimple ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;->object()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
