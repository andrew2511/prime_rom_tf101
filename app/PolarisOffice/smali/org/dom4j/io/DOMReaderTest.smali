.class public Lorg/dom4j/io/DOMReaderTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DOMReaderTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 27
    sget-object v0, Lorg/dom4j/io/DOMReaderTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.io.DOMReaderTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/DOMReaderTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 28
    return-void

    .line 27
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testBug972737()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const-string v6, "<schema targetNamespace=\'http://SharedTest.org/xsd\'         xmlns=\'http://www.w3.org/2001/XMLSchema\'         xmlns:xsd=\'http://www.w3.org/2001/XMLSchema\'>    <complexType name=\'AllStruct\'>        <all>            <element name=\'arString\' type=\'xsd:string\'/>            <element name=\'varInt\' type=\'xsd:int\'/>        </all>    </complexType></schema>"

    .line 39
    .local v6, xml:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 40
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 41
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 42
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 44
    .local v1, doc:Lorg/w3c/dom/Document;
    new-instance v5, Lorg/dom4j/io/DOMReader;

    invoke-direct {v5}, Lorg/dom4j/io/DOMReader;-><init>()V

    .line 45
    .local v5, reader:Lorg/dom4j/io/DOMReader;
    invoke-virtual {v5, v1}, Lorg/dom4j/io/DOMReader;->read(Lorg/w3c/dom/Document;)Lorg/dom4j/Document;

    move-result-object v2

    .line 47
    .local v2, dom4jDoc:Lorg/dom4j/Document;
    invoke-interface {v2}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v7

    invoke-interface {v7}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v4

    .line 48
    .local v4, namespaces:Ljava/util/List;
    const/4 v7, 0x2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Lorg/dom4j/io/DOMReaderTest;->assertEquals(II)V

    .line 50
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v2}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    return-void
.end method
