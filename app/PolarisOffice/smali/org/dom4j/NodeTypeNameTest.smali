.class public Lorg/dom4j/NodeTypeNameTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NodeTypeNameTest.java"


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
    sget-object v0, Lorg/dom4j/NodeTypeNameTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.NodeTypeNameTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/NodeTypeNameTest;->class$0:Ljava/lang/Class;

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
.method public testCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    const-string v0, "/xml/cdata.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/NodeTypeNameTest;->testDocument(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public testDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/dom4j/NodeTypeNameTest;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/NodeTypeNameTest;->testDocument(Lorg/dom4j/Document;)V

    .line 29
    return-void
.end method

.method protected testDocument(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/dom4j/NodeTypeNameTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 52
    .local v0, document:Lorg/dom4j/Document;
    invoke-virtual {p0, v0}, Lorg/dom4j/NodeTypeNameTest;->testDocument(Lorg/dom4j/Document;)V

    .line 53
    return-void
.end method

.method protected testDocument(Lorg/dom4j/Document;)V
    .locals 3
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-interface {p1}, Lorg/dom4j/Document;->getNodeTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Document"

    invoke-static {v1, v2}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    .line 60
    .local v0, docType:Lorg/dom4j/DocumentType;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getNodeTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentType"

    invoke-static {v1, v2}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/NodeTypeNameTest;->testElement(Lorg/dom4j/Element;)V

    .line 65
    return-void
.end method

.method protected testElement(Lorg/dom4j/Element;)V
    .locals 6
    .parameter "element"

    .prologue
    .line 68
    invoke-interface {p1}, Lorg/dom4j/Element;->getNodeTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Element"

    invoke-static {v4, v5}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 103
    return-void

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 72
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNodeTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Attribute"

    invoke-static {v4, v5}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0           #attribute:Lorg/dom4j/Attribute;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 77
    .local v2, node:Lorg/dom4j/Node;
    invoke-interface {v2}, Lorg/dom4j/Node;->getNodeTypeName()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, nodeTypeName:Ljava/lang/String;
    instance-of v4, v2, Lorg/dom4j/Attribute;

    if-eqz v4, :cond_2

    .line 80
    const-string v4, "Attribute"

    invoke-static {v3, v4}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_2
    instance-of v4, v2, Lorg/dom4j/CDATA;

    if-eqz v4, :cond_3

    .line 82
    const-string v4, "CDATA"

    invoke-static {v3, v4}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_3
    instance-of v4, v2, Lorg/dom4j/Comment;

    if-eqz v4, :cond_4

    .line 84
    const-string v4, "Comment"

    invoke-static {v3, v4}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_4
    instance-of v4, v2, Lorg/dom4j/Element;

    if-eqz v4, :cond_5

    .line 86
    const-string v4, "Element"

    invoke-static {v3, v4}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    check-cast v2, Lorg/dom4j/Element;

    .end local v2           #node:Lorg/dom4j/Node;
    invoke-virtual {p0, v2}, Lorg/dom4j/NodeTypeNameTest;->testElement(Lorg/dom4j/Element;)V

    goto :goto_1

    .line 88
    .restart local v2       #node:Lorg/dom4j/Node;
    :cond_5
    instance-of v4, v2, Lorg/dom4j/Entity;

    if-eqz v4, :cond_6

    .line 89
    const-string v4, "Entity"

    invoke-static {v3, v4}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_6
    instance-of v4, v2, Lorg/dom4j/Element;

    if-eqz v4, :cond_7

    .line 91
    const-string v4, "Element"

    invoke-static {v3, v4}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_7
    instance-of v4, v2, Lorg/dom4j/Namespace;

    if-eqz v4, :cond_8

    .line 93
    const-string v4, "Namespace"

    invoke-static {v3, v4}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_8
    instance-of v4, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v4, :cond_9

    .line 95
    const-string v4, "ProcessingInstruction"

    invoke-static {v3, v4}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_9
    instance-of v4, v2, Lorg/dom4j/Text;

    if-eqz v4, :cond_a

    .line 97
    const-string v4, "Text"

    invoke-static {v3, v4}, Lorg/dom4j/NodeTypeNameTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_a
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Invalid node type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " for node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    const/4 v5, 0x0

    .line 99
    invoke-static {v4, v5}, Lorg/dom4j/NodeTypeNameTest;->assertTrue(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method public testInline()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    const-string v0, "/xml/inline.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/NodeTypeNameTest;->testDocument(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public testNamespaces()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "/xml/namespaces.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/NodeTypeNameTest;->testDocument(Ljava/lang/String;)V

    .line 37
    const-string v0, "/xml/testNamespaces.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/NodeTypeNameTest;->testDocument(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public testPI()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const-string v0, "/xml/testPI.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/NodeTypeNameTest;->testDocument(Ljava/lang/String;)V

    .line 42
    return-void
.end method
