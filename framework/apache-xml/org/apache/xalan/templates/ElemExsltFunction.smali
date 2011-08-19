.class public Lorg/apache/xalan/templates/ElemExsltFunction;
.super Lorg/apache/xalan/templates/ElemTemplate;
.source "ElemExsltFunction.java"


# static fields
.field static final serialVersionUID:J = 0x3c6e37d4c54c533L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 10
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplate;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 129
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExsltFunction;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, namespace:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionHandlerClass()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, handlerClass:Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v5

    aput-object p1, v0, v6

    .line 132
    .local v0, args:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .local v1, extNsSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    .line 137
    const-string v4, "http://exslt.org/functions"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 139
    const-string v3, "http://exslt.org/functions"

    .line 140
    new-array v0, v7, [Ljava/lang/Object;

    .end local v0           #args:[Ljava/lang/Object;
    aput-object v3, v0, v5

    aput-object p1, v0, v6

    .line 141
    .restart local v0       #args:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    .end local v1           #extNsSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-direct {v1, v3, v2, v0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .restart local v1       #extNsSpt:Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    .line 144
    :cond_40
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;[Lorg/apache/xpath/objects/XObject;)V
    .registers 13
    .parameter "transformer"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v7

    .line 70
    .local v7, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v6

    .line 74
    .local v6, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual {v6}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v5

    .line 75
    .local v5, thisFrame:I
    iget v8, p0, Lorg/apache/xalan/templates/ElemExsltFunction;->m_frameSize:I

    invoke-virtual {v6, v8}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v3

    .line 77
    .local v3, nextFrame:I
    iget v8, p0, Lorg/apache/xalan/templates/ElemExsltFunction;->m_inArgsSize:I

    array-length v9, p2

    if-ge v8, v9, :cond_1f

    .line 78
    new-instance v8, Ljavax/xml/transform/TransformerException;

    const-string v9, "function called with too many args"

    invoke-direct {v8, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 83
    :cond_1f
    iget v8, p0, Lorg/apache/xalan/templates/ElemExsltFunction;->m_inArgsSize:I

    if-lez v8, :cond_58

    .line 84
    const/4 v8, 0x0

    iget v9, p0, Lorg/apache/xalan/templates/ElemExsltFunction;->m_inArgsSize:I

    invoke-virtual {v6, v8, v9}, Lorg/apache/xpath/VariableStack;->clearLocalSlots(II)V

    .line 86
    array-length v8, p2

    if-lez v8, :cond_58

    .line 87
    invoke-virtual {v6, v5}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 88
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExsltFunction;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 90
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_34
    array-length v8, p2

    if-ge v2, v8, :cond_55

    .line 91
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 92
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    instance-of v8, v8, Lorg/apache/xalan/templates/ElemParam;

    if-eqz v8, :cond_52

    .line 93
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemParam;

    .line 94
    .local v4, param:Lorg/apache/xalan/templates/ElemParam;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemParam;->getIndex()I

    move-result v8

    aget-object v9, p2, v2

    invoke-virtual {v6, v8, v9, v3}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    .line 90
    .end local v4           #param:Lorg/apache/xalan/templates/ElemParam;
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 98
    .end local v0           #child:Lorg/w3c/dom/Node;
    :cond_55
    invoke-virtual {v6, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 107
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #i:I
    :cond_58
    invoke-virtual {v6, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 108
    const/4 v8, 0x1

    invoke-virtual {p1, p0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 111
    invoke-virtual {v6, v5}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 116
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const-string v0, "function"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 51
    const/16 v0, 0x58

    return v0
.end method
