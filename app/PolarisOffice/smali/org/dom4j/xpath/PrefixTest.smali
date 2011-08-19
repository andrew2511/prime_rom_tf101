.class public Lorg/dom4j/xpath/PrefixTest;
.super Lorg/dom4j/AbstractTestCase;
.source "PrefixTest.java"


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

    const-string v2, "//xplt:anyElement"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "//xpl:insertText"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 30
    const-string v2, "/Template/Application1/xpl:insertText"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 31
    const-string v2, "/Template/Application2/xpl:insertText"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lorg/dom4j/xpath/PrefixTest;->paths:[Ljava/lang/String;

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
    sget-object v0, Lorg/dom4j/xpath/PrefixTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.PrefixTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/PrefixTest;->class$0:Ljava/lang/Class;

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
    .line 66
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 67
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "xml/testNamespaces.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/PrefixTest;->document:Lorg/dom4j/Document;

    .line 68
    return-void
.end method

.method protected testXPath(Ljava/lang/String;)V
    .locals 5
    .parameter "xpathText"

    .prologue
    .line 50
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v2

    .line 52
    .local v2, xpath:Lorg/dom4j/XPath;
    new-instance v0, Lorg/jaxen/SimpleNamespaceContext;

    invoke-direct {v0}, Lorg/jaxen/SimpleNamespaceContext;-><init>()V

    .line 53
    .local v0, context:Lorg/jaxen/SimpleNamespaceContext;
    const-string v3, "xplt"

    const-string v4, "www.xxxx.com"

    invoke-virtual {v0, v3, v4}, Lorg/jaxen/SimpleNamespaceContext;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "xpl"

    const-string v4, "www.xxxx.com"

    invoke-virtual {v0, v3, v4}, Lorg/jaxen/SimpleNamespaceContext;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v2, v0}, Lorg/dom4j/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 57
    iget-object v3, p0, Lorg/dom4j/xpath/PrefixTest;->document:Lorg/dom4j/Document;

    invoke-interface {v2, v3}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, list:Ljava/util/List;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Searched path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 60
    const-string v4, " result(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/PrefixTest;->log(Ljava/lang/String;)V

    .line 62
    const-string v3, "Should have found at lest one result"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/xpath/PrefixTest;->assertTrue(Ljava/lang/String;Z)V

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
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
    sget-object v2, Lorg/dom4j/xpath/PrefixTest;->paths:[Ljava/lang/String;

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
    sget-object v2, Lorg/dom4j/xpath/PrefixTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/PrefixTest;->testXPath(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
