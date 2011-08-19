.class public Lorg/apache/xml/utils/UnImplNode;
.super Ljava/lang/Object;
.source "UnImplNode.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/Document;


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field protected fDocumentURI:Ljava/lang/String;

.field private xmlEncoding:Ljava/lang/String;

.field private xmlStandalone:Z

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1127
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1129
    const/4 v0, 0x0

    return-object v0
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public appendData(Ljava/lang/String;)V
    .registers 3
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1053
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "deep"

    .prologue
    .line 536
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x0

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
    .line 1713
    const/4 v0, 0x0

    return v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 916
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 918
    const/4 v0, 0x0

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 993
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 995
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 880
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 882
    const/4 v0, 0x0

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .registers 3
    .parameter "data"

    .prologue
    .line 863
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 865
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 2

    .prologue
    .line 833
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 3
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 820
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x0

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 974
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 976
    const/4 v0, 0x0

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 934
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 936
    const/4 v0, 0x0

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 4
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 899
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 3
    .parameter "data"

    .prologue
    .line 848
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 850
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteData(II)V
    .registers 4
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1079
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOM ERROR! class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 80
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOM ERROR! class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActualEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1808
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->actualEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 399
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 508
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "name"

    .prologue
    .line 359
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 462
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 641
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 643
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1741
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 2

    .prologue
    .line 149
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .registers 2

    .prologue
    .line 777
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 779
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .registers 2

    .prologue
    .line 803
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 805
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1793
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->fDocumentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .registers 2

    .prologue
    .line 1769
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 3
    .parameter "elementId"

    .prologue
    .line 1008
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1010
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3
    .parameter "name"

    .prologue
    .line 276
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 429
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 1253
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/utils/UnImplNode;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 162
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 2

    .prologue
    .line 790
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1146
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 175
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 201
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 764
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 766
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 726
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 728
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 188
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 123
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

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
    .line 551
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 229
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .registers 2

    .prologue
    .line 615
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 136
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 739
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 741
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 521
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 2

    .prologue
    .line 1944
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .registers 2

    .prologue
    .line 628
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public getStrictErrorChecking()Z
    .registers 2

    .prologue
    .line 1185
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1187
    const/4 v0, 0x0

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1701
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 1227
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1895
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1953
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlStandalone()Z
    .registers 2

    .prologue
    .line 1961
    iget-boolean v0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlStandalone:Z

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1970
    iget-object v0, p0, Lorg/apache/xml/utils/UnImplNode;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 326
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "name"
    .parameter "x"

    .prologue
    .line 343
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 412
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .registers 2

    .prologue
    .line 110
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "importedNode"
    .parameter "deep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 955
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 957
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 659
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .registers 4
    .parameter "offset"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1066
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .registers 3
    .parameter "namespaceURI"

    .prologue
    .line 1526
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 6
    .parameter "arg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1299
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 1362
    :goto_5
    return v0

    .line 1302
    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    move-result v1

    if-eq v0, v1, :cond_12

    move v0, v2

    .line 1303
    goto :goto_5

    .line 1307
    :cond_12
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 1308
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    move v0, v2

    .line 1309
    goto :goto_5

    .line 1312
    :cond_20
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v2

    .line 1313
    goto :goto_5

    .line 1316
    :cond_30
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 1317
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    move v0, v2

    .line 1318
    goto :goto_5

    .line 1321
    :cond_3e
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    move v0, v2

    .line 1322
    goto :goto_5

    .line 1325
    :cond_4e
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5c

    .line 1326
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    move v0, v2

    .line 1327
    goto :goto_5

    .line 1330
    :cond_5c
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    move v0, v2

    .line 1331
    goto :goto_5

    .line 1334
    :cond_6c
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7a

    .line 1335
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    move v0, v2

    .line 1336
    goto :goto_5

    .line 1339
    :cond_7a
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    move v0, v2

    .line 1340
    goto/16 :goto_5

    .line 1343
    :cond_8b
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9a

    .line 1344
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    move v0, v2

    .line 1345
    goto/16 :goto_5

    .line 1348
    :cond_9a
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    move v0, v2

    .line 1349
    goto/16 :goto_5

    :cond_ab
    move v0, v3

    .line 1362
    goto/16 :goto_5
.end method

