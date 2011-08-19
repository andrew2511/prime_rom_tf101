.class public Lorg/dom4j/xpath/SortByTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SortByTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 26
    sget-object v0, Lorg/dom4j/xpath/SortByTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.xpath.SortByTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/SortByTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 27
    return-void

    .line 26
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 45
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "xml/much_ado.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/SortByTest;->document:Lorg/dom4j/Document;

    .line 46
    return-void
.end method

.method public testXPaths()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v2, p0, Lorg/dom4j/xpath/SortByTest;->document:Lorg/dom4j/Document;

    const-string v3, "//SPEAKER"

    const-string v4, "NAME"

    invoke-interface {v2, v3, v4}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 34
    .local v0, list:Ljava/util/List;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Number of SPEAKER instances: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/SortByTest;->log(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lorg/dom4j/xpath/SortByTest;->document:Lorg/dom4j/Document;

    const-string v3, "//SPEAKER"

    const-string v4, "."

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 38
    .local v1, noDuplicates:Ljava/util/List;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Number of distinct SPEAKER instances: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/SortByTest;->log(Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Number of distinct SPEAKER instances: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/SortByTest;->log(Ljava/lang/String;)V

    .line 41
    return-void
.end method
