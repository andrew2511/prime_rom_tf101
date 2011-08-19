.class public Lorg/dom4j/MergeTextTest;
.super Lorg/dom4j/AbstractTestCase;
.source "MergeTextTest.java"


# static fields
.field private static final INPUT_XML_FILE:Ljava/lang/String; = "/xml/test/mergetext.xml"

.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method private checkNoAdjacent(Lorg/dom4j/Element;)V
    .locals 6
    .parameter "parent"

    .prologue
    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, prev:Lorg/dom4j/Node;
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 52
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    return-void

    .line 53
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 55
    .local v2, n:Lorg/dom4j/Node;
    instance-of v4, v2, Lorg/dom4j/Text;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    instance-of v4, v3, Lorg/dom4j/Text;

    if-eqz v4, :cond_2

    .line 56
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " is text and so is its "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 57
    const-string v5, "preceding sibling: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/dom4j/MergeTextTest;->fail(Ljava/lang/String;)V

    .line 62
    :cond_1
    :goto_1
    move-object v3, v2

    goto :goto_0

    .line 58
    :cond_2
    instance-of v4, v2, Lorg/dom4j/Element;

    if-eqz v4, :cond_1

    .line 59
    move-object v0, v2

    check-cast v0, Lorg/dom4j/Element;

    move-object v4, v0

    invoke-direct {p0, v4}, Lorg/dom4j/MergeTextTest;->checkNoAdjacent(Lorg/dom4j/Element;)V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 27
    sget-object v0, Lorg/dom4j/MergeTextTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.MergeTextTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/MergeTextTest;->class$0:Ljava/lang/Class;

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
.method public testNoAdjacentText()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 37
    .local v1, reader:Lorg/dom4j/io/SAXReader;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/dom4j/io/SAXReader;->setMergeAdjacentText(Z)V

    .line 39
    const-string v2, "/xml/test/mergetext.xml"

    invoke-virtual {p0, v2, v1}, Lorg/dom4j/MergeTextTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 41
    .local v0, document:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/dom4j/MergeTextTest;->checkNoAdjacent(Lorg/dom4j/Element;)V

    .line 42
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "No adjacent Text nodes in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/MergeTextTest;->log(Ljava/lang/String;)V

    .line 43
    return-void
.end method
