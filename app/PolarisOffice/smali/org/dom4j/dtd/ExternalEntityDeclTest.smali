.class public Lorg/dom4j/dtd/ExternalEntityDeclTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ExternalEntityDeclTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 34
    sget-object v0, Lorg/dom4j/dtd/ExternalEntityDeclTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.dtd.ExternalEntityDeclTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/dtd/ExternalEntityDeclTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 35
    return-void

    .line 34
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testPublicIdSystemId()V
    .locals 7

    .prologue
    .line 81
    const-string v1, "anEntity"

    .line 83
    .local v1, expectedName:Ljava/lang/String;
    const-string v2, "-//dom4j//DTD sample"

    .line 85
    .local v2, expectedPublicID:Ljava/lang/String;
    const-string v3, "http://www.myorg.org/foo"

    .line 87
    .local v3, expectedSystemID:Ljava/lang/String;
    const-string v4, "<!ENTITY anEntity PUBLIC \"-//dom4j//DTD sample\" \"http://www.myorg.org/foo\" >"

    .line 91
    .local v4, expectedText:Ljava/lang/String;
    new-instance v0, Lorg/dom4j/dtd/ExternalEntityDecl;

    invoke-direct {v0, v1, v2, v3}, Lorg/dom4j/dtd/ExternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, actual:Lorg/dom4j/dtd/ExternalEntityDecl;
    const-string v5, "name is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ExternalEntityDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v5, "publicID is correct"

    .line 97
    invoke-virtual {v0}, Lorg/dom4j/dtd/ExternalEntityDecl;->getPublicID()Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-static {v5, v2, v6}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v5, "systemID is correct"

    .line 100
    invoke-virtual {v0}, Lorg/dom4j/dtd/ExternalEntityDecl;->getSystemID()Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-static {v5, v3, v6}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "toString() is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ExternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public testSystemId()V
    .locals 7

    .prologue
    .line 53
    const-string v1, "anEntity"

    .line 55
    .local v1, expectedName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 57
    .local v2, expectedPublicID:Ljava/lang/String;
    const-string v3, "http://www.myorg.org/foo"

    .line 59
    .local v3, expectedSystemID:Ljava/lang/String;
    const-string v4, "<!ENTITY anEntity SYSTEM \"http://www.myorg.org/foo\" >"

    .line 62
    .local v4, expectedText:Ljava/lang/String;
    new-instance v0, Lorg/dom4j/dtd/ExternalEntityDecl;

    invoke-direct {v0, v1, v2, v3}, Lorg/dom4j/dtd/ExternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v0, actual:Lorg/dom4j/dtd/ExternalEntityDecl;
    const-string v5, "name is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ExternalEntityDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v5, "publicID is correct"

    .line 68
    invoke-virtual {v0}, Lorg/dom4j/dtd/ExternalEntityDecl;->getPublicID()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-static {v5, v2, v6}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v5, "systemID is correct"

    .line 71
    invoke-virtual {v0}, Lorg/dom4j/dtd/ExternalEntityDecl;->getSystemID()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-static {v5, v3, v6}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v5, "toString() is correct"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ExternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public testToString()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    new-instance v0, Lorg/dom4j/dtd/ExternalEntityDecl;

    const-string v2, "name"

    .line 41
    const-string v3, "systemID"

    .line 40
    invoke-direct {v0, v2, v4, v3}, Lorg/dom4j/dtd/ExternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v0, decl1:Lorg/dom4j/dtd/ExternalEntityDecl;
    new-instance v1, Lorg/dom4j/dtd/ExternalEntityDecl;

    const-string v2, "%name"

    .line 43
    const-string v3, "systemID"

    .line 42
    invoke-direct {v1, v2, v4, v3}, Lorg/dom4j/dtd/ExternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v1, decl2:Lorg/dom4j/dtd/ExternalEntityDecl;
    const-string v2, "<!ENTITY name SYSTEM \"systemID\" >"

    invoke-virtual {v0}, Lorg/dom4j/dtd/ExternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "<!ENTITY % name SYSTEM \"systemID\" >"

    invoke-virtual {v1}, Lorg/dom4j/dtd/ExternalEntityDecl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/dtd/ExternalEntityDeclTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
