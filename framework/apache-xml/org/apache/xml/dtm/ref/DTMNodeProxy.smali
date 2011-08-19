.class public Lorg/apache/xml/dtm/ref/DTMNodeProxy;
.super Ljava/lang/Object;
.source "DTMNodeProxy.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/Document;
.implements Lorg/w3c/dom/Text;
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/Attr;
.implements Lorg/w3c/dom/ProcessingInstruction;
.implements Lorg/w3c/dom/Comment;
.implements Lorg/w3c/dom/DocumentFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field static final implementation:Lorg/w3c/dom/DOMImplementation;


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field public dtm:Lorg/apache/xml/dtm/DTM;

.field protected fDocumentURI:Ljava/lang/String;

.field node:I

.field private xmlEncoding:Ljava/lang/String;

.field private xmlStandalone:Z

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy$DTMNodeProxyImplementation;-><init>()V

    sput-object v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTM;I)V
    .registers 3
    .parameter "dtm"
    .parameter "node"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    .line 89
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    .line 90
    return-void
.end method

.method private final traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 17
    .parameter "listVector"
    .parameter "tempNode"
    .parameter "namespaceURI"
    .parameter "localname"
    .parameter "isNamespaceURIWildCard"
    .parameter "isLocalNameWildCard"

    .prologue
    .line 917
    if-nez p2, :cond_3

    .line 945
    :cond_2
    return-void

    .line 923
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    if-nez p6, :cond_16

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 927
    :cond_16
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    .line 928
    .local v9, nsURI:Ljava/lang/String;
    if-nez p3, :cond_1e

    if-eqz v9, :cond_28

    :cond_1e
    if-nez p5, :cond_28

    if-eqz p3, :cond_2b

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 932
    :cond_28
    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 935
    .end local v9           #nsURI:Ljava/lang/String;
    :cond_2b
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 937
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 938
    .local v8, nl:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_36
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 940
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 938
    add-int/lit8 v7, v7, 0x1

    goto :goto_36
.end method

.method private final traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V
    .registers 9
    .parameter "listVector"
    .parameter "tempNode"
    .parameter "tagname"
    .parameter "isTagNameWildCard"

    .prologue
    .line 787
    if-nez p2, :cond_3

    .line 808
    :cond_2
    return-void

    .line 793
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    if-nez p4, :cond_16

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 796
    :cond_16
    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_19
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 801
    .local v1, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 803
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3, p4}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1335
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final appendData(Ljava/lang/String;)V
    .registers 4
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1031
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "deep"

    .prologue
    .line 560
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
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
    .line 1955
    const/4 v0, 0x0

    return v0
.end method

.method public final createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 718
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 5
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 855
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 688
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .registers 4
    .parameter "data"

    .prologue
    .line 673
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 3

    .prologue
    .line 649
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 639
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 5
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 839
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 733
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 5
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 704
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 4
    .parameter "data"

    .prologue
    .line 661
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final deleteData(II)V
    .registers 5
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1057
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "node"

    .prologue
    .line 152
    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 156
    :goto_6
    return v1

    .line 154
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 156
    .local v0, cce:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public final equals(Lorg/w3c/dom/Node;)Z
    .registers 8
    .parameter "node"

    .prologue
    const/4 v5, 0x0

    .line 124
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    move-object v2, v0

    .line 128
    .local v2, dtmp:Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    iget v3, v2, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    if-ne v3, v4, :cond_13

    iget-object v3, v2, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_f} :catch_15

    if-ne v3, v4, :cond_13

    const/4 v3, 0x1

    .line 132
    .end local v2           #dtmp:Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    :goto_12
    return v3

    .restart local v2       #dtmp:Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    :cond_13
    move v3, v5

    .line 128
    goto :goto_12

    .line 130
    .end local v2           #dtmp:Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    :catch_15
    move-exception v3

    move-object v1, v3

    .local v1, cce:Ljava/lang/ClassCastException;
    move v3, v5

    .line 132
    goto :goto_12
.end method

