.class public Lorg/dom4j/ParentTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ParentTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 24
    sget-object v0, Lorg/dom4j/ParentTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.ParentTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/ParentTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 25
    return-void

    .line 24
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lorg/dom4j/ParentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/ParentTest;->testParentRelationship(Lorg/dom4j/Element;)V

    .line 31
    return-void
.end method

.method public testFragment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    .line 35
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    const-string v4, "root"

    invoke-virtual {v0, v4}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 36
    .local v2, root:Lorg/dom4j/Element;
    const-string v4, "child"

    invoke-interface {v2, v4}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 37
    .local v1, first:Lorg/dom4j/Element;
    const-string v4, "child"

    invoke-interface {v2, v4}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 39
    .local v3, second:Lorg/dom4j/Element;
    invoke-virtual {p0, v2, v1}, Lorg/dom4j/ParentTest;->testXPathNode(Lorg/dom4j/Element;Lorg/dom4j/Node;)V

    .line 40
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/ParentTest;->testXPathNode(Lorg/dom4j/Element;Lorg/dom4j/Node;)V

    .line 41
    return-void
.end method

.method protected testParentRelationship(Lorg/dom4j/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 58
    invoke-interface {p1}, Lorg/dom4j/Element;->attributes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/ParentTest;->testParentRelationship(Lorg/dom4j/Element;Ljava/util/List;)V

    .line 59
    invoke-interface {p1}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/ParentTest;->testParentRelationship(Lorg/dom4j/Element;Ljava/util/List;)V

    .line 60
    return-void
.end method

.method protected testParentRelationship(Lorg/dom4j/Element;Ljava/util/List;)V
    .locals 4
    .parameter "parent"
    .parameter "content"

    .prologue
    .line 46
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    return-void

    .line 47
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 49
    .local v2, object:Ljava/lang/Object;
    instance-of v3, v2, Lorg/dom4j/Element;

    if-eqz v3, :cond_1

    .line 50
    move-object v0, v2

    check-cast v0, Lorg/dom4j/Element;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lorg/dom4j/ParentTest;->testParentRelationship(Lorg/dom4j/Element;)V

    .line 53
    :cond_1
    check-cast v2, Lorg/dom4j/Node;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lorg/dom4j/ParentTest;->testXPathNode(Lorg/dom4j/Element;Lorg/dom4j/Node;)V

    goto :goto_0
.end method

.method protected testXPathNode(Lorg/dom4j/Element;Lorg/dom4j/Node;)V
    .locals 5
    .parameter "parent"
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-interface {p2}, Lorg/dom4j/Node;->supportsParent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Node: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/ParentTest;->log(Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Parent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/ParentTest;->log(Ljava/lang/String;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "getParent(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/ParentTest;->log(Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "getParent() returns parent for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    .line 68
    if-ne v2, p1, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Lorg/dom4j/ParentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 78
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 68
    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {p2, p1}, Lorg/dom4j/Node;->asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;

    move-result-object v0

    .line 73
    .local v0, xpathNode:Lorg/dom4j/Node;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "XPath Node supports parent for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-interface {v0}, Lorg/dom4j/Node;->supportsParent()Z

    move-result v2

    .line 73
    invoke-static {v1, v2}, Lorg/dom4j/ParentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 75
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "getParent() returns parent for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-interface {v0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    if-ne v2, p1, :cond_2

    move v2, v4

    .line 75
    :goto_2
    invoke-static {v1, v2}, Lorg/dom4j/ParentTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 76
    goto :goto_2
.end method
