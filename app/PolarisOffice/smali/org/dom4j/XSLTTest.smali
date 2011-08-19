.class public Lorg/dom4j/XSLTTest;
.super Lorg/dom4j/AbstractTestCase;
.source "XSLTTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
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
    .line 30
    sget-object v0, Lorg/dom4j/XSLTTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.XSLTTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/XSLTTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 31
    return-void

    .line 30
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 54
    const-string v0, "/xml/nitf/sample.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/XSLTTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/XSLTTest;->document:Lorg/dom4j/Document;

    .line 55
    return-void
.end method

.method public testTransform()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    const-string v3, "/xml/nitf/ashtml.xsl"

    invoke-virtual {p0, v3}, Lorg/dom4j/XSLTTest;->transform(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v2

    .line 39
    .local v2, transformedDoc:Lorg/dom4j/Document;
    const-string v3, "Transformed Document is not null"

    if-eqz v2, :cond_0

    move v4, v6

    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/XSLTTest;->assertTrue(Ljava/lang/String;Z)V

    .line 41
    const-string v3, "/html//h1"

    invoke-interface {v2, v3}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, h1List:Ljava/util/List;
    const-string v3, "At least one <h1>"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lorg/dom4j/XSLTTest;->assertTrue(Ljava/lang/String;Z)V

    .line 45
    const-string v3, "//p"

    invoke-interface {v2, v3}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, pList:Ljava/util/List;
    const-string v3, "At least one <p>"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v6

    :goto_2
    invoke-static {v3, v4}, Lorg/dom4j/XSLTTest;->assertTrue(Ljava/lang/String;Z)V

    .line 48
    return-void

    .end local v0           #h1List:Ljava/util/List;
    .end local v1           #pList:Ljava/util/List;
    :cond_0
    move v4, v5

    .line 39
    goto :goto_0

    .restart local v0       #h1List:Ljava/util/List;
    :cond_1
    move v4, v5

    .line 43
    goto :goto_1

    .restart local v1       #pList:Ljava/util/List;
    :cond_2
    move v4, v5

    .line 47
    goto :goto_2
.end method

.method protected transform(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 6
    .parameter "xsl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const-string v4, "Document is not null"

    iget-object v5, p0, Lorg/dom4j/XSLTTest;->document:Lorg/dom4j/Document;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v4, v5}, Lorg/dom4j/XSLTTest;->assertTrue(Ljava/lang/String;Z)V

    .line 61
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 62
    .local v0, factory:Ljavax/xml/transform/TransformerFactory;
    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    .line 63
    invoke-virtual {p0, p1}, Lorg/dom4j/XSLTTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    .line 62
    invoke-virtual {v0, v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 67
    .local v3, transformer:Ljavax/xml/transform/Transformer;
    new-instance v2, Lorg/dom4j/io/DocumentSource;

    iget-object v4, p0, Lorg/dom4j/XSLTTest;->document:Lorg/dom4j/Document;

    invoke-direct {v2, v4}, Lorg/dom4j/io/DocumentSource;-><init>(Lorg/dom4j/Document;)V

    .line 68
    .local v2, source:Ljavax/xml/transform/Source;
    new-instance v1, Lorg/dom4j/io/DocumentResult;

    invoke-direct {v1}, Lorg/dom4j/io/DocumentResult;-><init>()V

    .line 69
    .local v1, result:Lorg/dom4j/io/DocumentResult;
    invoke-virtual {v3, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 71
    invoke-virtual {v1}, Lorg/dom4j/io/DocumentResult;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    return-object v4

    .line 58
    .end local v0           #factory:Ljavax/xml/transform/TransformerFactory;
    .end local v1           #result:Lorg/dom4j/io/DocumentResult;
    .end local v2           #source:Ljavax/xml/transform/Source;
    .end local v3           #transformer:Ljavax/xml/transform/Transformer;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
