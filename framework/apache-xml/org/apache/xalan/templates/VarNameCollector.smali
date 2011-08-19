.class public Lorg/apache/xalan/templates/VarNameCollector;
.super Lorg/apache/xpath/XPathVisitor;
.source "VarNameCollector.java"


# instance fields
.field m_refs:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method doesOccur(Lorg/apache/xml/utils/QName;)Z
    .registers 3
    .parameter "refName"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getVarCount()I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 43
    return-void
.end method

.method public visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z
    .registers 5
    .parameter "owner"
    .parameter "var"

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {p2}, Lorg/apache/xpath/operations/Variable;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method
