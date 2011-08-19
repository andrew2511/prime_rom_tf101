.class public Lorg/apache/xalan/transformer/XalanTransformState;
.super Ljava/lang/Object;
.source "XalanTransformState.java"

# interfaces
.implements Lorg/apache/xalan/transformer/TransformState;


# instance fields
.field m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

.field m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

.field m_currentNode:Lorg/w3c/dom/Node;

.field m_currentNodeHandle:I

.field m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

.field m_elemPending:Z

.field m_matchedNode:I

.field m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

.field m_node:Lorg/w3c/dom/Node;

.field m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    .line 41
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 42
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    .line 43
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    .line 44
    iput v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNodeHandle:I

    .line 45
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    .line 46
    iput v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    .line 47
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    .line 49
    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-void
.end method


# virtual methods
.method public getContextNodeList()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 3

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_c

    .line 136
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 138
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_b
.end method

.method public getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_7

    .line 80
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 82
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_6
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 89
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v1, :cond_7

    .line 90
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    .line 93
    :goto_6
    return-object v1

    .line 92
    :cond_7
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 93
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_6
.end method

.method public getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_7

    .line 102
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    .line 104
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    goto :goto_6
.end method

.method public getMatchedNode()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 122
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v1, :cond_17

    .line 123
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    iget v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    invoke-virtual {v1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 124
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    iget v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 127
    :goto_16
    return-object v1

    .line 126
    .end local v0           #dtm:Lorg/apache/xml/dtm/DTM;
    :cond_17
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 127
    .restart local v0       #dtm:Lorg/apache/xml/dtm/DTM;
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_16
.end method

.method public getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_7

    .line 112
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    .line 114
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    goto :goto_6
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-object v0
.end method

.method public resetState(Ljavax/xml/transform/Transformer;)V
    .registers 5
    .parameter "transformer"

    .prologue
    .line 62
    if-eqz p1, :cond_48

    instance-of v2, p1, Lorg/apache/xalan/transformer/TransformerImpl;

    if-eqz v2, :cond_48

    .line 63
    check-cast p1, Lorg/apache/xalan/transformer/TransformerImpl;

    .end local p1
    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 64
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 65
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    .line 66
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    .line 67
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    move-result v0

    .line 68
    .local v0, currentNodeHandle:I
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 69
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    .line 70
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    move-result v2

    iput v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    .line 71
    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    .line 73
    .end local v0           #currentNodeHandle:I
    .end local v1           #dtm:Lorg/apache/xml/dtm/DTM;
    :cond_48
    return-void
.end method

.method public setCurrentNode(Lorg/w3c/dom/Node;)V
    .registers 2
    .parameter "n"

    .prologue
    .line 55
    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    .line 56
    return-void
.end method
