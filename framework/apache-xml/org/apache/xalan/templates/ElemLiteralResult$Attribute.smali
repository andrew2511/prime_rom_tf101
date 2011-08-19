.class public Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;
.super Ljava/lang/Object;
.source "ElemLiteralResult.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemLiteralResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attribute"
.end annotation


# instance fields
.field private m_attribute:Lorg/apache/xalan/templates/AVT;

.field private m_owner:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lorg/apache/xalan/templates/ElemLiteralResult;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V
    .registers 5
    .parameter
    .parameter "avt"
    .parameter "elem"

    .prologue
    .line 739
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    .line 740
    iput-object p2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    .line 741
    iput-object p3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    .line 742
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 757
    const/4 v0, 0x0

    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "deep"

    .prologue
    .line 770
    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .registers 3
    .parameter "other"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1136
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 780
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 790
    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;)V

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 1102
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 807
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 817
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1046
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 838
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, uri:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    :goto_f
    return-object v1

    :cond_10
    move-object v1, v0

    goto :goto_f
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 849
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 859
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, localName:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v2, v0

    :goto_13
    return-object v2

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 871
    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 883
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 893
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .registers 2

    .prologue
    .line 1063
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 903
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 5

    .prologue
    .line 914
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, uri:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, rawName:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    :goto_15
    return-object v2

    :cond_16
    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_15
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 927
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 2

    .prologue
    .line 1087
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .registers 2

    .prologue
    .line 1071
    const/4 v0, 0x1

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 1098
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1054
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 937
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .registers 2

    .prologue
    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 963
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 965
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .registers 3
    .parameter "namespaceURI"

    .prologue
    .line 1114
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 3
    .parameter "arg"

    .prologue
    .line 1106
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public isId()Z
    .registers 2

    .prologue
    .line 1089
    const/4 v0, 0x0

    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .registers 3
    .parameter "other"

    .prologue
    .line 1123
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "specifiedPrefix"

    .prologue
    .line 1110
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "namespaceURI"

    .prologue
    .line 1118
    const/4 v0, 0x0

    return-object v0
.end method

.method public normalize()V
    .registers 1

    .prologue
    .line 980
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 995
    const/4 v0, 0x0

    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 1012
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .registers 5
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 1026
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 1039
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .registers 2
    .parameter "textContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->setNodeValue(Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .parameter "data"
    .parameter "handler"

    .prologue
    .line 1094
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    .line 1085
    return-void
.end method
