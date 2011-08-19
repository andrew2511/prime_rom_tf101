.class public Lorg/dom4j/xpath/NumberTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NumberTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2+2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2 + 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2 + number(1) + 2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 24
    const-string v2, "number(1) * 2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "2 + count(//author) + 2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2 + (2 * 5)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 25
    const-string v2, "count(//author) + count(//author/attribute::*)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 26
    const-string v2, "(12 + count(//author) + count(//author/attribute::*)) div 2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 27
    const-string v2, "count(//author)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "count(//author/attribute::*)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 28
    const-string v2, "2 + number(1) * 2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "count(descendant::author)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 29
    const-string v2, "count(ancestor::author)"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "count(descendant::*)"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 30
    const-string v2, "count(descendant::author)+1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "count(ancestor::*)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 31
    const-string v2, "10 + count(ancestor-or-self::author) + 5"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 32
    const-string v2, "10 + count(descendant::author) * 5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 33
    const-string v2, "10 + (count(descendant::author) * 5)"

    aput-object v2, v0, v1

    .line 23
    sput-object v0, Lorg/dom4j/xpath/NumberTest;->paths:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 36
    sget-object v0, Lorg/dom4j/xpath/NumberTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.NumberTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/NumberTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 37
    return-void

    .line 36
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected testXPath(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 5
    .parameter "node"
    .parameter "xpathText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    invoke-interface {p1, p2}, Lorg/dom4j/Node;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v2

    .line 59
    .local v2, xpath:Lorg/dom4j/XPath;
    invoke-interface {v2, p1}, Lorg/dom4j/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    .line 61
    .local v1, number:Ljava/lang/Number;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Searched path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/NumberTest;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1           #number:Ljava/lang/Number;
    .end local v2           #xpath:Lorg/dom4j/XPath;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 63
    .local v0, e:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Caught exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/NumberTest;->log(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Failed to process:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 66
    const-string v4, " caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    const/4 v4, 0x0

    .line 65
    invoke-static {v3, v4}, Lorg/dom4j/xpath/NumberTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public testXPaths()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v3, p0, Lorg/dom4j/xpath/NumberTest;->document:Lorg/dom4j/Document;

    const-string v4, "//author"

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    .line 43
    .local v0, element:Lorg/dom4j/Node;
    sget-object v3, Lorg/dom4j/xpath/NumberTest;->paths:[Ljava/lang/String;

    array-length v2, v3

    .line 45
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 50
    const-string v3, "Finished successfully"

    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/NumberTest;->log(Ljava/lang/String;)V

    .line 51
    return-void

    .line 46
    :cond_0
    iget-object v3, p0, Lorg/dom4j/xpath/NumberTest;->document:Lorg/dom4j/Document;

    sget-object v4, Lorg/dom4j/xpath/NumberTest;->paths:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v3, v4}, Lorg/dom4j/xpath/NumberTest;->testXPath(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 47
    sget-object v3, Lorg/dom4j/xpath/NumberTest;->paths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v0, v3}, Lorg/dom4j/xpath/NumberTest;->testXPath(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
