.class public Lorg/dom4j/datatype/AbstractDataTypeTestCase;
.super Lorg/dom4j/AbstractTestCase;
.source "AbstractDataTypeTestCase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected testDataType(Lorg/dom4j/Node;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .parameter "node"
    .parameter "data"
    .parameter "type"

    .prologue
    .line 50
    const-string v0, "Data object is not null"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Data object is of the correct type. Expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " and found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 52
    invoke-static {v0, v1}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 55
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected testNodes(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 9
    .parameter "xpath"
    .parameter "type"

    .prologue
    const/4 v8, 0x0

    .line 29
    iget-object v6, p0, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->document:Lorg/dom4j/Document;

    invoke-interface {v6, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 31
    .local v4, list:Ljava/util/List;
    const-string v6, "Results are not empty"

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    :goto_0
    invoke-static {v6, v7}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 33
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 47
    return-void

    .line 31
    .end local v3           #iter:Ljava/util/Iterator;
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 34
    .restart local v3       #iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/dom4j/Node;

    .line 36
    .local v5, node:Lorg/dom4j/Node;
    instance-of v6, v5, Lorg/dom4j/Element;

    if-eqz v6, :cond_2

    .line 37
    move-object v0, v5

    check-cast v0, Lorg/dom4j/Element;

    move-object v2, v0

    .line 38
    .local v2, element:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v2, v6, p2}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->testDataType(Lorg/dom4j/Node;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 39
    .end local v2           #element:Lorg/dom4j/Element;
    :cond_2
    instance-of v6, v5, Lorg/dom4j/Attribute;

    if-eqz v6, :cond_3

    .line 40
    move-object v0, v5

    check-cast v0, Lorg/dom4j/Attribute;

    move-object v1, v0

    .line 41
    .local v1, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v1, v6, p2}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->testDataType(Lorg/dom4j/Node;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 43
    .end local v1           #attribute:Lorg/dom4j/Attribute;
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Did not find an attribute or element: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_1
.end method