.method public getActualEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2049
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->actualEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "name"

    .prologue
    .line 1095
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v2, v3}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    .line 1096
    .local v0, map:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1097
    .local v1, node:Lorg/w3c/dom/Node;
    if-nez v1, :cond_12

    const-string v2, ""

    :goto_11
    return-object v2

    :cond_12
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_11
.end method

.method public final getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 1194
    const/4 v1, 0x0

    .line 1195
    .local v1, retNode:Lorg/w3c/dom/Node;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v2, v3, p1, p2}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1196
    .local v0, n:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    .line 1197
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1198
    :cond_12
    if-nez v1, :cond_17

    const-string v2, ""

    :goto_16
    return-object v2

    :cond_17
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_16
.end method

.method public final getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 5
    .parameter "name"

    .prologue
    .line 1136
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    .line 1137
    .local v0, map:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public final getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 7
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 1241
    const/4 v1, 0x0

    .line 1242
    .local v1, retAttr:Lorg/w3c/dom/Attr;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v2, v3, p1, p2}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1243
    .local v0, n:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    .line 1244
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .end local v1           #retAttr:Lorg/w3c/dom/Attr;
    check-cast v1, Lorg/w3c/dom/Attr;

    .line 1245
    .restart local v1       #retAttr:Lorg/w3c/dom/Attr;
    :cond_14
    return-object v1
.end method

.method public final getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 4

    .prologue
    .line 440
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1983
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 4

    .prologue
    .line 369
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    return-object v0
.end method

.method public final getDTM()Lorg/apache/xml/dtm/DTM;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    return-object v0
.end method

.method public final getDTMNodeNumber()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    return v0
.end method

.method public final getData()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 981
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDoctype()Lorg/w3c/dom/DocumentType;
    .registers 2

    .prologue
    .line 570
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDocumentElement()Lorg/w3c/dom/Element;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 592
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v0

    .line 593
    .local v0, dochandle:I
    const/4 v1, -0x1

    .line 594
    .local v1, elementhandle:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v2

    .line 595
    .local v2, kidhandle:I
    :goto_e
    if-eq v2, v4, :cond_33

    .line 598
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    sparse-switch v3, :sswitch_data_48

    .line 617
    const/4 v1, -0x1

    .line 618
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v2

    .line 596
    :goto_20
    :sswitch_20
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v2}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v2

    goto :goto_e

    .line 601
    :sswitch_27
    if-eq v1, v4, :cond_31

    .line 603
    const/4 v1, -0x1

    .line 604
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v2

    goto :goto_20

    .line 607
    :cond_31
    move v1, v2

    .line 608
    goto :goto_20

    .line 622
    :cond_33
    if-ne v1, v4, :cond_3d

    .line 623
    new-instance v3, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v3

    .line 625
    :cond_3d
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Element;

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    .line 598
    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_27
        0x7 -> :sswitch_20
        0x8 -> :sswitch_20
        0xa -> :sswitch_20
    .end sparse-switch
.end method

