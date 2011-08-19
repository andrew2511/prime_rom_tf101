.class public Lorg/dom4j/AddAttributeTest;
.super Lorg/dom4j/AbstractTestCase;
.source "AddAttributeTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 19
    sget-object v0, Lorg/dom4j/AddAttributeTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.AddAttributeTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/AddAttributeTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 20
    return-void

    .line 19
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testAddAttributeNormalValue()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    const-string v3, "testAtt"

    .line 26
    .local v3, testAttributeName:Ljava/lang/String;
    const-string v4, "testValue"

    .line 28
    .local v4, testAttributeValue:Ljava/lang/String;
    iget-object v5, p0, Lorg/dom4j/AddAttributeTest;->document:Lorg/dom4j/Document;

    const-string v6, "//root/author[1]"

    invoke-interface {v5, v6}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    .line 30
    .local v2, authorNode:Lorg/dom4j/Node;
    instance-of v5, v2, Lorg/dom4j/Element;

    invoke-static {v5}, Lorg/dom4j/AddAttributeTest;->assertTrue(Z)V

    .line 32
    move-object v0, v2

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 33
    .local v1, authorEl:Lorg/dom4j/Element;
    invoke-interface {v1, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 35
    const/4 v5, 0x3

    invoke-interface {v1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v6

    invoke-static {v5, v6}, Lorg/dom4j/AddAttributeTest;->assertEquals(II)V

    .line 37
    invoke-interface {v1, v3}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-static {v4, v5}, Lorg/dom4j/AddAttributeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public testAddAttributeNullValue()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const-string v3, "location"

    .line 42
    .local v3, testAttributeName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 44
    .local v4, testAttributeValue:Ljava/lang/String;
    iget-object v5, p0, Lorg/dom4j/AddAttributeTest;->document:Lorg/dom4j/Document;

    const-string v6, "//root/author[1]"

    invoke-interface {v5, v6}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    .line 46
    .local v2, authorNode:Lorg/dom4j/Node;
    instance-of v5, v2, Lorg/dom4j/Element;

    invoke-static {v5}, Lorg/dom4j/AddAttributeTest;->assertTrue(Z)V

    .line 48
    move-object v0, v2

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 49
    .local v1, authorEl:Lorg/dom4j/Element;
    invoke-interface {v1, v3, v4}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 51
    const/4 v5, 0x1

    invoke-interface {v1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v6

    invoke-static {v5, v6}, Lorg/dom4j/AddAttributeTest;->assertEquals(II)V

    .line 52
    invoke-interface {v1, v3}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/dom4j/AddAttributeTest;->assertNull(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
