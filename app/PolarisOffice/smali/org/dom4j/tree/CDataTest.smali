.class public Lorg/dom4j/tree/CDataTest;
.super Lorg/dom4j/AbstractTestCase;
.source "CDataTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 21
    sget-object v0, Lorg/dom4j/tree/CDataTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.tree.CDataTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/CDataTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 22
    return-void

    .line 21
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testLongCData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "xml/test/longCDATA.xml"

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/CDataTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    .line 36
    return-void
.end method

.method public testNormal()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lorg/dom4j/tree/DefaultCDATA;

    const-string v1, "sample"

    invoke-direct {v0, v1}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, cdata:Lorg/dom4j/tree/DefaultCDATA;
    const-string v1, "CData not correct"

    const-string v2, "<![CDATA[sample]]>"

    invoke-virtual {v0}, Lorg/dom4j/tree/DefaultCDATA;->asXML()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/dom4j/tree/CDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public testNullTest()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lorg/dom4j/tree/DefaultCDATA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, cdata:Lorg/dom4j/tree/DefaultCDATA;
    const-string v1, "CData not correct"

    const-string v2, "<![CDATA[]]>"

    invoke-virtual {v0}, Lorg/dom4j/tree/DefaultCDATA;->asXML()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/dom4j/tree/CDataTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
