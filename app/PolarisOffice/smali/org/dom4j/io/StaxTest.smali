.class public Lorg/dom4j/io/StaxTest;
.super Lorg/dom4j/AbstractTestCase;
.source "StaxTest.java"


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
    sget-object v0, Lorg/dom4j/io/StaxTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.io.StaxTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/StaxTest;->class$0:Ljava/lang/Class;

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
.method public testEncoding()V
    .locals 12

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;
    :try_end_0
    .catch Ljavax/xml/stream/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    const-string v9, "/xml/russArticle.xml"

    invoke-virtual {p0, v9}, Lorg/dom4j/io/StaxTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 52
    .local v3, file:Ljava/io/File;
    new-instance v7, Lorg/dom4j/io/STAXEventReader;

    invoke-direct {v7}, Lorg/dom4j/io/STAXEventReader;-><init>()V

    .line 53
    .local v7, xmlReader:Lorg/dom4j/io/STAXEventReader;
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v9}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 55
    .local v0, doc:Lorg/dom4j/Document;
    const-string v9, "russArticle.xml encoding wasn\'t correct"

    const-string v10, "koi8-r"

    .line 56
    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v11

    .line 55
    invoke-static {v9, v10, v11}, Lorg/dom4j/io/StaxTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 59
    .local v5, writer:Ljava/io/StringWriter;
    new-instance v8, Lorg/dom4j/io/STAXEventWriter;

    invoke-direct {v8, v5}, Lorg/dom4j/io/STAXEventWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    .local v8, xmlWriter:Lorg/dom4j/io/STAXEventWriter;
    invoke-virtual {v8, v0}, Lorg/dom4j/io/STAXEventWriter;->writeDocument(Lorg/dom4j/Document;)V

    .line 62
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, output:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "?>"

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, xmlDecl:Ljava/lang/String;
    const-string v2, "<?xml version=\'1.0\' encoding=\'koi8-r\'?>"

    .line 65
    .local v2, expected:Ljava/lang/String;
    const-string v9, "Unexpected xml declaration"

    invoke-static {v9, v2, v6}, Lorg/dom4j/io/StaxTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .end local v0           #doc:Lorg/dom4j/Document;
    .end local v2           #expected:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #output:Ljava/lang/String;
    .end local v5           #writer:Ljava/io/StringWriter;
    .end local v6           #xmlDecl:Ljava/lang/String;
    .end local v7           #xmlReader:Lorg/dom4j/io/STAXEventReader;
    .end local v8           #xmlWriter:Lorg/dom4j/io/STAXEventWriter;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Ljavax/xml/stream/FactoryConfigurationError;
    goto :goto_0

    .line 67
    .end local v1           #e:Ljavax/xml/stream/FactoryConfigurationError;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 68
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/dom4j/io/StaxTest;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
