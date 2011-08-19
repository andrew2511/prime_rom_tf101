.class public Lorg/dom4j/io/DispatchHandlerTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DispatchHandlerTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/io/DispatchHandlerTest$MyHandler;
    }
.end annotation


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 22
    sget-object v0, Lorg/dom4j/io/DispatchHandlerTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.io.DispatchHandlerTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/DispatchHandlerTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 23
    return-void

    .line 22
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testBug611445()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lorg/dom4j/io/DispatchHandlerTest$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/dom4j/io/DispatchHandlerTest$MyHandler;-><init>(Lorg/dom4j/io/DispatchHandlerTest$MyHandler;)V

    .line 28
    .local v0, handler:Lorg/dom4j/io/DispatchHandlerTest$MyHandler;
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 29
    .local v1, reader:Lorg/dom4j/io/SAXReader;
    const-string v2, "/products/product/colour"

    invoke-virtual {v1, v2, v0}, Lorg/dom4j/io/SAXReader;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 30
    const-string v2, "/xml/test/sample.xml"

    invoke-virtual {p0, v2}, Lorg/dom4j/io/DispatchHandlerTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    .line 32
    const/4 v2, 0x3

    invoke-virtual {v0}, Lorg/dom4j/io/DispatchHandlerTest$MyHandler;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lorg/dom4j/io/DispatchHandlerTest;->assertEquals(II)V

    .line 34
    const-string v2, "/xml/test/sample.xml"

    invoke-virtual {p0, v2}, Lorg/dom4j/io/DispatchHandlerTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    .line 35
    const/4 v2, 0x6

    invoke-virtual {v0}, Lorg/dom4j/io/DispatchHandlerTest$MyHandler;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lorg/dom4j/io/DispatchHandlerTest;->assertEquals(II)V

    .line 36
    return-void
.end method
