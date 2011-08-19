.class public Lorg/dom4j/SetContentTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SetContentTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 20
    sget-object v0, Lorg/dom4j/SetContentTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.SetContentTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/SetContentTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 21
    return-void

    .line 20
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 26
    iget-object v3, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    const-string v4, "doc1"

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 28
    iget-object v3, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 30
    .local v2, oldRoot:Lorg/dom4j/Element;
    const-string v3, "Current root has document"

    .line 31
    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    iget-object v5, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    if-ne v4, v5, :cond_0

    move v4, v7

    .line 30
    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 33
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 34
    .local v0, doc2:Lorg/dom4j/Document;
    const-string v3, "doc2"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 36
    const-string v3, "Doc2 has no root element"

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    if-nez v4, :cond_1

    move v4, v7

    :goto_1
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 38
    iget-object v3, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->setContent(Ljava/util/List;)V

    .line 40
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 42
    .local v1, newRoot:Lorg/dom4j/Element;
    const-string v3, "Current root has document"

    .line 43
    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    iget-object v5, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    if-ne v4, v5, :cond_2

    move v4, v7

    .line 42
    :goto_2
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 45
    const-string v3, "Doc2 has now has root element"

    if-eqz v1, :cond_3

    move v4, v7

    :goto_3
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 46
    const-string v3, "Doc2 has different root element"

    if-eq v1, v2, :cond_4

    move v4, v7

    :goto_4
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 47
    const-string v3, "Root element now has document"

    .line 48
    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    if-ne v4, v0, :cond_5

    move v4, v7

    .line 47
    :goto_5
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 50
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/SetContentTest;->testParent(Lorg/dom4j/Branch;)V

    .line 51
    invoke-virtual {p0, v0, v0}, Lorg/dom4j/SetContentTest;->testDocument(Lorg/dom4j/Branch;Lorg/dom4j/Document;)V

    .line 53
    invoke-interface {v0}, Lorg/dom4j/Document;->clearContent()V

    .line 55
    const-string v3, "New Doc has no root"

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v7

    :goto_6
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 56
    const-string v3, "New root has no document"

    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v7

    :goto_7
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 57
    return-void

    .end local v0           #doc2:Lorg/dom4j/Document;
    .end local v1           #newRoot:Lorg/dom4j/Element;
    :cond_0
    move v4, v6

    .line 31
    goto :goto_0

    .restart local v0       #doc2:Lorg/dom4j/Document;
    :cond_1
    move v4, v6

    .line 36
    goto :goto_1

    .restart local v1       #newRoot:Lorg/dom4j/Element;
    :cond_2
    move v4, v6

    .line 43
    goto :goto_2

    :cond_3
    move v4, v6

    .line 45
    goto :goto_3

    :cond_4
    move v4, v6

    .line 46
    goto :goto_4

    :cond_5
    move v4, v6

    .line 48
    goto :goto_5

    :cond_6
    move v4, v6

    .line 55
    goto :goto_6

    :cond_7
    move v4, v6

    .line 56
    goto :goto_7
.end method

.method protected testDocument(Lorg/dom4j/Branch;Lorg/dom4j/Document;)V
    .locals 5
    .parameter "branch"
    .parameter "doc"

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 107
    return-void

    .line 104
    :cond_0
    invoke-interface {p1, v0}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 105
    .local v1, node:Lorg/dom4j/Node;
    const-string v3, "Node has correct document"

    invoke-interface {v1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    if-ne v4, p2, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected testParent(Lorg/dom4j/Branch;)V
    .locals 5
    .parameter "parent"

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 92
    return-void

    .line 88
    :cond_0
    invoke-interface {p1, v0}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 89
    .local v1, node:Lorg/dom4j/Node;
    const-string v3, "Child node of root has parent of root"

    .line 90
    invoke-interface {v1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    .line 89
    if-ne v4, p1, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public testRootElement()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 61
    .local v0, doc3:Lorg/dom4j/Document;
    const-string v3, "doc3"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 63
    const-string v3, "root"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 64
    .local v2, root:Lorg/dom4j/Element;
    const-string v3, "old"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 66
    .local v1, oldElement:Lorg/dom4j/Element;
    const-string v3, "Doc3 has root element"

    if-eqz v2, :cond_0

    move v4, v6

    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 68
    iget-object v3, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->setContent(Ljava/util/List;)V

    .line 70
    const-string v3, "Doc3\'s root now has content"

    invoke-interface {v2}, Lorg/dom4j/Element;->nodeCount()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 71
    const-string v3, "Old element has no parent now"

    .line 72
    invoke-interface {v1}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v6

    .line 71
    :goto_2
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 73
    const-string v3, "Old element has no document now"

    .line 74
    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    if-nez v4, :cond_3

    move v4, v6

    .line 73
    :goto_3
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p0, v2}, Lorg/dom4j/SetContentTest;->testParent(Lorg/dom4j/Branch;)V

    .line 77
    invoke-virtual {p0, v2, v0}, Lorg/dom4j/SetContentTest;->testDocument(Lorg/dom4j/Branch;Lorg/dom4j/Document;)V

    .line 78
    return-void

    :cond_0
    move v4, v5

    .line 66
    goto :goto_0

    :cond_1
    move v4, v5

    .line 70
    goto :goto_1

    :cond_2
    move v4, v5

    .line 72
    goto :goto_2

    :cond_3
    move v4, v5

    .line 74
    goto :goto_3
.end method
