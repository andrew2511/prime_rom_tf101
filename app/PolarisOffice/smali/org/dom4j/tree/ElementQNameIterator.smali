.class public Lorg/dom4j/tree/ElementQNameIterator;
.super Lorg/dom4j/tree/FilterIterator;
.source "ElementQNameIterator.java"


# instance fields
.field private qName:Lorg/dom4j/QName;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/dom4j/QName;)V
    .locals 0
    .parameter "proxy"
    .parameter "qName"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    .line 32
    iput-object p2, p0, Lorg/dom4j/tree/ElementQNameIterator;->qName:Lorg/dom4j/QName;

    .line 33
    return-void
.end method


# virtual methods
.method protected matches(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    .line 45
    instance-of v2, p1, Lorg/dom4j/Element;

    if-eqz v2, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 48
    .local v1, element:Lorg/dom4j/Element;
    iget-object v2, p0, Lorg/dom4j/tree/ElementQNameIterator;->qName:Lorg/dom4j/QName;

    invoke-interface {v1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 51
    .end local v1           #element:Lorg/dom4j/Element;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
