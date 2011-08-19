.class public Lorg/dom4j/tree/ElementNameIterator;
.super Lorg/dom4j/tree/FilterIterator;
.source "ElementNameIterator.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/String;)V
    .locals 0
    .parameter "proxy"
    .parameter "name"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    .line 31
    iput-object p2, p0, Lorg/dom4j/tree/ElementNameIterator;->name:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method protected matches(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    .line 44
    instance-of v2, p1, Lorg/dom4j/Element;

    if-eqz v2, :cond_0

    .line 45
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 47
    .local v1, element:Lorg/dom4j/Element;
    iget-object v2, p0, Lorg/dom4j/tree/ElementNameIterator;->name:Ljava/lang/String;

    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 50
    .end local v1           #element:Lorg/dom4j/Element;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
