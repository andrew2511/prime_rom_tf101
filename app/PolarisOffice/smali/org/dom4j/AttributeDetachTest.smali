.class public Lorg/dom4j/AttributeDetachTest;
.super Lorg/dom4j/AbstractTestCase;
.source "AttributeDetachTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 23
    sget-object v0, Lorg/dom4j/AttributeDetachTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.AttributeDetachTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/AttributeDetachTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 24
    return-void

    .line 23
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testDetachAttribute()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 29
    iget-object v8, p0, Lorg/dom4j/AttributeDetachTest;->document:Lorg/dom4j/Document;

    const-string v9, "//@name"

    invoke-interface {v8, v9}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 31
    .local v2, attributes:Ljava/util/List;
    const-string v8, "Found more than one attribute: "

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    move v9, v11

    :goto_0
    invoke-static {v8, v9}, Lorg/dom4j/AttributeDetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 59
    return-void

    .end local v4           #iter:Ljava/util/Iterator;
    :cond_0
    move v9, v10

    .line 31
    goto :goto_0

    .line 34
    .restart local v4       #iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 35
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    .line 37
    .local v3, element:Lorg/dom4j/Element;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Attribute: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " has parent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v9

    if-ne v9, v3, :cond_2

    move v9, v11

    .line 37
    :goto_2
    invoke-static {v8, v9}, Lorg/dom4j/AttributeDetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 40
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    .line 42
    .local v5, qname:Lorg/dom4j/QName;
    invoke-interface {v3, v5}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 44
    .local v1, attribute2:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, value:Ljava/lang/String;
    invoke-interface {v3, v5}, Lorg/dom4j/Element;->attributeValue(Lorg/dom4j/QName;)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, value2:Ljava/lang/String;
    const-string v8, "Attribute and Element have same attrbute value"

    invoke-static {v8, v6, v7}, Lorg/dom4j/AttributeDetachTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v0}, Lorg/dom4j/Attribute;->detach()Lorg/dom4j/Node;

    .line 52
    invoke-interface {v3, v5}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 53
    invoke-interface {v3, v5}, Lorg/dom4j/Element;->attributeValue(Lorg/dom4j/QName;)Ljava/lang/String;

    move-result-object v7

    .line 55
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Element now has no value: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_3

    move v9, v11

    :goto_3
    invoke-static {v8, v9}, Lorg/dom4j/AttributeDetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 56
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Element now has no attribute: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 57
    if-nez v1, :cond_4

    move v9, v11

    .line 56
    :goto_4
    invoke-static {v8, v9}, Lorg/dom4j/AttributeDetachTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v1           #attribute2:Lorg/dom4j/Attribute;
    .end local v5           #qname:Lorg/dom4j/QName;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #value2:Ljava/lang/String;
    :cond_2
    move v9, v10

    .line 38
    goto :goto_2

    .restart local v1       #attribute2:Lorg/dom4j/Attribute;
    .restart local v5       #qname:Lorg/dom4j/QName;
    .restart local v6       #value:Ljava/lang/String;
    .restart local v7       #value2:Ljava/lang/String;
    :cond_3
    move v9, v10

    .line 55
    goto :goto_3

    :cond_4
    move v9, v10

    .line 57
    goto :goto_4
.end method
