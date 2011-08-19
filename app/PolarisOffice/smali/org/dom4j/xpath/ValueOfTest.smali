.class public Lorg/dom4j/xpath/ValueOfTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ValueOfTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/root"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "//author"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "//author/@name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 27
    const-string v2, "/root/author[1]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/root/author[1]/@name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/root/author[2]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 28
    const-string v2, "/root/author[2]/@name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/root/author[3]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 29
    const-string v2, "/root/author[3]/@name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "name()"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "name(.)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "name(..)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 30
    const-string v2, "name(child::node())"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "name(parent::*)"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "name(../*)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 31
    const-string v2, "name(../child::node())"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "local-name()"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "local-name(..)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 32
    const-string v2, "local-name(parent::*)"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "local-name(../*)"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "parent::*"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 33
    const-string v2, "name(/.)"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "name(/child::node())"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "name(/*)"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ".."

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "../*"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 34
    const-string v2, "../child::node()"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "/."

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "/child::node()"

    aput-object v2, v0, v1

    .line 26
    sput-object v0, Lorg/dom4j/xpath/ValueOfTest;->paths:[Ljava/lang/String;

    .line 25
    return-void
.end method

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
    .line 37
    sget-object v0, Lorg/dom4j/xpath/ValueOfTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.ValueOfTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/ValueOfTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 38
    return-void

    .line 37
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected testXPath(Lorg/dom4j/Node;)V
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Testing XPath on: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/ValueOfTest;->log(Ljava/lang/String;)V

    .line 54
    const-string v2, "==============================="

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/ValueOfTest;->log(Ljava/lang/String;)V

    .line 56
    sget-object v2, Lorg/dom4j/xpath/ValueOfTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 58
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 61
    return-void

    .line 59
    :cond_0
    sget-object v2, Lorg/dom4j/xpath/ValueOfTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/dom4j/xpath/ValueOfTest;->testXPath(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected testXPath(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 5
    .parameter "node"
    .parameter "xpathExpr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-interface {p1, p2}, Lorg/dom4j/Node;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v2

    .line 66
    .local v2, xpath:Lorg/dom4j/XPath;
    invoke-interface {v2, p1}, Lorg/dom4j/XPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, value:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "valueOf: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/ValueOfTest;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #value:Ljava/lang/String;
    .end local v2           #xpath:Lorg/dom4j/XPath;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 70
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Failed with exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/dom4j/xpath/ValueOfTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public testXPaths()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v3, p0, Lorg/dom4j/xpath/ValueOfTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 44
    .local v2, root:Lorg/dom4j/Element;
    const-string v3, "author"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, children:Ljava/util/List;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 47
    .local v0, child1:Lorg/dom4j/Element;
    iget-object v3, p0, Lorg/dom4j/xpath/ValueOfTest;->document:Lorg/dom4j/Document;

    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/ValueOfTest;->testXPath(Lorg/dom4j/Node;)V

    .line 48
    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/ValueOfTest;->testXPath(Lorg/dom4j/Node;)V

    .line 49
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/ValueOfTest;->testXPath(Lorg/dom4j/Node;)V

    .line 50
    return-void
.end method
