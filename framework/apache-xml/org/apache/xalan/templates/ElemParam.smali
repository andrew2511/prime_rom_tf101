.class public Lorg/apache/xalan/templates/ElemParam;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemParam.java"


# static fields
.field static final serialVersionUID:J = -0xfb4e5416fd9a45fL


# instance fields
.field m_qnameID:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xalan/templates/ElemParam;)V
    .registers 2
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;-><init>(Lorg/apache/xalan/templates/ElemVariable;)V

    .line 83
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 94
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemParam;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getQNameID(Lorg/apache/xml/utils/QName;)I

    move-result v1

    iput v1, p0, Lorg/apache/xalan/templates/ElemParam;->m_qnameID:I

    .line 95
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemParam;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 96
    .local v0, parentToken:I
    const/16 v1, 0x13

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x58

    if-ne v0, v1, :cond_27

    .line 98
    :cond_1d
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemParam;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/ElemTemplate;

    iget v1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    .line 99
    :cond_27
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 7
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    .line 113
    .local v2, vars:Lorg/apache/xpath/VariableStack;
    iget v3, p0, Lorg/apache/xalan/templates/ElemParam;->m_index:I

    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->isLocalSet(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 116
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 117
    .local v0, sourceNode:I
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 120
    .local v1, var:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v3

    iget v4, p0, Lorg/apache/xalan/templates/ElemParam;->m_index:I

    invoke-virtual {v3, v4, v1}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    .line 122
    .end local v0           #sourceNode:I
    .end local v1           #var:Lorg/apache/xpath/objects/XObject;
    :cond_29
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string v0, "param"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 60
    const/16 v0, 0x29

    return v0
.end method
