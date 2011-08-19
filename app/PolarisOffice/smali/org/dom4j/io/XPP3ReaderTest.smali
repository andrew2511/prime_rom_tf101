.class public Lorg/dom4j/io/XPP3ReaderTest;
.super Lorg/dom4j/AbstractTestCase;
.source "XPP3ReaderTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 28
    sget-object v0, Lorg/dom4j/io/XPP3ReaderTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.io.XPP3ReaderTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/XPP3ReaderTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 29
    return-void

    .line 28
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testRussian()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    const-string v7, "/xml/russArticle.xml"

    invoke-virtual {p0, v7}, Lorg/dom4j/io/XPP3ReaderTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 35
    .local v2, file:Ljava/io/File;
    new-instance v5, Lorg/dom4j/io/XPP3Reader;

    invoke-direct {v5}, Lorg/dom4j/io/XPP3Reader;-><init>()V

    .line 36
    .local v5, xmlReader:Lorg/dom4j/io/XPP3Reader;
    invoke-virtual {v5, v2}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    .line 37
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 39
    .local v1, el:Lorg/dom4j/Element;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 40
    .local v4, writer:Ljava/io/StringWriter;
    new-instance v6, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v6, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 41
    .local v6, xmlWriter:Lorg/dom4j/io/XMLWriter;
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v3

    .line 42
    .local v3, format:Lorg/dom4j/io/OutputFormat;
    const-string v7, "koi8-r"

    invoke-virtual {v3, v7}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v6, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 44
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/dom4j/io/XPP3ReaderTest;->log(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public testRussian2()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    const-string v5, "/xml/russArticle.xml"

    invoke-virtual {p0, v5}, Lorg/dom4j/io/XPP3ReaderTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 49
    .local v1, file:Ljava/io/File;
    new-instance v3, Lorg/dom4j/io/XPP3Reader;

    invoke-direct {v3}, Lorg/dom4j/io/XPP3Reader;-><init>()V

    .line 50
    .local v3, xmlReader:Lorg/dom4j/io/XPP3Reader;
    invoke-virtual {v3, v1}, Lorg/dom4j/io/XPP3Reader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    .line 51
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v4, Lorg/dom4j/io/XMLWriter;

    new-instance v5, Lorg/dom4j/io/OutputFormat;

    const-string v6, ""

    const/4 v7, 0x0

    .line 52
    const-string v8, "koi8-r"

    invoke-direct {v5, v6, v7, v8}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 51
    invoke-direct {v4, v5}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 53
    .local v4, xmlWriter:Lorg/dom4j/io/XMLWriter;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v4, v2}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {v4, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 56
    invoke-virtual {v4}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 57
    invoke-virtual {v4}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 58
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/io/XPP3ReaderTest;->log(Ljava/lang/String;)V

    .line 59
    return-void
.end method
