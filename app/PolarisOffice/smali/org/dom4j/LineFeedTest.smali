.class public Lorg/dom4j/LineFeedTest;
.super Lorg/dom4j/AbstractTestCase;
.source "LineFeedTest.java"


# static fields
.field private static final ATT_TEXT:Ljava/lang/String; = "Hello&#xa;There&#xa;&lt;&gt;&amp;"

.field private static final EXPECTED_ATT_TEXT:Ljava/lang/String; = "Hello There <>&"

.field private static final EXPECTED_TEXT:Ljava/lang/String; = "Hello\nThere\n<>&"

.field private static final TEXT:Ljava/lang/String; = "Hello\nThere\n&lt;&gt;&amp;"

.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 27
    sget-object v0, Lorg/dom4j/LineFeedTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.LineFeedTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/LineFeedTest;->class$0:Ljava/lang/Class;

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
.method public testAttribute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const-string v2, "<elem attr=\"Hello\nThere\n&lt;&gt;&amp;\"/>"

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 39
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 42
    .local v1, elem:Lorg/dom4j/Element;
    const-string v2, "Hello There <>&"

    const-string v3, "attr"

    invoke-interface {v1, v3}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/LineFeedTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "<elem attr=\"Hello&#xa;There&#xa;&lt;&gt;&amp;\"/>"

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 48
    const-string v2, "Hello\nThere\n<>&"

    const-string v3, "attr"

    invoke-interface {v1, v3}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/LineFeedTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public testCDATA()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    const-string v2, "<elem><![CDATA[Hello\nThere\n<>&]]></elem>"

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 54
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 55
    .local v1, elem:Lorg/dom4j/Element;
    const-string v2, "Hello\nThere\n<>&"

    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/LineFeedTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public testElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const-string v2, "<elem>Hello\nThere\n&lt;&gt;&amp;</elem>"

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 32
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 33
    .local v1, elem:Lorg/dom4j/Element;
    const-string v2, "Hello\nThere\n<>&"

    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/LineFeedTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public testXmlWriter()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const-string v5, "elem"

    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 60
    .local v1, elem:Lorg/dom4j/Element;
    invoke-static {v1}, Lorg/dom4j/DocumentHelper;->createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;

    move-result-object v0

    .line 61
    .local v0, doc:Lorg/dom4j/Document;
    const-string v5, "Hello\nThere\n<>&"

    invoke-interface {v1, v5}, Lorg/dom4j/Element;->addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 63
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 64
    .local v2, sw:Ljava/io/StringWriter;
    new-instance v3, Lorg/dom4j/io/XMLWriter;

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 65
    .local v3, xWriter:Lorg/dom4j/io/XMLWriter;
    invoke-virtual {v3, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 66
    invoke-virtual {v3}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 68
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, xmlString:Ljava/lang/String;
    invoke-static {v4}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 71
    const-string v5, "Hello\nThere\n<>&"

    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/dom4j/LineFeedTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