.method public getDocumentURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2034
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->fDocumentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .registers 2

    .prologue
    .line 2011
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4
    .parameter "elementId"

    .prologue
    .line 955
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getElementById(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 11
    .parameter "tagname"

    .prologue
    .line 745
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 746
    .local v2, listVector:Ljava/util/Vector;
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v8, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v7, v8}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 747
    .local v5, retNode:Lorg/w3c/dom/Node;
    if-eqz v5, :cond_44

    .line 749
    const-string v7, "*"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 750
    .local v1, isTagNameWildCard:Z
    const/4 v7, 0x1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v7, v8, :cond_31

    .line 752
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 753
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v0, v7, :cond_44

    .line 755
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v2, v7, p1, v1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 758
    .end local v0           #i:I
    .end local v3           #nodeList:Lorg/w3c/dom/NodeList;
    :cond_31
    const/16 v7, 0x9

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v7, v8, :cond_44

    .line 759
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v8, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v7, v8}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v2, v7, p1, v1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    .line 763
    .end local v1           #isTagNameWildCard:Z
    :cond_44
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    .line 764
    .local v6, size:I
    new-instance v4, Lorg/apache/xpath/NodeSet;

    invoke-direct {v4, v6}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 765
    .local v4, nodeSet:Lorg/apache/xpath/NodeSet;
    const/4 v0, 0x0

    .end local p0
    .restart local v0       #i:I
    :goto_4e
    if-ge v0, v6, :cond_5c

    .line 767
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    invoke-virtual {v4, p0}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 769
    :cond_5c
    return-object v4
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 15
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 869
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 870
    .local v1, listVector:Ljava/util/Vector;
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 871
    .local v10, retNode:Lorg/w3c/dom/Node;
    if-eqz v10, :cond_50

    .line 873
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 874
    .local v5, isNamespaceURIWildCard:Z
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 875
    .local v6, isLocalNameWildCard:Z
    const/4 v0, 0x1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v0, v2, :cond_3a

    .line 877
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 878
    .local v8, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_27
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_50

    .line 880
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 878
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 883
    .end local v7           #i:I
    .end local v8           #nodeList:Lorg/w3c/dom/NodeList;
    :cond_3a
    const/16 v0, 0x9

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v0, v2, :cond_50

    .line 885
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->traverseChildren(Ljava/util/Vector;Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 888
    .end local v5           #isNamespaceURIWildCard:Z
    .end local v6           #isLocalNameWildCard:Z
    :cond_50
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v11

    .line 889
    .local v11, size:I
    new-instance v9, Lorg/apache/xpath/NodeSet;

    invoke-direct {v9, v11}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 890
    .local v9, nodeSet:Lorg/apache/xpath/NodeSet;
    const/4 v7, 0x0

    .end local p0
    .restart local v7       #i:I
    :goto_5a
    if-ge v7, v11, :cond_68

    .line 892
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    invoke-virtual {v9, p0}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    .line 890
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 894
    :cond_68
    return-object v9
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 1503
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final getFirstChild()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 382
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    .line 384
    .local v0, newnode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v1, 0x0

    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_c
.end method

.method public final getImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 2

    .prologue
    .line 580
    sget-object v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1352
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final getLastChild()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 395
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v0

    .line 397
    .local v0, newnode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v1, 0x0

    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_c
.end method

.method public final getLength()I
    .registers 3

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1269
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNextSibling()Lorg/w3c/dom/Node;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    move-object v1, v3

    .line 427
    :goto_d
    return-object v1

    .line 425
    :cond_e
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    .line 427
    .local v0, newnode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    move-object v1, v3

    goto :goto_d

    :cond_1b
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_d
.end method

.method public final getNodeName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeType()S
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    return v0
.end method

.method public final getNodeValue()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 4

    .prologue
    .line 478
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getOwnerDocument(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Document;

    check-cast p0, Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public final getOwnerElement()Lorg/w3c/dom/Element;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1314
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    move-object v1, v3

    .line 1319
    .end local p0
    :goto_9
    return-object v1

    .line 1318
    .restart local p0
    :cond_a
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v0

    .line 1319
    .local v0, newnode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    move-object v1, v3

    goto :goto_9

    :cond_17
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Element;

    check-cast p0, Lorg/w3c/dom/Element;

    move-object v1, p0

    goto :goto_9
.end method

.method public final getOwnerNode()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 353
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v0

    .line 355
    .local v0, newnode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v1, 0x0

    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_c
.end method

.method public final getParentNode()Lorg/w3c/dom/Node;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 337
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    move-object v1, v3

    .line 342
    :goto_9
    return-object v1

    .line 340
    :cond_a
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v0

    .line 342
    .local v0, newnode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    move-object v1, v3

    goto :goto_9

    :cond_17
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_9
.end method

.method public final getPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 408
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v0

    .line 410
    .local v0, newnode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v1, 0x0

    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_c
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 2

    .prologue
    .line 2181
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSpecified()Z
    .registers 2

    .prologue
    .line 1283
    const/4 v0, 0x1

    return v0
.end method

.method public getStrictErrorChecking()Z
    .registers 3

    .prologue
    .line 1373
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTagName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1082
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTarget()Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1943
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 1477
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2192
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlStandalone()Z
    .registers 2

    .prologue
    .line 2202
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlStandalone:Z

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2212
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .registers 6
    .parameter "name"

    .prologue
    .line 453
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 467
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2, p1, p2}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasAttributes()Z
    .registers 4

    .prologue
    .line 1175
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final hasChildNodes()Z
    .registers 4

    .prologue
    .line 548
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "importedNode"
    .parameter "deep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 823
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 494
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final insertData(ILjava/lang/String;)V
    .registers 5
    .parameter "offset"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1044
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .registers 3
    .parameter "namespaceURI"

    .prologue
    .line 1771
    const/4 v0, 0x0

    return v0
.end method

.method public isElementContentWhitespace()Z
    .registers 2

    .prologue
    .line 2145
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 6
    .parameter "arg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1549
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 1611
    :goto_5
    return v0

    .line 1552
    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v1

    if-eq v0, v1, :cond_12

    move v0, v2

    .line 1553
    goto :goto_5

    .line 1557
    :cond_12
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 1558
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    move v0, v2

    .line 1559
    goto :goto_5

    .line 1562
    :cond_20
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v2

    .line 1563
    goto :goto_5

    .line 1566
    :cond_30
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 1567
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    move v0, v2

    .line 1568
    goto :goto_5

    .line 1571
    :cond_3e
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    move v0, v2

    .line 1572
    goto :goto_5

    .line 1575
    :cond_4e
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5c

    .line 1576
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    move v0, v2

    .line 1577
    goto :goto_5

    .line 1580
    :cond_5c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    move v0, v2

    .line 1581
    goto :goto_5

    .line 1584
    :cond_6c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7a

    .line 1585
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    move v0, v2

    .line 1586
    goto :goto_5

    .line 1589
    :cond_7a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    move v0, v2

    .line 1590
    goto/16 :goto_5

    .line 1593
    :cond_8b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9a

    .line 1594
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    move v0, v2

    .line 1595
    goto/16 :goto_5

    .line 1598
    :cond_9a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    move v0, v2

    .line 1599
    goto/16 :goto_5

    :cond_ab
    move v0, v3

    .line 1611
    goto/16 :goto_5
.end method

.method public isId()Z
    .registers 2

    .prologue
    .line 2185
    const/4 v0, 0x0

    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .registers 3
    .parameter "other"

    .prologue
    .line 1844
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 281
    sget-object v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "specifiedPrefix"

    .prologue
    const/4 v11, 0x0

    .line 1624
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v7

    .line 1625
    .local v7, type:S
    packed-switch v7, :pswitch_data_94

    :pswitch_8
    move-object v9, v11

    .line 1695
    :goto_9
    return-object v9

    .line 1628
    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 1629
    .local v5, namespace:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1630
    .local v6, prefix:Ljava/lang/String;
    if-eqz v5, :cond_24

    .line 1632
    if-nez p1, :cond_1a

    if-ne v6, p1, :cond_1a

    move-object v9, v5

    .line 1634
    goto :goto_9

    .line 1635
    :cond_1a
    if-eqz v6, :cond_24

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    move-object v9, v5

    .line 1637
    goto :goto_9

    .line 1640
    :cond_24
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->hasAttributes()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 1641
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 1642
    .local v4, map:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 1643
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_33
    if-ge v2, v3, :cond_78

    .line 1644
    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1645
    .local v0, attr:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1646
    .local v1, attrPrefix:Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 1647
    .local v8, value:Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 1648
    if-eqz v5, :cond_75

    const-string v9, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 1650
    if-nez p1, :cond_5f

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "xmlns"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    move-object v9, v8

    .line 1653
    goto :goto_9

    .line 1654
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

    .line 1658
    goto :goto_9

    .line 1643
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

    .line 1669
    goto :goto_9

    .end local v5           #namespace:Ljava/lang/String;
    .end local v6           #prefix:Ljava/lang/String;
    :pswitch_7a
    move-object v9, v11

    .line 1681
    goto :goto_9

    .line 1683
    :pswitch_7c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_91

    .line 1684
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_9

    :cond_91
    move-object v9, v11

    .line 1686
    goto/16 :goto_9

    .line 1625
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

    .line 1785
    if-nez p1, :cond_5

    move-object v1, v3

    .line 1823
    :goto_4
    return-object v1

    .line 1789
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getNodeType()S

    move-result v0

    .line 1791
    .local v0, type:S
    packed-switch v0, :pswitch_data_26

    :pswitch_c
    move-object v1, v3

    .line 1823
    goto :goto_4

    :pswitch_e
    move-object v1, v3

    .line 1808
    goto :goto_4

    .line 1810
    :pswitch_10
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 1811
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_24
    move-object v1, v3

    .line 1814
    goto :goto_4

    .line 1791
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

.method public final normalize()V
    .registers 3

    .prologue
    .line 1181
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public normalizeDocument()V
    .registers 1

    .prologue
    .line 2003
    return-void
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1123
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1228
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "oldAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1165
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
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
    .line 1994
    return-object p1
.end method

.method public final replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final replaceData(IILjava/lang/String;)V
    .registers 6
    .parameter "offset"
    .parameter "count"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1072
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
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
    .line 2111
    const/4 v0, 0x0

    return-object v0
.end method

.method public final sameNodeAs(Lorg/w3c/dom/Node;)Z
    .registers 7
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 170
    instance-of v2, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-nez v2, :cond_7

    move v2, v4

    .line 175
    :goto_6
    return v2

    .line 173
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    move-object v1, v0

    .line 175
    .local v1, that:Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    iget-object v3, v1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->dtm:Lorg/apache/xml/dtm/DTM;

    if-ne v2, v3, :cond_19

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    iget v3, v1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->node:I

    if-ne v2, v3, :cond_19

    const/4 v2, 0x1

    goto :goto_6

    :cond_19
    move v2, v4

    goto :goto_6
.end method

.method public setActualEncoding(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 2061
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->actualEncoding:Ljava/lang/String;

    .line 2062
    return-void
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1111
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1214
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1151
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 4
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1259
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final setData(Ljava/lang/String;)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .registers 2
    .parameter "documentURI"

    .prologue
    .line 2022
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->fDocumentURI:Ljava/lang/String;

    .line 2023
    return-void
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .registers 3
    .parameter "name"
    .parameter "makeId"

    .prologue
    .line 2162
    return-void
.end method

.method public setIdAttribute(Z)V
    .registers 2
    .parameter "id"

    .prologue
    .line 2155
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "makeId"

    .prologue
    .line 2178
    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .registers 3
    .parameter "at"
    .parameter "makeId"

    .prologue
    .line 2170
    return-void
.end method

.method public final setNodeValue(Ljava/lang/String;)V
    .registers 4
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public setStrictErrorChecking(Z)V
    .registers 4
    .parameter "strictErrorChecking"

    .prologue
    .line 1393
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
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
    .line 1894
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->setNodeValue(Ljava/lang/String;)V

    .line 1895
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .parameter "data"
    .parameter "handler"

    .prologue
    .line 1464
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 1303
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .registers 2
    .parameter "xmlEncoding"

    .prologue
    .line 2196
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlEncoding:Ljava/lang/String;

    .line 2197
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
    .line 2206
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlStandalone:Z

    .line 2207
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
    .line 2216
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->xmlVersion:Ljava/lang/String;

    .line 2217
    return-void
.end method

.method public final splitText(I)Lorg/w3c/dom/Text;
    .registers 4
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 969
    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public final substringData(II)Ljava/lang/String;
    .registers 5
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1019
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getData()Ljava/lang/String;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final supports(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 265
    sget-object v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->implementation:Lorg/w3c/dom/DOMImplementation;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
