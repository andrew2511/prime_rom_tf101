.class public Lorg/dom4j/BackedListTest;
.super Lorg/dom4j/AbstractTestCase;
.source "BackedListTest.java"


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
    sget-object v0, Lorg/dom4j/BackedListTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.BackedListTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/BackedListTest;->class$0:Ljava/lang/Class;

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
.method protected mutate(Lorg/dom4j/Element;)V
    .locals 8
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 87
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 89
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    invoke-interface {p1}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, list:Ljava/util/List;
    const-string v4, "last"

    invoke-virtual {v0, v4}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v4, "first"

    invoke-virtual {v0, v4}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    invoke-interface {v1, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    invoke-interface {p1}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, list2:Ljava/util/List;
    const-string v4, "Both lists should contain same number of elements"

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 95
    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/BackedListTest;->assertTrue(Ljava/lang/String;Z)V

    .line 98
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;)V

    .line 100
    .local v3, writer:Lorg/dom4j/io/XMLWriter;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Element content is now: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/BackedListTest;->log(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    .line 102
    return-void

    .end local v3           #writer:Lorg/dom4j/io/XMLWriter;
    :cond_0
    move v5, v7

    .line 95
    goto :goto_0
.end method

.method public testAddRemove()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v4, p0, Lorg/dom4j/BackedListTest;->document:Lorg/dom4j/Document;

    const-string v5, "/root"

    invoke-interface {v4, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Element;

    .line 38
    .local v3, parentElement:Lorg/dom4j/Element;
    invoke-interface {v3}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, children:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .line 40
    .local v2, lastPos:I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 44
    .local v0, child:Lorg/dom4j/Element;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    invoke-static {}, Lorg/dom4j/BackedListTest;->fail()V
    :try_end_0
    .catch Lorg/dom4j/IllegalAddException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public testAddWithIndex()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 51
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    .line 53
    .local v1, factory:Lorg/dom4j/DocumentFactory;
    iget-object v3, p0, Lorg/dom4j/BackedListTest;->document:Lorg/dom4j/Document;

    const-string v4, "/root"

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 54
    .local v2, root:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, children:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v6, v3}, Lorg/dom4j/BackedListTest;->assertEquals(II)V

    .line 59
    const-string v3, "dummy1"

    invoke-virtual {v1, v3}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    invoke-interface {v2}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v0

    .line 62
    const/4 v3, 0x3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/dom4j/BackedListTest;->assertEquals(II)V

    .line 64
    const-string v3, "author"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v6, v3}, Lorg/dom4j/BackedListTest;->assertEquals(II)V

    .line 68
    const-string v3, "dummy2"

    invoke-virtual {v1, v3}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    invoke-interface {v2}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v0

    .line 72
    const/4 v3, 0x4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/dom4j/BackedListTest;->assertEquals(II)V

    .line 73
    const-string v3, "dummy1"

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/Node;

    invoke-interface {p0}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/BackedListTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "dummy2"

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/dom4j/Node;

    invoke-interface {p0}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/BackedListTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "dummy3"

    invoke-virtual {v1, v4}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    const-string v3, "author"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "dummy4"

    invoke-virtual {v1, v4}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public testXPaths()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v1, p0, Lorg/dom4j/BackedListTest;->document:Lorg/dom4j/Document;

    const-string v2, "/root"

    invoke-interface {v1, v2}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 31
    .local v0, element:Lorg/dom4j/Element;
    invoke-virtual {p0, v0}, Lorg/dom4j/BackedListTest;->mutate(Lorg/dom4j/Element;)V

    .line 32
    iget-object v1, p0, Lorg/dom4j/BackedListTest;->document:Lorg/dom4j/Document;

    const-string v2, "//author"

    invoke-interface {v1, v2}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    .end local v0           #element:Lorg/dom4j/Element;
    check-cast v0, Lorg/dom4j/Element;

    .line 33
    .restart local v0       #element:Lorg/dom4j/Element;
    invoke-virtual {p0, v0}, Lorg/dom4j/BackedListTest;->mutate(Lorg/dom4j/Element;)V

    .line 34
    return-void
.end method