.method public isId()Z
    .registers 2

    .prologue
    .line 1948
    const/4 v0, 0x0

    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .registers 3
    .parameter "other"

    .prologue
    .line 1602
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
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespaceInElementContent()Z
    .registers 2

    .prologue
    .line 1905
    const/4 v0, 0x0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 216
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "specifiedPrefix"

    .prologue
    const/4 v11, 0x0

    .line 1375
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    move-result v7

    .line 1376
    .local v7, type:S
    packed-switch v7, :pswitch_data_94

    :pswitch_8
    move-object v9, v11

    .line 1450
    :goto_9
    return-object v9

    .line 1379
    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 1380
    .local v5, namespace:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1381
    .local v6, prefix:Ljava/lang/String;
    if-eqz v5, :cond_24

    .line 1383
    if-nez p1, :cond_1a

    if-ne v6, p1, :cond_1a

    move-object v9, v5

    .line 1385
    goto :goto_9

    .line 1386
    :cond_1a
    if-eqz v6, :cond_24

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move-object v9, v5

    .line 1388
    goto :goto_9

    .line 1391
    :cond_24
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->hasAttributes()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 1392
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 1393
    .local v4, map:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 1394
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_33
    if-ge v2, v3, :cond_78

    .line 1395
    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1396
    .local v0, attr:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1397
    .local v1, attrPrefix:Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 1398
    .local v8, value:Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 1399
    if-eqz v5, :cond_75

    const-string v9, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 1401
    if-nez p1, :cond_5f

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "xmlns"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    move-object v9, v8

    .line 1404
    goto :goto_9

    .line 1405
    :cond_5f
    if-eqz v1, :cond_75

    const-string v9, "xmlns"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    move-object v9, v8

    .line 1409
    goto :goto_9

    .line 1394
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .end local v0           #attr:Lorg/w3c/dom/Node;
    .end local v1           #attrPrefix:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #map:Lorg/w3c/dom/NamedNodeMap;
    .end local v8           #value:Ljava/lang/String;
    :cond_78
    move-object v9, v11

    .line 1421
    goto :goto_9

    .end local v5           #namespace:Ljava/lang/String;
    .end local v6           #prefix:Ljava/lang/String;
    :pswitch_7a
    move-object v9, v11

    .line 1435
    goto :goto_9

    .line 1437
    :pswitch_7c
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_91

    .line 1438
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_9

    :cond_91
    move-object v9, v11

    .line 1441
    goto/16 :goto_9

    .line 1376
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "namespaceURI"

    .prologue
    const/4 v3, 0x0

    .line 1543
    if-nez p1, :cond_5

    move-object v1, v3

    .line 1581
    :goto_4
    return-object v1

    .line 1547
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getNodeType()S

    move-result v0

    .line 1549
    .local v0, type:S
    packed-switch v0, :pswitch_data_26

    :pswitch_c
    move-object v1, v3

    .line 1581
    goto :goto_4

    :pswitch_e
    move-object v1, v3

    .line 1566
    goto :goto_4

    .line 1568
    :pswitch_10
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 1569
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_24
    move-object v1, v3

    .line 1572
    goto :goto_4

    .line 1549
    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public normalize()V
    .registers 2

    .prologue
    .line 263
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public normalizeDocument()V
    .registers 1

    .prologue
    .line 1761
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 373
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 478
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "oldAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 293
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 694
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 696
    const/4 v0, 0x0

    return-object v0
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "n"
    .parameter "namespaceURI"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1752
    return-object p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 677
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method public replaceData(IILjava/lang/String;)V
    .registers 5
    .parameter "offset"
    .parameter "count"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1094
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 3
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1870
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActualEncoding(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1820
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->actualEncoding:Ljava/lang/String;

    .line 1821
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 386
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 494
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 310
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 3
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 446
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1023
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .registers 2
    .parameter "documentURI"

    .prologue
    .line 1781
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->fDocumentURI:Ljava/lang/String;

    .line 1782
    return-void
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .registers 3
    .parameter "name"
    .parameter "makeId"

    .prologue
    .line 1922
    return-void
.end method

.method public setIdAttribute(Z)V
    .registers 2
    .parameter "id"

    .prologue
    .line 1915
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "makeId"

    .prologue
    .line 1937
    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .registers 3
    .parameter "at"
    .parameter "makeId"

    .prologue
    .line 1929
    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .registers 3
    .parameter "encoding"

    .prologue
    .line 1164
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1165
    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .registers 3
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 565
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 753
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .registers 3
    .parameter "strictErrorChecking"

    .prologue
    .line 1207
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1208
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
    .line 1652
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/UnImplNode;->setNodeValue(Ljava/lang/String;)V

    .line 1653
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .parameter "data"
    .parameter "handler"

    .prologue
    .line 1214
    invoke-virtual {p0}, Lorg/apache/xml/utils/UnImplNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 593
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .registers 2
    .parameter "xmlEncoding"

    .prologue
    .line 1956
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlEncoding:Ljava/lang/String;

    .line 1957
    return-void
.end method

.method public setXmlStandalone(Z)V
    .registers 2
    .parameter "xmlStandalone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1965
    iput-boolean p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlStandalone:Z

    .line 1966
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "xmlVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1974
    iput-object p1, p0, Lorg/apache/xml/utils/UnImplNode;->xmlVersion:Ljava/lang/String;

    .line 1975
    return-void
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .registers 3
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1109
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1111
    const/4 v0, 0x0

    return-object v0
.end method

.method public substringData(II)Ljava/lang/String;
    .registers 4
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1039
    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/UnImplNode;->error(Ljava/lang/String;)V

    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method
