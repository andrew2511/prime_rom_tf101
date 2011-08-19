.class public Lorg/dom4j/dtd/ElementDeclTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ElementDeclTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 31
    sget-object v0, Lorg/dom4j/dtd/ElementDeclTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.dtd.ElementDeclTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/dtd/ElementDeclTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 32
    return-void

    .line 31
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testSimpleElementDecl()V
    .locals 6

    .prologue
    .line 47
    const-string v2, "an-element"

    .line 49
    .local v2, expectedName:Ljava/lang/String;
    const-string v1, "(#PCDATA)"

    .line 51
    .local v1, expectedModel:Ljava/lang/String;
    const-string v3, "<!ELEMENT an-element (#PCDATA)>"

    .line 53
    .local v3, expectedText:Ljava/lang/String;
    new-instance v0, Lorg/dom4j/dtd/ElementDecl;

    invoke-direct {v0, v2, v1}, Lorg/dom4j/dtd/ElementDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, actual:Lorg/dom4j/dtd/ElementDecl;
    const-string v4, "name is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ElementDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lorg/dom4j/dtd/ElementDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v4, "model is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ElementDecl;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lorg/dom4j/dtd/ElementDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v4, "toString() is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ElementDecl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lorg/dom4j/dtd/ElementDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
