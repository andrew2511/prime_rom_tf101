.class public Lorg/dom4j/xpath/GetPathTest;
.super Lorg/dom4j/AbstractTestCase;
.source "GetPathTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 33
    sget-object v0, Lorg/dom4j/xpath/GetPathTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.GetPathTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/GetPathTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 34
    return-void

    .line 33
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected testBranchPath(Lorg/dom4j/Branch;)V
    .locals 5
    .parameter "branch"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/GetPathTest;->testNodePath(Lorg/dom4j/Node;)V

    .line 142
    instance-of v4, p1, Lorg/dom4j/Element;

    if-eqz v4, :cond_0

    .line 143
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v0

    .line 145
    .local v1, element:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    .end local v1           #element:Lorg/dom4j/Element;
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeIterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    return-void

    .line 146
    .restart local v1       #element:Lorg/dom4j/Element;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Node;

    .line 147
    .local v3, node:Lorg/dom4j/Node;
    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/GetPathTest;->testNodePath(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 152
    .end local v1           #element:Lorg/dom4j/Element;
    .end local v3           #node:Lorg/dom4j/Node;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Node;

    .line 154
    .restart local v3       #node:Lorg/dom4j/Node;
    instance-of v4, v3, Lorg/dom4j/Branch;

    if-eqz v4, :cond_3

    .line 155
    check-cast v3, Lorg/dom4j/Branch;

    .end local v3           #node:Lorg/dom4j/Node;
    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/GetPathTest;->testBranchPath(Lorg/dom4j/Branch;)V

    goto :goto_1

    .line 157
    .restart local v3       #node:Lorg/dom4j/Node;
    :cond_3
    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/GetPathTest;->testNodePath(Lorg/dom4j/Node;)V

    goto :goto_1
.end method

.method public testBug569927()V
    .locals 9

    .prologue
    .line 102
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v3

    .line 103
    .local v3, doc:Lorg/dom4j/Document;
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v5

    const-string v6, "a"

    const-string v7, "ns"

    .line 104
    const-string v8, "uri://myuri"

    .line 103
    invoke-virtual {v5, v6, v7, v8}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v4

    .line 105
    .local v4, elName:Lorg/dom4j/QName;
    invoke-interface {v3, v4}, Lorg/dom4j/Document;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 106
    .local v0, a:Lorg/dom4j/Element;
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v5

    const-string v6, "attribute"

    .line 107
    const-string v7, "ns"

    const-string v8, "uri://myuri"

    .line 106
    invoke-virtual {v5, v6, v7, v8}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v2

    .line 108
    .local v2, attName:Lorg/dom4j/QName;
    const-string v5, "test"

    invoke-interface {v0, v2, v5}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 110
    invoke-interface {v0, v2}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 112
    .local v1, att:Lorg/dom4j/Attribute;
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/dom4j/xpath/GetPathTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getUniquePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/dom4j/xpath/GetPathTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public testBug770410()V
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v3

    .line 91
    .local v3, doc:Lorg/dom4j/Document;
    const-string v5, "a"

    invoke-interface {v3, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 92
    .local v0, a:Lorg/dom4j/Element;
    const-string v5, "b"

    invoke-interface {v0, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 93
    .local v1, b:Lorg/dom4j/Element;
    const-string v5, "c"

    invoke-interface {v1, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 95
    .local v2, c:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 97
    invoke-interface {v1, v1}, Lorg/dom4j/Element;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, relativePath:Ljava/lang/String;
    invoke-interface {v1, v4}, Lorg/dom4j/Element;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/dom4j/xpath/GetPathTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public testDefaultNamespace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    const-string v3, "/xml/test/defaultNamespace.xml"

    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/GetPathTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 81
    .local v1, doc:Lorg/dom4j/Document;
    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 82
    .local v2, root:Lorg/dom4j/Element;
    const-string v3, "/*[name()=\'a\']"

    invoke-virtual {p0, v2, v3}, Lorg/dom4j/xpath/GetPathTest;->testPath(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 84
    invoke-interface {v2}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 85
    .local v0, child:Lorg/dom4j/Element;
    const-string v3, "/*[name()=\'a\']/*[name()=\'b\']"

    invoke-virtual {p0, v0, v3}, Lorg/dom4j/xpath/GetPathTest;->testPath(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 86
    const-string v3, "*[name()=\'b\']"

    invoke-virtual {p0, v2, v0, v3}, Lorg/dom4j/xpath/GetPathTest;->testRelativePath(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public testGetPath()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    const-string v11, "Testing paths"

    invoke-virtual {p0, v11}, Lorg/dom4j/xpath/GetPathTest;->log(Ljava/lang/String;)V

    .line 42
    iget-object v11, p0, Lorg/dom4j/xpath/GetPathTest;->document:Lorg/dom4j/Document;

    const-string v12, "/"

    invoke-virtual {p0, v11, v12}, Lorg/dom4j/xpath/GetPathTest;->testPath(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 44
    iget-object v11, p0, Lorg/dom4j/xpath/GetPathTest;->document:Lorg/dom4j/Document;

    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v7

    .line 46
    .local v7, root:Lorg/dom4j/Element;
    const-string v11, "/root"

    invoke-virtual {p0, v7, v11}, Lorg/dom4j/xpath/GetPathTest;->testPath(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 48
    invoke-interface {v7}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v3

    .line 50
    .local v3, elements:Ljava/util/List;
    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/dom4j/Node;

    const-string v12, "/root/author"

    const-string v13, "/root/author[1]"

    invoke-virtual {p0, v11, v12, v13}, Lorg/dom4j/xpath/GetPathTest;->testPath(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v4, 0x0

    .local v4, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .local v8, size:I
    :goto_0
    if-lt v4, v8, :cond_0

    .line 77
    return-void

    .line 53
    :cond_0
    const-string v5, "/root/author"

    .line 54
    .local v5, path:Ljava/lang/String;
    const-string v9, "/root/author"

    .line 55
    .local v9, uniquePath:Ljava/lang/String;
    const-string v6, "author"

    .line 56
    .local v6, pathRel:Ljava/lang/String;
    const-string v10, "author"

    .line 58
    .local v10, uniquePathRel:Ljava/lang/String;
    const/4 v11, 0x1

    if-le v8, v11, :cond_1

    .line 59
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v12, "/root/author["

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 60
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v12, "author["

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 63
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 64
    .local v2, element:Lorg/dom4j/Element;
    invoke-virtual {p0, v2, v5, v9}, Lorg/dom4j/xpath/GetPathTest;->testPath(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v7, v2, v6, v10}, Lorg/dom4j/xpath/GetPathTest;->testRelativePath(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v11, "name"

    invoke-interface {v2, v11}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 68
    .local v0, attribute:Lorg/dom4j/Attribute;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v12, "/@name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v13, "/@name"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12}, Lorg/dom4j/xpath/GetPathTest;->testPath(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v12, "/@name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v13, "/@name"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 69
    invoke-virtual {p0, v7, v0, v11, v12}, Lorg/dom4j/xpath/GetPathTest;->testRelativePath(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v11, "url"

    invoke-interface {v2, v11}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 73
    .local v1, child:Lorg/dom4j/Element;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v12, "/url"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v13, "/url"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v1, v11, v12}, Lorg/dom4j/xpath/GetPathTest;->testPath(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v12, "/url"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v13, "/url"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 74
    invoke-virtual {p0, v7, v1, v11, v12}, Lorg/dom4j/xpath/GetPathTest;->testRelativePath(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method protected testNodePath(Lorg/dom4j/Node;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 163
    invoke-interface {p1}, Lorg/dom4j/Node;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/xpath/GetPathTest;->log(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method protected testPath(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 0
    .parameter "node"
    .parameter "value"

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2, p2}, Lorg/dom4j/xpath/GetPathTest;->testPath(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected testPath(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "node"
    .parameter "path"
    .parameter "uniquePath"

    .prologue
    .line 121
    const-string v0, "getPath expression should be what is expected"

    .line 122
    invoke-interface {p1}, Lorg/dom4j/Node;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, p2, v1}, Lorg/dom4j/xpath/GetPathTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "getUniquePath expression should be what is expected"

    .line 124
    invoke-interface {p1}, Lorg/dom4j/Node;->getUniquePath()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0, p3, v1}, Lorg/dom4j/xpath/GetPathTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected testRelativePath(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "node"
    .parameter "path"

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2, p3, p3}, Lorg/dom4j/xpath/GetPathTest;->testRelativePath(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected testRelativePath(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "node"
    .parameter "pathRel"
    .parameter "uniquePathRel"

    .prologue
    .line 133
    const-string v0, "relative getPath expression should be what is expected"

    .line 134
    invoke-interface {p2, p1}, Lorg/dom4j/Node;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v0, p3, v1}, Lorg/dom4j/xpath/GetPathTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "relative getUniquePath expression not correct"

    .line 136
    invoke-interface {p2, p1}, Lorg/dom4j/Node;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v0, p4, v1}, Lorg/dom4j/xpath/GetPathTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method
