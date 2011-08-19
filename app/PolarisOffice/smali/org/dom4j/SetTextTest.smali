.class public Lorg/dom4j/SetTextTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SetTextTest.java"


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
    sget-object v0, Lorg/dom4j/SetTextTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.SetTextTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/SetTextTest;->class$0:Ljava/lang/Class;

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
.method public testSetText1()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string v1, "newURL"

    .line 32
    .local v1, newURL:Ljava/lang/String;
    iget-object v4, p0, Lorg/dom4j/SetTextTest;->document:Lorg/dom4j/Document;

    const-string v5, "//root/author[1]/url"

    invoke-interface {v4, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v3

    .line 33
    .local v3, urlNode:Lorg/dom4j/Node;
    invoke-interface {v3, v1}, Lorg/dom4j/Node;->setText(Ljava/lang/String;)V

    .line 35
    invoke-interface {v3}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/dom4j/SetTextTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    instance-of v4, v3, Lorg/dom4j/Element;

    invoke-static {v4}, Lorg/dom4j/SetTextTest;->assertTrue(Z)V

    .line 38
    move-object v0, v3

    check-cast v0, Lorg/dom4j/Element;

    move-object v2, v0

    .line 39
    .local v2, urlElement:Lorg/dom4j/Element;
    const/4 v4, 0x0

    invoke-interface {v2}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Lorg/dom4j/SetTextTest;->assertEquals(II)V

    .line 40
    return-void
.end method

.method public testSetText2()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const-string v2, "Strachem James"

    .line 45
    .local v2, newName:Ljava/lang/String;
    iget-object v4, p0, Lorg/dom4j/SetTextTest;->document:Lorg/dom4j/Document;

    const-string v5, "//root/author[1]"

    invoke-interface {v4, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v1

    .line 46
    .local v1, authorNode:Lorg/dom4j/Node;
    invoke-interface {v1, v2}, Lorg/dom4j/Node;->setText(Ljava/lang/String;)V

    .line 48
    invoke-interface {v1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/dom4j/SetTextTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    instance-of v4, v1, Lorg/dom4j/Element;

    invoke-static {v4}, Lorg/dom4j/SetTextTest;->assertTrue(Z)V

    .line 51
    move-object v0, v1

    check-cast v0, Lorg/dom4j/Element;

    move-object v3, v0

    .line 52
    .local v3, urlElement:Lorg/dom4j/Element;
    const/4 v4, 0x1

    invoke-interface {v3}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Lorg/dom4j/SetTextTest;->assertEquals(II)V

    .line 53
    return-void
.end method
