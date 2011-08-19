.class public Lorg/dom4j/CloneTest;
.super Lorg/dom4j/AbstractTestCase;
.source "CloneTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field private comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 25
    new-instance v0, Lorg/dom4j/util/NodeComparator;

    invoke-direct {v0}, Lorg/dom4j/util/NodeComparator;-><init>()V

    iput-object v0, p0, Lorg/dom4j/CloneTest;->comparator:Ljava/util/Comparator;

    .line 24
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 28
    sget-object v0, Lorg/dom4j/CloneTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.CloneTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/CloneTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 29
    return-void

    .line 28
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testAddCloneToOtherElement()V
    .locals 9

    .prologue
    .line 66
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v3

    .line 67
    .local v3, factory:Lorg/dom4j/DocumentFactory;
    invoke-virtual {v3}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v2

    .line 68
    .local v2, doc:Lorg/dom4j/Document;
    const-string v7, "root"

    invoke-interface {v2, v7}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 69
    .local v6, root:Lorg/dom4j/Element;
    const-string v7, "parent"

    invoke-interface {v6, v7}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 70
    .local v4, parent1:Lorg/dom4j/Element;
    const-string v7, "child"

    invoke-interface {v4, v7}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 72
    .local v0, child1:Lorg/dom4j/Element;
    invoke-interface {v4}, Lorg/dom4j/Element;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/dom4j/Element;

    .line 73
    .local v5, parent2:Lorg/dom4j/Element;
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 75
    const-string v7, "parent not correct"

    invoke-interface {v5}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lorg/dom4j/CloneTest;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    const-string v7, "document not correct"

    invoke-interface {v5}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v8

    invoke-static {v7, v2, v8}, Lorg/dom4j/CloneTest;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    const-string v7, "child"

    invoke-interface {v5, v7}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 80
    .local v1, child2:Lorg/dom4j/Element;
    const-string v7, "child not cloned"

    invoke-static {v7, v0, v1}, Lorg/dom4j/CloneTest;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    const-string v7, "parent not correct"

    invoke-interface {v1}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v8

    invoke-static {v7, v5, v8}, Lorg/dom4j/CloneTest;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    const-string v7, "document not correct"

    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v8

    invoke-static {v7, v2, v8}, Lorg/dom4j/CloneTest;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public testAuthorCompare1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v2, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v2}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Document;

    .line 114
    .local v1, doc2:Lorg/dom4j/Document;
    const-string v2, "//author"

    invoke-interface {v1, v2}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 115
    .local v0, author:Lorg/dom4j/Element;
    const-string v2, "name"

    const-string v3, "James Strachan"

    invoke-interface {v0, v2, v3}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 117
    const-string v2, "Documents are not equal"

    .line 118
    iget-object v3, p0, Lorg/dom4j/CloneTest;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 117
    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v3}, Lorg/dom4j/CloneTest;->assertTrue(Ljava/lang/String;Z)V

    .line 119
    return-void

    .line 117
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public testAuthorCompare2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v2, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v2}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Document;

    .line 123
    .local v1, doc2:Lorg/dom4j/Document;
    const-string v2, "//author"

    invoke-interface {v1, v2}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 125
    .local v0, author:Lorg/dom4j/Element;
    const-string v2, "foo"

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 127
    const-string v2, "Documents are not equal"

    .line 128
    iget-object v3, p0, Lorg/dom4j/CloneTest;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 127
    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v3}, Lorg/dom4j/CloneTest;->assertTrue(Ljava/lang/String;Z)V

    .line 129
    return-void

    .line 127
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public testAuthorElementClone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    const-string v1, "//author"

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, v0}, Lorg/dom4j/CloneTest;->testElementClone(Lorg/dom4j/Element;)V

    .line 91
    return-void
.end method

