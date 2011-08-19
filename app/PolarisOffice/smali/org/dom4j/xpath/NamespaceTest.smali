.class public Lorg/dom4j/xpath/NamespaceTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NamespaceTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "namespace::*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 30
    const-string v2, "/Template/Application1/namespace::*"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 31
    const-string v2, "/Template/Application1/namespace::xplt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "//namespace::*"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lorg/dom4j/xpath/NamespaceTest;->paths:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 34
    sget-object v0, Lorg/dom4j/xpath/NamespaceTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.NamespaceTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/NamespaceTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 35
    return-void

    .line 34
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 80
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "xml/testNamespaces.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/NamespaceTest;->document:Lorg/dom4j/Document;

    .line 81
    return-void
.end method

.method protected testXPath(Ljava/lang/String;)V
    .locals 10
    .parameter "xpathText"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v5

    .line 51
    .local v5, xpath:Lorg/dom4j/XPath;
    iget-object v6, p0, Lorg/dom4j/xpath/NamespaceTest;->document:Lorg/dom4j/Document;

    invoke-interface {v5, v6}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 53
    .local v2, list:Ljava/util/List;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Searched path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 54
    const-string v7, " result(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual {p0, v6}, Lorg/dom4j/xpath/NamespaceTest;->log(Ljava/lang/String;)V

    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 76
    return-void

    .line 57
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 59
    .local v4, object:Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Found Result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/xpath/NamespaceTest;->log(Ljava/lang/String;)V

    .line 61
    const-string v6, "Results should be Namespace objects"

    .line 62
    instance-of v7, v4, Lorg/dom4j/Namespace;

    .line 61
    invoke-static {v6, v7}, Lorg/dom4j/xpath/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    .line 64
    move-object v0, v4

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v3, v0

    .line 66
    .local v3, namespace:Lorg/dom4j/Namespace;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Parent node: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getParent()Lorg/dom4j/Element;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/xpath/NamespaceTest;->log(Ljava/lang/String;)V

    .line 68
    const-string v6, "Results should support the parent relationship"

    .line 69
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->supportsParent()Z

    move-result v7

    .line 68
    invoke-static {v6, v7}, Lorg/dom4j/xpath/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    .line 71
    const-string v6, "Results should contain reference to the parent element"

    .line 72
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getParent()Lorg/dom4j/Element;

    move-result-object v7

    if-eqz v7, :cond_1

    move v7, v9

    .line 70
    :goto_1
    invoke-static {v6, v7}, Lorg/dom4j/xpath/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    .line 73
    const-string v6, "Results should contain reference to the document"

    .line 74
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getDocument()Lorg/dom4j/Document;

    move-result-object v7

    if-eqz v7, :cond_2

    move v7, v9

    .line 73
    :goto_2
    invoke-static {v6, v7}, Lorg/dom4j/xpath/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v7, v8

    .line 72
    goto :goto_1

    :cond_2
    move v7, v8

    .line 74
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
    .line 40
    sget-object v2, Lorg/dom4j/xpath/NamespaceTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 42
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 45
    return-void

    .line 43
    :cond_0
    sget-object v2, Lorg/dom4j/xpath/NamespaceTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/NamespaceTest;->testXPath(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
