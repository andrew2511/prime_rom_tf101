.class public Lorg/dom4j/XMLResultTest;
.super Lorg/dom4j/AbstractTestCase;
.source "XMLResultTest.java"


# static fields
.field protected static final VERBOSE:Z

.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 34
    sget-object v0, Lorg/dom4j/XMLResultTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.XMLResultTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/XMLResultTest;->class$0:Ljava/lang/Class;

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
.method public testWriter()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 42
    .local v1, factory:Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    .line 45
    .local v8, transformer:Ljavax/xml/transform/Transformer;
    new-instance v5, Lorg/dom4j/io/DocumentSource;

    iget-object v10, p0, Lorg/dom4j/XMLResultTest;->document:Lorg/dom4j/Document;

    invoke-direct {v5, v10}, Lorg/dom4j/io/DocumentSource;-><init>(Lorg/dom4j/Document;)V

    .line 48
    .local v5, source:Ljavax/xml/transform/Source;
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createCompactFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v2

    .line 49
    .local v2, format:Lorg/dom4j/io/OutputFormat;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 50
    .local v0, buffer:Ljava/io/StringWriter;
    new-instance v4, Lorg/dom4j/io/XMLResult;

    invoke-direct {v4, v0, v2}, Lorg/dom4j/io/XMLResult;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 53
    .local v4, result:Ljavax/xml/transform/Result;
    invoke-virtual {v8, v5, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, text:Ljava/lang/String;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 64
    .local v3, out:Ljava/io/StringWriter;
    new-instance v9, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v9, v3, v2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 65
    .local v9, writer:Lorg/dom4j/io/XMLWriter;
    iget-object v10, p0, Lorg/dom4j/XMLResultTest;->document:Lorg/dom4j/Document;

    invoke-virtual {v9, v10}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 67
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, text2:Ljava/lang/String;
    const-string v10, "The text output should be identical"

    invoke-static {v10, v7, v6}, Lorg/dom4j/XMLResultTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
