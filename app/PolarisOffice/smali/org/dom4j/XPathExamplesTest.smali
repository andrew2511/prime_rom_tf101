.class public Lorg/dom4j/XPathExamplesTest;
.super Lorg/dom4j/AbstractTestCase;
.source "XPathExamplesTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field protected factory:Lorg/dom4j/DocumentFactory;

.field protected testContext:Lorg/dom4j/Node;

.field protected testDocument:Lorg/dom4j/Document;

.field protected xmlReader:Lorg/dom4j/io/SAXReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 25
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    iput-object v0, p0, Lorg/dom4j/XPathExamplesTest;->xmlReader:Lorg/dom4j/io/SAXReader;

    .line 34
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/XPathExamplesTest;->factory:Lorg/dom4j/DocumentFactory;

    .line 24
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 37
    sget-object v0, Lorg/dom4j/XPathExamplesTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.XPathExamplesTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/XPathExamplesTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 38
    return-void

    .line 37
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected runTest(Lorg/dom4j/Element;Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .locals 15
    .parameter "documentTest"
    .parameter "context"
    .parameter "test"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const-string v13, "select"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, xpath:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    const-string v14, "Path: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, description:Ljava/lang/String;
    const-string v13, "exception"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, exception:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v13, "true"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 125
    :try_start_0
    iget-object v13, p0, Lorg/dom4j/XPathExamplesTest;->testContext:Lorg/dom4j/Node;

    invoke-interface {v13, v12}, Lorg/dom4j/Node;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    .line 126
    const-string v13, "Exception was not thrown"

    invoke-static {v13}, Lorg/dom4j/XPathExamplesTest;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/dom4j/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    const-string v13, "count"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, count:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 136
    .local v7, expectedSize:I
    iget-object v13, p0, Lorg/dom4j/XPathExamplesTest;->testContext:Lorg/dom4j/Node;

    invoke-interface {v13, v12}, Lorg/dom4j/Node;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 138
    .local v10, results:Ljava/util/List;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v14, " found result size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    .line 140
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v14, " wrong result size"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 141
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    .line 140
    invoke-static {v13, v7, v14}, Lorg/dom4j/XPathExamplesTest;->assertEquals(Ljava/lang/String;II)V

    .line 144
    .end local v7           #expectedSize:I
    .end local v10           #results:Ljava/util/List;
    :cond_1
    const-string v13, "valueOf"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v11

    .line 146
    .local v11, valueOf:Lorg/dom4j/Element;
    if-eqz v11, :cond_2

    .line 147
    iget-object v13, p0, Lorg/dom4j/XPathExamplesTest;->testContext:Lorg/dom4j/Node;

    invoke-interface {v13, v12}, Lorg/dom4j/Node;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v8

    .line 148
    .local v8, node:Lorg/dom4j/Node;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v14, " found node"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v8, :cond_3

    const/4 v14, 0x1

    :goto_0
    invoke-static {v13, v14}, Lorg/dom4j/XPathExamplesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 150
    invoke-interface {v11}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, expected:Ljava/lang/String;
    const-string v13, "select"

    invoke-interface {v11, v13}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Lorg/dom4j/Node;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 153
    .local v9, result:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    .line 154
    new-instance v13, Ljava/lang/StringBuffer;

    const-string v14, "\texpected: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, " result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    .line 156
    invoke-static {v3, v6, v9}, Lorg/dom4j/XPathExamplesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v2           #count:Ljava/lang/String;
    .end local v6           #expected:Ljava/lang/String;
    .end local v8           #node:Lorg/dom4j/Node;
    .end local v9           #result:Ljava/lang/String;
    .end local v11           #valueOf:Lorg/dom4j/Element;
    :cond_2
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v13

    move-object v4, v13

    .line 128
    .local v4, e:Lorg/dom4j/XPathException;
    goto :goto_1

    .line 148
    .end local v4           #e:Lorg/dom4j/XPathException;
    .restart local v2       #count:Ljava/lang/String;
    .restart local v8       #node:Lorg/dom4j/Node;
    .restart local v11       #valueOf:Lorg/dom4j/Element;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0
.end method

.method protected runTests(Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .locals 7
    .parameter "documentTest"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    const-string v6, "test"

    invoke-interface {p2, v6}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 98
    const-string v6, "valueOf"

    invoke-interface {p2, v6}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 103
    const-string v6, "pattern"

    invoke-interface {p2, v6}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    const-string v6, "fileter"

    invoke-interface {p2, v6}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 110
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 114
    return-void

    .line 94
    .end local v1           #it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/dom4j/Element;

    .line 95
    .local v4, test:Lorg/dom4j/Element;
    invoke-virtual {p0, p1, p2, v4}, Lorg/dom4j/XPathExamplesTest;->runTest(Lorg/dom4j/Element;Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    goto :goto_0

    .line 99
    .end local v4           #test:Lorg/dom4j/Element;
    .restart local v1       #it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/dom4j/Element;

    .line 100
    .local v5, valueOf:Lorg/dom4j/Element;
    invoke-virtual {p0, p1, p2, v5}, Lorg/dom4j/XPathExamplesTest;->testValueOf(Lorg/dom4j/Element;Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    goto :goto_1

    .line 104
    .end local v5           #valueOf:Lorg/dom4j/Element;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Element;

    .line 105
    .local v3, pattern:Lorg/dom4j/Element;
    invoke-virtual {p0, p1, p2, v3}, Lorg/dom4j/XPathExamplesTest;->testPattern(Lorg/dom4j/Element;Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    goto :goto_2

    .line 111
    .end local v3           #pattern:Lorg/dom4j/Element;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 112
    .local v0, filter:Lorg/dom4j/Element;
    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/XPathExamplesTest;->testFilter(Lorg/dom4j/Element;Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    goto :goto_3
.end method

.method protected testContext(Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .locals 6
    .parameter "documentTest"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    const-string v4, "select"

    invoke-interface {p2, v4}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, xpath:Ljava/lang/String;
    iget-object v4, p0, Lorg/dom4j/XPathExamplesTest;->testDocument:Lorg/dom4j/Document;

    invoke-interface {v4, v3}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, list:Ljava/util/List;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Found at least one context nodes to test for path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    .line 76
    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/XPathExamplesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    return-void

    .line 77
    .end local v0           #iter:Ljava/util/Iterator;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 80
    .restart local v0       #iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, object:Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Context node is a Node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    instance-of v5, v2, Lorg/dom4j/Node;

    .line 81
    invoke-static {v4, v5}, Lorg/dom4j/XPathExamplesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 83
    check-cast v2, Lorg/dom4j/Node;

    .end local v2           #object:Ljava/lang/Object;
    iput-object v2, p0, Lorg/dom4j/XPathExamplesTest;->testContext:Lorg/dom4j/Node;

    .line 85
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Context is now: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/dom4j/XPathExamplesTest;->testContext:Lorg/dom4j/Node;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/XPathExamplesTest;->runTests(Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    .line 87
    const-string v4, ""

    invoke-virtual {p0, v4}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected testDocument(Lorg/dom4j/Element;)V
    .locals 5
    .parameter "documentTest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const-string v3, "url"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lorg/dom4j/XPathExamplesTest;->xmlReader:Lorg/dom4j/io/SAXReader;

    invoke-virtual {p0, v2}, Lorg/dom4j/XPathExamplesTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v3

    iput-object v3, p0, Lorg/dom4j/XPathExamplesTest;->testDocument:Lorg/dom4j/Document;

    .line 59
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Loaded test document: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/dom4j/XPathExamplesTest;->testDocument:Lorg/dom4j/Document;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/XPathExamplesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 61
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Loaded document: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    .line 63
    const-string v3, "context"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 63
    if-nez v3, :cond_1

    .line 68
    return-void

    .line 59
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 65
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 66
    .local v0, context:Lorg/dom4j/Element;
    invoke-virtual {p0, p1, v0}, Lorg/dom4j/XPathExamplesTest;->testContext(Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    goto :goto_1
.end method

.method protected testFilter(Lorg/dom4j/Element;Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .locals 4
    .parameter "documentTest"
    .parameter "context"
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    const-string v2, "match"

    invoke-interface {p3, v2}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, match:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "match: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, description:Ljava/lang/String;
    iget-object v2, p0, Lorg/dom4j/XPathExamplesTest;->testContext:Lorg/dom4j/Node;

    invoke-interface {v2, v1}, Lorg/dom4j/Node;->matches(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lorg/dom4j/XPathExamplesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method protected testPattern(Lorg/dom4j/Element;Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .locals 5
    .parameter "documentTest"
    .parameter "context"
    .parameter "patternElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    const-string v3, "match"

    invoke-interface {p3, v3}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, match:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "match: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, description:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {p0, v3}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v0}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lorg/dom4j/XPathExamplesTest;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v3, v1}, Lorg/dom4j/DocumentFactory;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object v2

    .line 184
    .local v2, pattern:Lorg/dom4j/rule/Pattern;
    iget-object v3, p0, Lorg/dom4j/XPathExamplesTest;->testContext:Lorg/dom4j/Node;

    invoke-interface {v2, v3}, Lorg/dom4j/rule/Pattern;->matches(Lorg/dom4j/Node;)Z

    move-result v3

    invoke-static {v0, v3}, Lorg/dom4j/XPathExamplesTest;->assertTrue(Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method protected testValueOf(Lorg/dom4j/Element;Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .locals 6
    .parameter "documentTest"
    .parameter "context"
    .parameter "valueOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    const-string v4, "select"

    invoke-interface {p3, v4}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, xpath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "valueOf: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, description:Ljava/lang/String;
    invoke-interface {p3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, expected:Ljava/lang/String;
    iget-object v4, p0, Lorg/dom4j/XPathExamplesTest;->testContext:Lorg/dom4j/Node;

    invoke-interface {v4, v3}, Lorg/dom4j/Node;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    .line 169
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "\texpected: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/XPathExamplesTest;->log(Ljava/lang/String;)V

    .line 171
    invoke-static {v0, v1, v2}, Lorg/dom4j/XPathExamplesTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public testXPaths()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const-string v4, "/xml/test/xpath/tests.xml"

    invoke-virtual {p0, v4}, Lorg/dom4j/XPathExamplesTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 44
    .local v0, document:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 46
    .local v3, root:Lorg/dom4j/Element;
    const-string v4, "document"

    invoke-interface {v3, v4}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 48
    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    return-void

    .line 49
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 50
    .local v1, documentTest:Lorg/dom4j/Element;
    invoke-virtual {p0, v1}, Lorg/dom4j/XPathExamplesTest;->testDocument(Lorg/dom4j/Element;)V

    goto :goto_0
.end method
