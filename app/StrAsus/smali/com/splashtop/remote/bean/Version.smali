.class public Lcom/splashtop/remote/bean/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x595dbe46840be97cL


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/Content;",
            ">;"
        }
    .end annotation
.end field

.field private from:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/bean/Version;->content:Ljava/util/List;

    .line 19
    invoke-direct {p0, p1}, Lcom/splashtop/remote/bean/Version;->init(Lorg/w3c/dom/Node;)V

    .line 20
    return-void
.end method

.method private init(Lorg/w3c/dom/Node;)V
    .locals 7
    .parameter "node"

    .prologue
    .line 23
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 24
    .local v3, nodeMap:Lorg/w3c/dom/NamedNodeMap;
    const-string v4, "from"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/splashtop/remote/bean/Version;->from:Ljava/lang/String;

    .line 25
    const-string v4, "to"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/splashtop/remote/bean/Version;->to:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 27
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 28
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 29
    .local v0, childNode:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 30
    iget-object v4, p0, Lcom/splashtop/remote/bean/Version;->content:Ljava/util/List;

    new-instance v5, Lcom/splashtop/remote/bean/Content;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/splashtop/remote/bean/Content;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0           #childNode:Lorg/w3c/dom/Node;
    :cond_1
    return-void
.end method


# virtual methods
.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/splashtop/remote/bean/Version;->content:Ljava/util/List;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/splashtop/remote/bean/Version;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/splashtop/remote/bean/Version;->to:Ljava/lang/String;

    return-object v0
.end method
