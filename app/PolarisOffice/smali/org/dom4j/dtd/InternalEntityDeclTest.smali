.class public Lorg/dom4j/dtd/InternalEntityDeclTest;
.super Lorg/dom4j/AbstractTestCase;
.source "InternalEntityDeclTest.java"


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
    sget-object v0, Lorg/dom4j/dtd/InternalEntityDeclTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.dtd.InternalEntityDeclTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/dtd/InternalEntityDeclTest;->class$0:Ljava/lang/Class;

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
.method public testGeneralEntity()V
    .locals 6

    .prologue
    .line 106
    const-string v1, "foo"

    .line 108
    .local v1, expectedName:Ljava/lang/String;
    const-string v3, "bar"

    .line 110
    .local v3, expectedValue:Ljava/lang/String;
    const-string v2, "<!ENTITY foo \"bar\">"

    .line 112
    .local v2, expectedText:Ljava/lang/String;
    new-instance v0, Lorg/dom4j/dtd/InternalEntityDecl;

    invoke-direct {v0, v1, v3}, Lorg/dom4j/dtd/InternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v0, actual:Lorg/dom4j/dtd/InternalEntityDecl;
    const-string v4, "name is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/InternalEntityDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lorg/dom4j/dtd/InternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "value is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/InternalEntityDecl;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lorg/dom4j/dtd/InternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v4, "toString() is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/InternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lorg/dom4j/dtd/InternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public testParameterEntity()V
    .locals 6

    .prologue
    .line 78
    const-string v1, "%boolean"

    .line 80
    .local v1, expectedName:Ljava/lang/String;
    const-string v3, "( true | false )"

    .line 82
    .local v3, expectedValue:Ljava/lang/String;
    const-string v2, "<!ENTITY % boolean \"( true | false )\">"

    .line 84
    .local v2, expectedText:Ljava/lang/String;
    new-instance v0, Lorg/dom4j/dtd/InternalEntityDecl;

    invoke-direct {v0, v1, v3}, Lorg/dom4j/dtd/InternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v0, actual:Lorg/dom4j/dtd/InternalEntityDecl;
    const-string v4, "name is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/InternalEntityDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lorg/dom4j/dtd/InternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "value is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/InternalEntityDecl;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lorg/dom4j/dtd/InternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, "toString() is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/InternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lorg/dom4j/dtd/InternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public testToString()V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lorg/dom4j/dtd/InternalEntityDecl;

    const-string v2, "name"

    const-string v3, "value"

    invoke-direct {v0, v2, v3}, Lorg/dom4j/dtd/InternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v0, decl1:Lorg/dom4j/dtd/InternalEntityDecl;
    new-instance v1, Lorg/dom4j/dtd/InternalEntityDecl;

    const-string v2, "%name"

    const-string v3, "value"

    invoke-direct {v1, v2, v3}, Lorg/dom4j/dtd/InternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v1, decl2:Lorg/dom4j/dtd/InternalEntityDecl;
    const-string v2, "<!ENTITY name \"value\">"

    invoke-virtual {v0}, Lorg/dom4j/dtd/InternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/dtd/InternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "<!ENTITY % name \"value\">"

    invoke-virtual {v1}, Lorg/dom4j/dtd/InternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/dtd/InternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
