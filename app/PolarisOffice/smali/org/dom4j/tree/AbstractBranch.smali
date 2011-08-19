.class public abstract Lorg/dom4j/tree/AbstractBranch;
.super Lorg/dom4j/tree/AbstractNode;
.source "AbstractBranch.java"

# interfaces
.implements Lorg/dom4j/Branch;


# static fields
.field protected static final DEFAULT_CONTENT_LIST_SIZE:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public add(Lorg/dom4j/Comment;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 242
    return-void
.end method

.method public add(Lorg/dom4j/Element;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 246
    return-void
.end method

.method public add(Lorg/dom4j/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 200
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 217
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->invalidNodeTypeAddException(Lorg/dom4j/Node;)V

    .line 219
    .end local p1
    :goto_0
    return-void

    .line 202
    .restart local p1
    :sswitch_0
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 207
    .restart local p1
    :sswitch_1
    check-cast p1, Lorg/dom4j/Comment;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 212
    .restart local p1
    :sswitch_2
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public add(Lorg/dom4j/ProcessingInstruction;)V
    .locals 0
    .parameter "pi"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    .line 250
    return-void
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "name"

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 171
    .local v0, node:Lorg/dom4j/Element;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 173
    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2
    .parameter "qualifiedName"
    .parameter "namespaceURI"

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 179
    .local v0, node:Lorg/dom4j/Element;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 181
    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 3
    .parameter "name"
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 192
    invoke-static {p2, p3}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 193
    .local v0, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v1

    .line 195
    .local v1, qName:Lorg/dom4j/QName;
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractBranch;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v2

    return-object v2
.end method

.method public addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 2
    .parameter "qname"

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 186
    .local v0, node:Lorg/dom4j/Element;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 188
    return-object v0
.end method

.method protected abstract addNode(ILorg/dom4j/Node;)V
.end method

.method protected abstract addNode(Lorg/dom4j/Node;)V
.end method

.method public appendContent(Lorg/dom4j/Branch;)V
    .locals 4
    .parameter "branch"

    .prologue
    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 292
    return-void

    .line 289
    :cond_0
    invoke-interface {p1, v0}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 290
    .local v1, node:Lorg/dom4j/Node;
    invoke-interface {v1}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Node;

    invoke-virtual {p0, v3}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Node;)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract childAdded(Lorg/dom4j/Node;)V
.end method

.method protected abstract childRemoved(Lorg/dom4j/Node;)V
.end method

.method public content()Ljava/util/List;
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, backingList:Ljava/util/List;
    new-instance v1, Lorg/dom4j/tree/ContentListFacade;

    invoke-direct {v1, p0, v0}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v1
.end method

.method protected abstract contentList()Ljava/util/List;
.end method

.method protected contentRemoved()V
    .locals 5

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    .line 433
    .local v0, content:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, size:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 440
    return-void

    .line 434
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 436
    .local v2, object:Ljava/lang/Object;
    instance-of v4, v2, Lorg/dom4j/Node;

    if-eqz v4, :cond_1

    .line 437
    check-cast v2, Lorg/dom4j/Node;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    .line 433
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected createContentList()Ljava/util/List;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method protected createContentList(I)Ljava/util/List;
    .locals 1
    .parameter "size"

    .prologue
    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method protected createEmptyList()Ljava/util/List;
    .locals 3

    .prologue
    .line 399
    new-instance v0, Lorg/dom4j/tree/BackedList;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V

    return-object v0
.end method

.method protected createResultList()Lorg/dom4j/tree/BackedList;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Lorg/dom4j/tree/BackedList;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method protected createSingleResultList(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .parameter "result"

    .prologue
    .line 386
    new-instance v0, Lorg/dom4j/tree/BackedList;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V

    .line 387
    .local v0, list:Lorg/dom4j/tree/BackedList;
    invoke-virtual {v0, p1}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 389
    return-object v0
.end method

.method public elementByID(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 7
    .parameter "elementID"

    .prologue
    .line 265
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->nodeCount()I

    move-result v5

    .local v5, size:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 284
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 266
    :cond_0
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractBranch;->node(I)Lorg/dom4j/Node;

    move-result-object v4

    .line 268
    .local v4, node:Lorg/dom4j/Node;
    instance-of v6, v4, Lorg/dom4j/Element;

    if-eqz v6, :cond_2

    .line 269
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 270
    .local v1, element:Lorg/dom4j/Element;
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractBranch;->elementID(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, id:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v1

    .line 273
    goto :goto_1

    .line 275
    :cond_1
    invoke-interface {v1, p1}, Lorg/dom4j/Element;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_2

    move-object v6, v1

    .line 278
    goto :goto_1

    .line 265
    .end local v1           #element:Lorg/dom4j/Element;
    .end local v3           #id:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected elementID(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 1
    .parameter "element"

    .prologue
    .line 333
    const-string v0, "ID"

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "content"

    .prologue
    .line 122
    instance-of v2, p1, Lorg/dom4j/Node;

    if-eqz v2, :cond_1

    .line 123
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Node;

    move-object v1, v0

    .line 125
    .local v1, node:Lorg/dom4j/Node;
    invoke-interface {v1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 141
    .end local v1           #node:Lorg/dom4j/Node;
    :cond_0
    :pswitch_0
    const-string v2, ""

    .end local p1
    :goto_0
    return-object v2

    .line 132
    .restart local v1       #node:Lorg/dom4j/Node;
    .restart local p1
    :pswitch_1
    invoke-interface {v1}, Lorg/dom4j/Node;->getStringValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 137
    .end local v1           #node:Lorg/dom4j/Node;
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 138
    check-cast p1, Ljava/lang/String;

    .end local p1
    move-object v2, p1

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getContentAsText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "content"

    .prologue
    .line 92
    instance-of v2, p1, Lorg/dom4j/Node;

    if-eqz v2, :cond_1

    .line 93
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Node;

    move-object v1, v0

    .line 95
    .local v1, node:Lorg/dom4j/Node;
    invoke-interface {v1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 110
    .end local v1           #node:Lorg/dom4j/Node;
    :cond_0
    const-string v2, ""

    .end local p1
    :goto_0
    return-object v2

    .line 101
    .restart local v1       #node:Lorg/dom4j/Node;
    .restart local p1
    :pswitch_0
    invoke-interface {v1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 106
    .end local v1           #node:Lorg/dom4j/Node;
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 107
    check-cast p1, Ljava/lang/String;

    .end local p1
    move-object v2, p1

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getText()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 54
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, content:Ljava/util/List;
    if-eqz v1, :cond_2

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 59
    .local v6, size:I
    if-lt v6, v8, :cond_2

    .line 60
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, first:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractBranch;->getContentAsText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, firstText:Ljava/lang/String;
    if-ne v6, v8, :cond_0

    move-object v7, v3

    .line 79
    .end local v2           #first:Ljava/lang/Object;
    .end local v3           #firstText:Ljava/lang/String;
    .end local v6           #size:I
    :goto_0
    return-object v7

    .line 67
    .restart local v2       #first:Ljava/lang/Object;
    .restart local v3       #firstText:Ljava/lang/String;
    .restart local v6       #size:I
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    .local v4, i:I
    :goto_1
    if-lt v4, v6, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 70
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 71
    .local v5, node:Ljava/lang/Object;
    invoke-virtual {p0, v5}, Lorg/dom4j/tree/AbstractBranch;->getContentAsText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #first:Ljava/lang/Object;
    .end local v3           #firstText:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #node:Ljava/lang/Object;
    .end local v6           #size:I
    :cond_2
    const-string v7, ""

    goto :goto_0
.end method

.method public getTextTrim()Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getText()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, text:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v2, textContent:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 150
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 151
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->nodeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .locals 1
    .parameter "node"

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected invalidNodeTypeAddException(Lorg/dom4j/Node;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 453
    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid node type. Cannot add node: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to this branch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public node(I)Lorg/dom4j/Node;
    .locals 3
    .parameter "index"

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 297
    .local v0, object:Ljava/lang/Object;
    instance-of v1, v0, Lorg/dom4j/Node;

    if-eqz v1, :cond_0

    .line 298
    check-cast v0, Lorg/dom4j/Node;

    .end local v0           #object:Ljava/lang/Object;
    move-object v1, v0

    .line 305
    :goto_0
    return-object v1

    .line 301
    .restart local v0       #object:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v1

    goto :goto_0

    .line 305
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nodeCount()I
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/dom4j/Comment;)Z
    .locals 1
    .parameter "comment"

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .locals 1
    .parameter "element"

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 222
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 233
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->invalidNodeTypeAddException(Lorg/dom4j/Node;)V

    .line 235
    const/4 v0, 0x0

    .end local p1
    :goto_0
    return v0

    .line 224
    .restart local p1
    :sswitch_0
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    goto :goto_0

    .line 227
    .restart local p1
    :sswitch_1
    check-cast p1, Lorg/dom4j/Comment;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Comment;)Z

    move-result v0

    goto :goto_0

    .line 230
    .restart local p1
    :sswitch_2
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/ProcessingInstruction;)Z

    move-result v0

    goto :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public remove(Lorg/dom4j/ProcessingInstruction;)Z
    .locals 1
    .parameter "pi"

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method protected abstract removeNode(Lorg/dom4j/Node;)Z
.end method

.method public setProcessingInstructions(Ljava/util/List;)V
    .locals 3
    .parameter "listOfPIs"

    .prologue
    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    return-void

    .line 164
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/ProcessingInstruction;

    .line 165
    .local v1, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    goto :goto_0
.end method
