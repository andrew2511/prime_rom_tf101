.class public Lorg/dom4j/util/AttributeHelper;
.super Ljava/lang/Object;
.source "AttributeHelper.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected static booleanValue(Lorg/dom4j/Attribute;)Z
    .locals 5
    .parameter "attribute"

    .prologue
    const/4 v3, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v3

    .line 40
    :cond_1
    invoke-interface {p0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 42
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 44
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 45
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 47
    .local v1, b:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 49
    .end local v1           #b:Ljava/lang/Boolean;
    :cond_2
    const-string v3, "true"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public static booleanValue(Lorg/dom4j/Element;Ljava/lang/String;)Z
    .locals 1
    .parameter "element"
    .parameter "attributeName"

    .prologue
    .line 28
    invoke-interface {p0, p1}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/util/AttributeHelper;->booleanValue(Lorg/dom4j/Attribute;)Z

    move-result v0

    return v0
.end method

.method public static booleanValue(Lorg/dom4j/Element;Lorg/dom4j/QName;)Z
    .locals 1
    .parameter "element"
    .parameter "attributeQName"

    .prologue
    .line 32
    invoke-interface {p0, p1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/util/AttributeHelper;->booleanValue(Lorg/dom4j/Attribute;)Z

    move-result v0

    return v0
.end method
