.class public Lorg/dom4j/NormalizeTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NormalizeTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 20
    sget-object v0, Lorg/dom4j/NormalizeTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.NormalizeTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/NormalizeTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 21
    return-void

    .line 20
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 44
    const-string v0, "<dummy> <full> node </full> with text <and>another node</and> </dummy>"

    .line 46
    .local v0, xml:Ljava/lang/String;
    invoke-static {v0}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/NormalizeTest;->document:Lorg/dom4j/Document;

    .line 47
    return-void
.end method

.method public testNormalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v3, p0, Lorg/dom4j/NormalizeTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, text:Ljava/lang/String;
    iget-object v3, p0, Lorg/dom4j/NormalizeTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->normalize()V

    .line 30
    iget-object v3, p0, Lorg/dom4j/NormalizeTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, normalizedText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Initial: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/NormalizeTest;->log(Ljava/lang/String;)V

    .line 33
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Normalized: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/NormalizeTest;->log(Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lorg/dom4j/NormalizeTest;->document:Lorg/dom4j/Document;

    const-string v4, "/dummy/full"

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, value:Ljava/lang/String;
    const-string v3, "Should not trim text"

    const-string v4, " node "

    invoke-static {v3, v4, v2}, Lorg/dom4j/NormalizeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
