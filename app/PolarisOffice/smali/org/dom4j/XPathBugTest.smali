.class public Lorg/dom4j/XPathBugTest;
.super Lorg/dom4j/AbstractTestCase;
.source "XPathBugTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 22
    sget-object v0, Lorg/dom4j/XPathBugTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.XPathBugTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/XPathBugTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 23
    return-void

    .line 22
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testMikeSkells()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v5

    .line 104
    .local v5, top:Lorg/dom4j/Document;
    const-string v6, "root"

    invoke-interface {v5, v6}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 105
    .local v2, root:Lorg/dom4j/Element;
    const-string v6, "child1"

    invoke-interface {v2, v6}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    const-string v7, "child11"

    invoke-interface {v6, v7}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 106
    const-string v6, "child2"

    invoke-interface {v2, v6}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    const-string v7, "child21"

    invoke-interface {v6, v7}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 107
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v5}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    const-string v6, "/root/child1/child11"

    invoke-interface {v5, v6}, Lorg/dom4j/Document;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v3

    .line 110
    .local v3, test1:Lorg/dom4j/XPath;
    const-string v6, "/root/child2/child21"

    invoke-interface {v5, v6}, Lorg/dom4j/Document;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v4

    .line 111
    .local v4, test2:Lorg/dom4j/XPath;
    invoke-interface {v3, v2}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v0

    .line 112
    .local v0, position1:Lorg/dom4j/Node;
    invoke-interface {v4, v2}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    .line 114
    .local v1, position2:Lorg/dom4j/Node;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "test1= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "test2= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Position1 Xpath = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/dom4j/Node;->getUniquePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Position2 Xpath = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/dom4j/Node;->getUniquePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "test2.matches(position1) : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-interface {v4, v0}, Lorg/dom4j/XPath;->matches(Lorg/dom4j/Node;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    const-string v6, "test1.matches(position1)"

    invoke-interface {v3, v0}, Lorg/dom4j/XPath;->matches(Lorg/dom4j/Node;)Z

    move-result v7

    invoke-static {v6, v7}, Lorg/dom4j/XPathBugTest;->assertTrue(Ljava/lang/String;Z)V

    .line 123
    const-string v6, "test2.matches(position2)"

    invoke-interface {v4, v1}, Lorg/dom4j/XPath;->matches(Lorg/dom4j/Node;)Z

    move-result v7

    invoke-static {v6, v7}, Lorg/dom4j/XPathBugTest;->assertTrue(Ljava/lang/String;Z)V

    .line 125
    const-string v6, "test2.matches(position1) should be false"

    .line 126
    invoke-interface {v4, v0}, Lorg/dom4j/XPath;->matches(Lorg/dom4j/Node;)Z

    move-result v7

    .line 125
    if-eqz v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-static {v6, v7}, Lorg/dom4j/XPathBugTest;->assertTrue(Ljava/lang/String;Z)V

    .line 127
    return-void

    .line 125
    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public testRobLebowitz()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const-string v6, "<ul>    <ul>        <li/>            <ul>                <li/>            </ul>        <li/>    </ul></ul>"

    .line 61
    .local v6, text:Ljava/lang/String;
    invoke-static {v6}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 62
    .local v1, document:Lorg/dom4j/Document;
    const-string v7, "//ul | //ol"

    invoke-interface {v1, v7}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 64
    .local v4, lists:Ljava/util/List;
    const/4 v0, 0x0

    .line 66
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 80
    return-void

    .line 67
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Element;

    .line 68
    .local v3, list:Lorg/dom4j/Element;
    const-string v7, "ancestor::ul"

    invoke-interface {v3, v7}, Lorg/dom4j/Element;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, nodes:Ljava/util/List;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_2
    const-string v7, "ancestor::ol"

    invoke-interface {v3, v7}, Lorg/dom4j/Element;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 76
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    goto :goto_1
.end method

.method public testStefan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    const-string v1, "<foo>hello</foo>"

    .line 91
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 92
    .local v0, document:Lorg/dom4j/Document;
    const-string v4, "/x"

    invoke-static {v4}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v3

    .line 93
    .local v3, xpath:Lorg/dom4j/XPath;
    invoke-interface {v3, v0}, Lorg/dom4j/XPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, value:Ljava/lang/Object;
    return-void
.end method

.method public testXPaths()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 28
    const-string v5, "/xml/rabo1ae.xml"

    invoke-virtual {p0, v5}, Lorg/dom4j/XPathBugTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 30
    .local v0, document:Lorg/dom4j/Document;
    const-string v5, "/m:Msg/m:Contents/m:Content"

    invoke-interface {v0, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v3

    .line 29
    check-cast v3, Lorg/dom4j/Element;

    .line 32
    .local v3, root:Lorg/dom4j/Element;
    const-string v5, "root is not null"

    if-eqz v3, :cond_0

    move v6, v9

    :goto_0
    invoke-static {v5, v6}, Lorg/dom4j/XPathBugTest;->assertTrue(Ljava/lang/String;Z)V

    .line 34
    const-string v5, "ab"

    invoke-interface {v3, v5}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v2

    .line 36
    .local v2, ns:Lorg/dom4j/Namespace;
    const-string v5, "Found namespace"

    if-eqz v2, :cond_1

    move v6, v9

    :goto_1
    invoke-static {v5, v6}, Lorg/dom4j/XPathBugTest;->assertTrue(Ljava/lang/String;Z)V

    .line 38
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Found: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    const-string v5, "ab:RaboPayLoad[@id=\'1234123\']"

    invoke-interface {v3, v5}, Lorg/dom4j/Element;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v1

    .line 40
    check-cast v1, Lorg/dom4j/Element;

    .line 43
    .local v1, element:Lorg/dom4j/Element;
    const-string v5, "element is not null"

    if-eqz v1, :cond_2

    move v6, v9

    :goto_2
    invoke-static {v5, v6}, Lorg/dom4j/XPathBugTest;->assertTrue(Ljava/lang/String;Z)V

    .line 45
    const-string v5, "ab:AccountingEntry/ab:RateType"

    invoke-interface {v1, v5}, Lorg/dom4j/Element;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, value:Ljava/lang/String;
    const-string v5, "RateType is correct"

    const-string v6, "CRRNT"

    invoke-static {v5, v6, v4}, Lorg/dom4j/XPathBugTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .end local v1           #element:Lorg/dom4j/Element;
    .end local v2           #ns:Lorg/dom4j/Namespace;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    move v6, v8

    .line 32
    goto :goto_0

    .restart local v2       #ns:Lorg/dom4j/Namespace;
    :cond_1
    move v6, v8

    .line 36
    goto :goto_1

    .restart local v1       #element:Lorg/dom4j/Element;
    :cond_2
    move v6, v8

    .line 43
    goto :goto_2
.end method