.method public testBug1148333()V
    .locals 6

    .prologue
    .line 35
    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v3

    .line 34
    check-cast v3, Lorg/dom4j/dom/DOMDocumentFactory;

    .line 36
    .local v3, factory:Lorg/dom4j/dom/DOMDocumentFactory;
    invoke-virtual {v3}, Lorg/dom4j/dom/DOMDocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    check-cast v1, Lorg/dom4j/dom/DOMDocument;

    .line 37
    .local v1, doc:Lorg/dom4j/dom/DOMDocument;
    const-string v4, "root"

    invoke-virtual {v1, v4}, Lorg/dom4j/dom/DOMDocument;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 38
    .local v2, el:Lorg/dom4j/Element;
    const-string v4, "pref2"

    const-string v5, "uri2"

    invoke-interface {v2, v4, v5}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 40
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/dom4j/dom/DOMDocument;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dom/DOMDocument;

    .line 42
    .local v0, clone:Lorg/dom4j/dom/DOMDocument;
    invoke-static {v1, v0}, Lorg/dom4j/CloneTest;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/CloneTest;->assertNodesEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 44
    return-void
.end method

.method public testDocumentClone()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    const-string v2, "doc1"

    invoke-interface {v1, v2}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v1}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    .line 61
    .local v0, doc2:Lorg/dom4j/Document;
    iget-object v1, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-static {v1, v0}, Lorg/dom4j/CloneTest;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/CloneTest;->assertNodesEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 63
    return-void
.end method

.method protected testElementClone(Lorg/dom4j/Element;)V
    .locals 5
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-interface {p1}, Lorg/dom4j/Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 134
    .local v0, element2:Lorg/dom4j/Element;
    const-string v1, "Returned a new Element"

    if-eq v0, p1, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Lorg/dom4j/CloneTest;->assertTrue(Ljava/lang/String;Z)V

    .line 135
    const-string v1, "New element has no parent"

    invoke-interface {v0}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/dom4j/CloneTest;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v1, "New element has no Document"

    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/dom4j/CloneTest;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v1, "Element fragments are equal"

    iget-object v2, p0, Lorg/dom4j/CloneTest;->comparator:Ljava/util/Comparator;

    .line 139
    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 138
    :goto_1
    invoke-static {v1, v2}, Lorg/dom4j/CloneTest;->assertTrue(Ljava/lang/String;Z)V

    .line 140
    return-void

    :cond_0
    move v2, v3

    .line 134
    goto :goto_0

    :cond_1
    move v2, v3

    .line 139
    goto :goto_1
.end method

.method public testElementWithNamespaceClone()V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    .line 48
    const-string v3, "element"

    invoke-virtual {v2, v3}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 49
    .local v1, element:Lorg/dom4j/Element;
    const-string v2, "prefix"

    const-string v3, "uri"

    invoke-interface {v1, v2, v3}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 50
    invoke-interface {v1}, Lorg/dom4j/Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 52
    .local v0, clone:Lorg/dom4j/Element;
    invoke-static {v1, v0}, Lorg/dom4j/CloneTest;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/CloneTest;->assertNodesEqual(Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    .line 54
    return-void
.end method

.method public testRootCompare1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v2, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v2}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Document;

    .line 95
    .local v1, doc2:Lorg/dom4j/Document;
    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 96
    .local v0, author:Lorg/dom4j/Element;
    const-string v2, "foo"

    const-string v3, "bar"

    invoke-interface {v0, v2, v3}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 98
    const-string v2, "Documents are not equal"

    .line 99
    iget-object v3, p0, Lorg/dom4j/CloneTest;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 98
    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v3}, Lorg/dom4j/CloneTest;->assertTrue(Ljava/lang/String;Z)V

    .line 100
    return-void

    .line 98
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public testRootCompare2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v2, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v2}, Lorg/dom4j/Document;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Document;

    .line 104
    .local v1, doc2:Lorg/dom4j/Document;
    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 106
    .local v0, author:Lorg/dom4j/Element;
    const-string v2, "foo"

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 108
    const-string v2, "Documents are not equal"

    .line 109
    iget-object v3, p0, Lorg/dom4j/CloneTest;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 108
    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v3}, Lorg/dom4j/CloneTest;->assertTrue(Ljava/lang/String;Z)V

    .line 110
    return-void

    .line 108
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public testRootElementClone()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/dom4j/CloneTest;->document:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/CloneTest;->testElementClone(Lorg/dom4j/Element;)V

    .line 87
    return-void
.end method
