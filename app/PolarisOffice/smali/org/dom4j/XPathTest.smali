.class public Lorg/dom4j/XPathTest;
.super Lorg/dom4j/AbstractTestCase;
.source "XPathTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    const-string v2, "."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 26
    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 27
    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 28
    const-string v2, "/."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 29
    const-string v2, "/*"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 30
    const-string v2, "/node()"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 31
    const-string v2, "/child::node()"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 32
    const-string v2, "/self::node()"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 33
    const-string v2, "root"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 34
    const-string v2, "/root"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 35
    const-string v2, "/root/author"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 36
    const-string v2, "text()"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 37
    const-string v2, "//author"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 38
    const-string v2, "//author/text()"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 39
    const-string v2, "//@location"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 40
    const-string v2, "//attribute::*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 41
    const-string v2, "//namespace::*"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 42
    const-string v2, "normalize-space(/root)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 43
    const-string v2, "//author[@location]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 44
    const-string v2, "//author[@location=\'UK\']"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 45
    const-string v2, "root|author"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 46
    const-string v2, "//*[.=\'James Strachan\']"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 47
    const-string v2, "//root/author[1]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 48
    const-string v2, "normalize-space(/root/author)"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 49
    const-string v2, "normalize-space(\' a  b  c  d \')"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 50
    const-string v2, "//root|//author[1]|//author[2]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 51
    const-string v2, "//root/author[2]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 52
    const-string v2, "//root/author[3]"

    aput-object v2, v0, v1

    .line 24
    sput-object v0, Lorg/dom4j/XPathTest;->paths:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 55
    sget-object v0, Lorg/dom4j/XPathTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.XPathTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/XPathTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 56
    return-void

    .line 55
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testBooleanValueOf()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    const-string v2, "<root><foo>blah</foo></root>"

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 99
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v1, Lorg/dom4j/xpath/DefaultXPath;

    const-string v2, "//root"

    invoke-direct {v1, v2}, Lorg/dom4j/xpath/DefaultXPath;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, path:Lorg/dom4j/XPath;
    invoke-interface {v1, v0}, Lorg/dom4j/XPath;->booleanValueOf(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/dom4j/XPathTest;->assertTrue(Z)V

    .line 102
    new-instance v1, Lorg/dom4j/xpath/DefaultXPath;

    .end local v1           #path:Lorg/dom4j/XPath;
    const-string v2, "//root2"

    invoke-direct {v1, v2}, Lorg/dom4j/xpath/DefaultXPath;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v1       #path:Lorg/dom4j/XPath;
    invoke-interface {v1, v0}, Lorg/dom4j/XPath;->booleanValueOf(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/dom4j/XPathTest;->assertFalse(Z)V

    .line 104
    return-void
.end method

.method public testBug1116471()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    const-string v5, "<a><b>Water T &amp; D-46816</b></a>"

    .line 62
    .local v5, xml:Ljava/lang/String;
    const-string v1, "Water T & D-46816"

    .line 64
    .local v1, expected:Ljava/lang/String;
    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 65
    .local v0, doc:Lorg/dom4j/Document;
    const-string v6, "string(a/b[1])"

    invoke-interface {v0, v6}, Lorg/dom4j/Document;->selectObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    .local v3, result:Ljava/lang/String;
    const-string v6, "xpath result not correct"

    invoke-static {v6, v1, v3}, Lorg/dom4j/XPathTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v6, "a/b"

    invoke-interface {v0, v6}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    .line 70
    .local v2, node:Lorg/dom4j/Node;
    invoke-interface {v2}, Lorg/dom4j/Node;->getStringValue()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, result2:Ljava/lang/String;
    const-string v6, "xpath result not correct"

    invoke-static {v6, v1, v4}, Lorg/dom4j/XPathTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public testBug857704()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const-string v1, "<foo xmlns:bar=\'http://blort\'/>"

    invoke-static {v1}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 93
    .local v0, doc:Lorg/dom4j/Document;
    const-string v1, "//*[preceding-sibling::*]"

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    .line 94
    return-void
.end method

.method public testCreateXPathBug()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lorg/dom4j/tree/DefaultElement;

    const-string v2, "foo"

    invoke-direct {v0, v2}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, element:Lorg/dom4j/Element;
    const-string v2, "//bar"

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v1

    .line 87
    .local v1, xpath:Lorg/dom4j/XPath;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "created a valid XPath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/dom4j/XPathTest;->assertTrue(Z)V

    .line 88
    return-void

    .line 87
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected testXPath(Ljava/lang/String;)V
    .locals 10
    .parameter "xpathExpression"

    .prologue
    .line 109
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Searched path: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v7

    .line 113
    .local v7, xpath:Lorg/dom4j/XPath;
    iget-object v8, p0, Lorg/dom4j/XPathTest;->document:Lorg/dom4j/Document;

    invoke-interface {v7, v8}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, list:Ljava/util/List;
    if-nez v2, :cond_0

    .line 116
    const-string v8, "null"

    invoke-virtual {p0, v8}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 139
    :goto_0
    const-string v8, "..........................................."

    invoke-virtual {p0, v8}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 140
    return-void

    .line 118
    :cond_0
    const-string v8, "["

    invoke-virtual {p0, v8}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, size:I
    :goto_1
    if-lt v1, v5, :cond_1

    .line 136
    const-string v8, "]"

    invoke-virtual {p0, v8}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 123
    .local v4, object:Ljava/lang/Object;
    const-string v6, "null"

    .line 125
    .local v6, text:Ljava/lang/String;
    instance-of v8, v4, Lorg/dom4j/Node;

    if-eqz v8, :cond_3

    .line 126
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Node;

    move-object v3, v0

    .line 128
    .local v3, node:Lorg/dom4j/Node;
    invoke-interface {v3}, Lorg/dom4j/Node;->asXML()Ljava/lang/String;

    move-result-object v6

    .line 133
    .end local v3           #node:Lorg/dom4j/Node;
    :cond_2
    :goto_2
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "    "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_3
    if-eqz v4, :cond_2

    .line 130
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method public testXPaths()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v2, Lorg/dom4j/XPathTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 78
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 81
    return-void

    .line 79
    :cond_0
    sget-object v2, Lorg/dom4j/XPathTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/XPathTest;->testXPath(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
