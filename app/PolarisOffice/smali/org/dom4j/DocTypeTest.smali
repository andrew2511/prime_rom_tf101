.class public Lorg/dom4j/DocTypeTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DocTypeTest.java"


# static fields
.field protected static final INPUT_XML_FILE:Ljava/lang/String; = "/xml/dtd/internal.xml"

.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 28
    sget-object v0, Lorg/dom4j/DocTypeTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.DocTypeTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/DocTypeTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 29
    return-void

    .line 28
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testDocType()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 34
    new-instance v5, Lorg/dom4j/io/SAXReader;

    invoke-direct {v5}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 35
    .local v5, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v5, v9}, Lorg/dom4j/io/SAXReader;->setIncludeInternalDTDDeclarations(Z)V

    .line 37
    const-string v6, "/xml/dtd/internal.xml"

    invoke-virtual {p0, v6, v5}, Lorg/dom4j/DocTypeTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v3

    .line 39
    .local v3, document:Lorg/dom4j/Document;
    invoke-interface {v3}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v2

    .line 40
    .local v2, docType:Lorg/dom4j/DocumentType;
    const-string v6, "Has DOCTYPE"

    if-eqz v2, :cond_0

    move v7, v9

    :goto_0
    invoke-static {v6, v7}, Lorg/dom4j/DocTypeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 42
    invoke-interface {v2}, Lorg/dom4j/DocumentType;->getInternalDeclarations()Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, declarations:Ljava/util/List;
    const-string v6, "DOCTYPE has declarations"

    if-eqz v1, :cond_1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v9

    .line 43
    :goto_1
    invoke-static {v6, v7}, Lorg/dom4j/DocTypeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 46
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dtd/ElementDecl;

    .line 48
    .local v0, decl:Lorg/dom4j/dtd/ElementDecl;
    const-string v6, "name is correct"

    const-string v7, "greeting"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ElementDecl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/dom4j/DocTypeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v6, "model is correct"

    const-string v7, "(#PCDATA)"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ElementDecl;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/dom4j/DocTypeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "<!ELEMENT "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/dom4j/dtd/ElementDecl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0}, Lorg/dom4j/dtd/ElementDecl;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 52
    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, expected:Ljava/lang/String;
    const-string v6, "toString() is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ElementDecl;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lorg/dom4j/DocTypeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .end local v0           #decl:Lorg/dom4j/dtd/ElementDecl;
    .end local v1           #declarations:Ljava/util/List;
    .end local v4           #expected:Ljava/lang/String;
    :cond_0
    move v7, v8

    .line 40
    goto :goto_0

    .restart local v1       #declarations:Ljava/util/List;
    :cond_1
    move v7, v8

    .line 44
    goto :goto_1
.end method
