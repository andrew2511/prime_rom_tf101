.class public Lcom/newspaperdirect/pressreader/android/core/XmlHelper;
.super Ljava/lang/Object;
.source "XmlHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 71
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChildrensValues(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "node"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 37
    .local v1, element:Lorg/w3c/dom/Element;
    if-nez v1, :cond_0

    const/4 v6, 0x0

    .line 49
    :goto_0
    return-object v6

    .line 38
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 40
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 41
    .local v4, nodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 42
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_2

    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #nodes:Lorg/w3c/dom/NodeList;
    :cond_1
    move-object v6, v5

    .line 49
    goto :goto_0

    .line 43
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v4       #nodes:Lorg/w3c/dom/NodeList;
    :cond_2
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 44
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v0, Lorg/w3c/dom/Element;

    if-nez v6, :cond_4

    .line 42
    .end local v0           #child:Lorg/w3c/dom/Node;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    .restart local v0       #child:Lorg/w3c/dom/Node;
    :cond_4
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0           #child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static getElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 1
    .parameter "node"

    .prologue
    .line 75
    instance-of v0, p0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Lorg/w3c/dom/Document;

    .end local p0
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 77
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_1

    .line 78
    check-cast p0, Lorg/w3c/dom/Element;

    .end local p0
    move-object v0, p0

    goto :goto_0

    .line 79
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6
    .parameter "node"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 15
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 16
    .local v0, element:Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    move-object v4, v5

    .line 25
    :goto_0
    return-object v4

    .line 17
    :cond_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 18
    .local v3, nodes:Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v5

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v1, v4, :cond_3

    move-object v4, v5

    .line 25
    goto :goto_0

    .line 21
    :cond_3
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 22
    .local v2, innerNode:Lorg/w3c/dom/Node;
    instance-of v4, v2, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_4

    .line 23
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2           #innerNode:Lorg/w3c/dom/Node;
    move-object v4, v2

    goto :goto_0

    .line 20
    .restart local v2       #innerNode:Lorg/w3c/dom/Node;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getElementValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "node"
    .parameter "name"
    .parameter "defaulValue"

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 30
    .local v0, element:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 32
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getElementsMap(Lorg/w3c/dom/Node;)Ljava/util/HashMap;
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 54
    .local v1, element:Lorg/w3c/dom/Element;
    if-nez v1, :cond_0

    const/4 v8, 0x0

    .line 67
    :goto_0
    return-object v8

    .line 55
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v6, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v6

    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 58
    .local v5, nodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 59
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_2

    move-object v8, v6

    .line 67
    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 61
    .local v0, childNode:Lorg/w3c/dom/Node;
    instance-of v8, v0, Lorg/w3c/dom/Element;

    if-eqz v8, :cond_3

    .line 62
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, name:Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 64
    .local v7, value:Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v4           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    .restart local v4       #name:Ljava/lang/String;
    :cond_4
    const-string v8, ""

    move-object v7, v8

    goto :goto_2
.end method
