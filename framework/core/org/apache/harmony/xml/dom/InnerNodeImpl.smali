.class public abstract Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "InnerNodeImpl.java"


# instance fields
.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/LeafNodeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .registers 3
    .parameter "document"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    .line 49
    return-void
.end method

.method private static matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "pattern"
    .parameter "s"

    .prologue
    .line 261
    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private refreshIndices(I)V
    .registers 4
    .parameter "fromIndex"

    .prologue
    .line 165
    move v0, p1

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 166
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    iput v0, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_16
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 5

    .prologue
    .line 56
    new-instance v1, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 58
    .local v1, list:Lorg/apache/harmony/xml/dom/NodeListImpl;
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 59
    .local v2, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1, v2}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    goto :goto_b

    .line 62
    .end local v2           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_1b
    return-object v1
.end method

.method getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V
    .registers 9
    .parameter "out"
    .parameter "name"

    .prologue
    .line 232
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 233
    .local v3, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 234
    move-object v0, v3

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    move-object v1, v0

    .line 235
    .local v1, element:Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 236
    invoke-virtual {p1, v1}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 238
    :cond_2a
    invoke-virtual {v1, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    goto :goto_6

    .line 241
    .end local v1           #element:Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v3           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_2e
    return-void
.end method

.method getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "out"
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 244
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 245
    .local v3, node:Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 246
    move-object v0, v3

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    move-object v1, v0

    .line 247
    .local v1, element:Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 249
    invoke-virtual {p1, v1}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 251
    :cond_34
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 254
    .end local v1           #element:Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v3           #node:Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_38
    return-void
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    move-object v0, p0

    :goto_12
    return-object v0

    .restart local p0
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    move-object v0, p0

    :goto_19
    return-object v0

    .restart local p0
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v1, v1, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_14

    .line 75
    :cond_12
    const/4 v0, 0x0

    .line 78
    .end local p0
    :goto_13
    return-object v0

    .restart local p0
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Node;

    move-object v0, p0

    goto :goto_13
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 201
    .local v1, child:Lorg/w3c/dom/Node;
    if-nez v1, :cond_9

    .line 202
    const-string v3, ""

    .line 212
    :goto_8
    return-object v3

    .line 205
    :cond_9
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 206
    .local v2, next:Lorg/w3c/dom/Node;
    if-nez v2, :cond_1d

    .line 207
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->hasTextContent(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_1a
    const-string v3, ""

    goto :goto_8

    .line 210
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getTextContent(Ljava/lang/StringBuilder;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method getTextContent(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 217
    .local v1, child:Lorg/w3c/dom/Node;
    :goto_4
    if-eqz v1, :cond_18

    .line 218
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->hasTextContent(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 219
    move-object v0, v1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    move-object v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuilder;)V

    .line 221
    :cond_13
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_4

    .line 223
    :cond_18
    return-void
.end method

.method public hasChildNodes()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final hasTextContent(Lorg/w3c/dom/Node;)Z
    .registers 4
    .parameter "child"

    .prologue
    .line 227
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 8
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 86
    move-object v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    move-object v1, v0

    .line 88
    .local v1, refChildImpl:Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v2, v3, :cond_12

    .line 89
    new-instance v2, Lorg/w3c/dom/DOMException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 92
    :cond_12
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eq v2, p0, :cond_1d

    .line 93
    new-instance v2, Lorg/w3c/dom/DOMException;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 96
    :cond_1d
    iget v2, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v2

    return-object v2
.end method

.method insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .registers 11
    .parameter "newChild"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 104
    instance-of v5, p1, Lorg/w3c/dom/DocumentFragment;

    if-eqz v5, :cond_1c

    .line 105
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 106
    .local v3, toAdd:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_5e

    .line 107
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    add-int v6, p2, v1

    invoke-virtual {p0, v5, v6}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 112
    .end local v1           #i:I
    .end local v3           #toAdd:Lorg/w3c/dom/NodeList;
    :cond_1c
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    move-object v4, v0

    .line 113
    .local v4, toInsert:Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    iget-object v5, v4, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eqz v5, :cond_35

    iget-object v5, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eqz v5, :cond_35

    iget-object v5, v4, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v6, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v5, v6, :cond_35

    .line 114
    new-instance v5, Lorg/w3c/dom/DOMException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 116
    :cond_35
    invoke-virtual {v4, p0}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->isParentOf(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 117
    new-instance v5, Lorg/w3c/dom/DOMException;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    .line 120
    :cond_42
    iget-object v5, v4, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v5, :cond_54

    .line 121
    iget v2, v4, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 122
    .local v2, oldIndex:I
    iget-object v5, v4, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v5, v5, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    iget-object v5, v4, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-direct {v5, v2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    .line 126
    .end local v2           #oldIndex:I
    :cond_54
    iget-object v5, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v5, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 127
    iput-object p0, v4, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    .line 128
    invoke-direct {p0, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    .line 130
    .end local v4           #toInsert:Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    :cond_5e
    return-object p1
.end method

.method public isParentOf(Lorg/w3c/dom/Node;)Z
    .registers 5
    .parameter "node"

    .prologue
    .line 134
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    move-object v1, v0

    .line 136
    .local v1, nodeImpl:Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    :goto_4
    if-eqz v1, :cond_d

    .line 137
    if-ne v1, p0, :cond_a

    .line 138
    const/4 v2, 0x1

    .line 144
    :goto_9
    return v2

    .line 141
    :cond_a
    iget-object v1, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    goto :goto_4

    .line 144
    :cond_d
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public final normalize()V
    .registers 5

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, node:Lorg/w3c/dom/Node;
    :goto_4
    if-eqz v1, :cond_1b

    .line 155
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 156
    .local v0, next:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->normalize()V

    .line 158
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 159
    check-cast v1, Lorg/apache/harmony/xml/dom/TextImpl;

    .end local v1           #node:Lorg/w3c/dom/Node;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/TextImpl;->minimize()Lorg/apache/harmony/xml/dom/TextImpl;

    .line 154
    :cond_19
    move-object v1, v0

    .restart local v1       #node:Lorg/w3c/dom/Node;
    goto :goto_4

    .line 162
    .end local v0           #next:Lorg/w3c/dom/Node;
    :cond_1b
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 8
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 171
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    move-object v2, v0

    .line 173
    .local v2, oldChildImpl:Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    iget-object v3, v2, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v4, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v3, v4, :cond_12

    .line 174
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 176
    :cond_12
    iget-object v3, v2, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eq v3, p0, :cond_1d

    .line 177
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 180
    :cond_1d
    iget v1, v2, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 181
    .local v1, index:I
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    iput-object v5, v2, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    .line 183
    invoke-direct {p0, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    .line 185
    return-object p1
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
    .line 193
    move-object v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    move-object v2, v0

    iget v1, v2, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 194
    .local v1, index:I
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 195
    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    .line 196
    return-object p2
.end method
