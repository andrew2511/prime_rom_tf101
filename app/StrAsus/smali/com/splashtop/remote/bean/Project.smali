.class public Lcom/splashtop/remote/bean/Project;
.super Ljava/lang/Object;
.source "Project.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4e1ae060286d5f85L


# instance fields
.field private category:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private platform:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/Platform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/bean/Project;->platform:Ljava/util/List;

    .line 21
    invoke-direct {p0, p1}, Lcom/splashtop/remote/bean/Project;->init(Lorg/w3c/dom/Element;)V

    .line 22
    return-void
.end method

.method private init(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "element"

    .prologue
    .line 30
    const-string v2, "code"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/bean/Project;->code:Ljava/lang/String;

    .line 31
    const-string v2, "category"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/bean/Project;->category:Ljava/lang/String;

    .line 32
    const-string v2, "lang"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/bean/Project;->lang:Ljava/lang/String;

    .line 33
    const-string v2, "platform"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 34
    .local v1, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/splashtop/remote/bean/Project;->platform:Ljava/util/List;

    new-instance v3, Lcom/splashtop/remote/bean/Platform;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/splashtop/remote/bean/Platform;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/splashtop/remote/bean/Project;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/splashtop/remote/bean/Project;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/splashtop/remote/bean/Project;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/splashtop/remote/bean/Platform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/splashtop/remote/bean/Project;->platform:Ljava/util/List;

    return-object v0
.end method

.method public setValue(Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "attributes"

    .prologue
    .line 25
    const-string v0, "code"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/bean/Project;->code:Ljava/lang/String;

    .line 26
    const-string v0, "category"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/bean/Project;->category:Ljava/lang/String;

    .line 27
    return-void
.end method
