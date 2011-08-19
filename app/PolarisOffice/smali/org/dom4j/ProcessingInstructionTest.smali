.class public Lorg/dom4j/ProcessingInstructionTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ProcessingInstructionTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 22
    sget-object v0, Lorg/dom4j/ProcessingInstructionTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.ProcessingInstructionTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/ProcessingInstructionTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 23
    return-void

    .line 22
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testBug787428()V
    .locals 4

    .prologue
    .line 38
    const-string v0, "xpath=\"/abc/cde[@id=\'qqq\']\""

    .line 40
    .local v0, data:Ljava/lang/String;
    const-string v2, "merge"

    .line 39
    invoke-static {v2, v0}, Lorg/dom4j/DocumentHelper;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v1

    .line 42
    .local v1, pi:Lorg/dom4j/ProcessingInstruction;
    const-string v2, "/abc/cde[@id=\'qqq\']"

    const-string v3, "xpath"

    invoke-interface {v1, v3}, Lorg/dom4j/ProcessingInstruction;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/dom4j/ProcessingInstructionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public testParseValues()V
    .locals 5

    .prologue
    .line 26
    const-string v0, " abc=\'123\' def=\"2!=3\" ghi=\' 4 = \'"

    .line 28
    .local v0, data:Ljava/lang/String;
    const-string v3, "pi"

    .line 27
    invoke-static {v3, v0}, Lorg/dom4j/DocumentHelper;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v1

    .line 30
    .local v1, pi:Lorg/dom4j/ProcessingInstruction;
    invoke-interface {v1}, Lorg/dom4j/ProcessingInstruction;->getValues()Ljava/util/Map;

    move-result-object v2

    .line 31
    .local v2, values:Ljava/util/Map;
    const/4 v3, 0x3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/dom4j/ProcessingInstructionTest;->assertEquals(II)V

    .line 32
    const-string v3, "123"

    const-string v4, "abc"

    invoke-interface {v1, v4}, Lorg/dom4j/ProcessingInstruction;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/ProcessingInstructionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v3, "2!=3"

    const-string v4, "def"

    invoke-interface {v1, v4}, Lorg/dom4j/ProcessingInstruction;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/ProcessingInstructionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v3, " 4 = "

    const-string v4, "ghi"

    invoke-interface {v1, v4}, Lorg/dom4j/ProcessingInstruction;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/ProcessingInstructionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
