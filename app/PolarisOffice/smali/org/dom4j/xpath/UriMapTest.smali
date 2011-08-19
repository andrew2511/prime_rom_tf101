.class public Lorg/dom4j/xpath/UriMapTest;
.super Lorg/dom4j/AbstractTestCase;
.source "UriMapTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 29
    sget-object v0, Lorg/dom4j/xpath/UriMapTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.UriMapTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/UriMapTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 30
    return-void

    .line 29
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
    .line 50
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 51
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "xml/soap.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/UriMapTest;->document:Lorg/dom4j/Document;

    .line 52
    return-void
.end method

.method public testURIMap()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v2, uris:Ljava/util/Map;
    const-string v4, "SOAP-ENV"

    const-string v5, "http://schemas.xmlsoap.org/soap/envelope/"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v4, "m"

    const-string v5, "urn:xmethodsBabelFish"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "/SOAP-ENV:Envelope/SOAP-ENV:Body/m:BabelFish"

    .line 40
    .local v1, path:Ljava/lang/String;
    iget-object v4, p0, Lorg/dom4j/xpath/UriMapTest;->document:Lorg/dom4j/Document;

    invoke-interface {v4, v1}, Lorg/dom4j/Document;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v3

    .line 41
    .local v3, xpath:Lorg/dom4j/XPath;
    invoke-interface {v3, v2}, Lorg/dom4j/XPath;->setNamespaceURIs(Ljava/util/Map;)V

    .line 43
    iget-object v4, p0, Lorg/dom4j/xpath/UriMapTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3, v4}, Lorg/dom4j/XPath;->selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v0

    .line 46
    .local v0, babelfish:Lorg/dom4j/Node;
    const-string v4, "Found valid node"

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/xpath/UriMapTest;->assertTrue(Ljava/lang/String;Z)V

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
