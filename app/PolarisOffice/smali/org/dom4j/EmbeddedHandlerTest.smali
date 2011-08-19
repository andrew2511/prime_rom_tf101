.class public Lorg/dom4j/EmbeddedHandlerTest;
.super Lorg/dom4j/AbstractTestCase;
.source "EmbeddedHandlerTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/EmbeddedHandlerTest$EmbeddedHandler;,
        Lorg/dom4j/EmbeddedHandlerTest$MainHandler;
    }
.end annotation


# static fields
.field private static final MAIN_READER:I = 0x0

.field private static final ON_END_READER:I = 0x1

.field static class$0:Ljava/lang/Class;


# instance fields
.field private results:[Ljava/lang/StringBuffer;

.field protected test:I

.field protected testDocuments:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 26
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "xml/test/FranzBeilMain.xml"

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/dom4j/EmbeddedHandlerTest;->testDocuments:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/dom4j/EmbeddedHandlerTest;->results:[Ljava/lang/StringBuffer;

    .line 21
    return-void
.end method

.method static access$0(Lorg/dom4j/EmbeddedHandlerTest;)[Ljava/lang/StringBuffer;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lorg/dom4j/EmbeddedHandlerTest;->results:[Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 33
    sget-object v0, Lorg/dom4j/EmbeddedHandlerTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.EmbeddedHandlerTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/EmbeddedHandlerTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 34
    return-void

    .line 33
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readDocuments()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lorg/dom4j/EmbeddedHandlerTest;->testDocuments:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    .line 77
    return-void

    .line 70
    :cond_0
    iget-object v5, p0, Lorg/dom4j/EmbeddedHandlerTest;->testDocuments:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lorg/dom4j/EmbeddedHandlerTest;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 71
    .local v4, testDoc:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, mainDir:Ljava/lang/String;
    new-instance v3, Lorg/dom4j/io/SAXReader;

    invoke-direct {v3}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 73
    .local v3, reader:Lorg/dom4j/io/SAXReader;
    new-instance v2, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;

    invoke-direct {v2, p0, v1}, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;-><init>(Lorg/dom4j/EmbeddedHandlerTest;Ljava/lang/String;)V

    .line 74
    .local v2, mainHandler:Lorg/dom4j/ElementHandler;
    const-string v5, "/main/import"

    invoke-virtual {v3, v5, v2}, Lorg/dom4j/io/SAXReader;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 75
    iget-object v5, p0, Lorg/dom4j/EmbeddedHandlerTest;->testDocuments:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5, v3}, Lorg/dom4j/EmbeddedHandlerTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public testBothReaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Lorg/dom4j/EmbeddedHandlerTest;->testMainReader()V

    .line 51
    invoke-virtual {p0}, Lorg/dom4j/EmbeddedHandlerTest;->testOnEndReader()V

    .line 53
    iget-object v1, p0, Lorg/dom4j/EmbeddedHandlerTest;->results:[Ljava/lang/StringBuffer;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lorg/dom4j/EmbeddedHandlerTest;->results:[Ljava/lang/StringBuffer;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v0, msg:Ljava/lang/StringBuffer;
    const-string v1, "Results of tests should be equal!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Results testMainReader():\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lorg/dom4j/EmbeddedHandlerTest;->results:[Ljava/lang/StringBuffer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Results testOnEndReader():\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lorg/dom4j/EmbeddedHandlerTest;->results:[Ljava/lang/StringBuffer;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local v0           #msg:Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public testMainReader()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/EmbeddedHandlerTest;->test:I

    .line 41
    invoke-direct {p0}, Lorg/dom4j/EmbeddedHandlerTest;->readDocuments()V

    .line 42
    return-void
.end method

.method public testOnEndReader()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lorg/dom4j/EmbeddedHandlerTest;->test:I

    .line 46
    invoke-direct {p0}, Lorg/dom4j/EmbeddedHandlerTest;->readDocuments()V

    .line 47
    return-void
.end method
