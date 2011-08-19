.class Lorg/dom4j/dom/DOMNodeHelper$1;
.super Ljava/lang/Object;
.source "DOMNodeHelper.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private final val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/dom4j/dom/DOMNodeHelper$1;->val$list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/dom4j/dom/DOMNodeHelper$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMNodeHelper$1;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 424
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/dom4j/dom/DOMNodeHelper$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/Node;

    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method
