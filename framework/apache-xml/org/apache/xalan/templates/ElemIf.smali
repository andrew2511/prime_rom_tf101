.class public Lorg/apache/xalan/templates/ElemIf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemIf.java"


# static fields
.field static final serialVersionUID:J = 0x1df582172bf67a5eL


# instance fields
.field private m_test:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    return-void
.end method


# virtual methods
.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 145
    if-eqz p2, :cond_d

    .line 146
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 147
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 148
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 89
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 91
    .local v0, vnames:Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_1c

    .line 92
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 93
    :cond_1c
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 5
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    .line 131
    .local v1, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 133
    .local v0, sourceNode:I
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v2, v1, v0, p0}, Lorg/apache/xpath/XPath;->bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 134
    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 137
    :cond_14
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    const-string v0, "if"

    return-object v0
.end method

.method public getTest()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 103
    const/16 v0, 0x24

    return v0
.end method

.method public setTest(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    .line 61
    return-void
.end method
