.class public Lorg/dom4j/ElementByIDTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ElementByIDTest.java"


# static fields
.field protected static final INPUT_XML_FILE:Ljava/lang/String; = "xml/test/elementByID.xml"

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
    .line 23
    sget-object v0, Lorg/dom4j/ElementByIDTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.ElementByIDTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/ElementByIDTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 24
    return-void

    .line 23
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testElementByID()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    const-string v2, "message"

    .line 30
    .local v2, id:Ljava/lang/String;
    const-string v3, "xml/test/elementByID.xml"

    invoke-virtual {p0, v3}, Lorg/dom4j/ElementByIDTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 33
    .local v0, document:Lorg/dom4j/Document;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "//*[@ID=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 34
    const-string v4, "\']"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-interface {v0, v3}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 35
    .local v1, element:Lorg/dom4j/Element;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Found element by ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    move v4, v6

    :goto_0
    invoke-static {v3, v4}, Lorg/dom4j/ElementByIDTest;->assertTrue(Ljava/lang/String;Z)V

    .line 36
    const-string v3, "ID is equal"

    const-string v4, "ID"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/dom4j/ElementByIDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, v2}, Lorg/dom4j/Document;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 41
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Found element by ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lorg/dom4j/ElementByIDTest;->assertTrue(Ljava/lang/String;Z)V

    .line 42
    const-string v3, "ID is equal"

    const-string v4, "ID"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/dom4j/ElementByIDTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Found element: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/ElementByIDTest;->log(Ljava/lang/String;)V

    .line 46
    const-string v3, "DoesNotExist"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 48
    const-string v3, "Found no element"

    if-nez v1, :cond_2

    move v4, v6

    :goto_2
    invoke-static {v3, v4}, Lorg/dom4j/ElementByIDTest;->assertTrue(Ljava/lang/String;Z)V

    .line 49
    return-void

    :cond_0
    move v4, v5

    .line 35
    goto :goto_0

    :cond_1
    move v4, v5

    .line 41
    goto :goto_1

    :cond_2
    move v4, v5

    .line 48
    goto :goto_2
.end method
