.class public Lorg/dom4j/datatype/AutoSchemaTest;
.super Lorg/dom4j/datatype/AbstractDataTypeTestCase;
.source "AutoSchemaTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;

.field static class$2:Ljava/lang/Class;

.field static class$3:Ljava/lang/Class;

.field static class$4:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 27
    sget-object v0, Lorg/dom4j/datatype/AutoSchemaTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.datatype.AutoSchemaTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/AutoSchemaTest;->class$0:Ljava/lang/Class;

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
.method protected getDocumentURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "/xml/test/schema/personal-schema.xml"

    return-object v0
.end method

.method protected loadDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    return-object v0
.end method

.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->setUp()V

    .line 61
    invoke-virtual {p0}, Lorg/dom4j/datatype/AutoSchemaTest;->loadDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 62
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1, v0}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;)V

    .line 63
    .local v1, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {p0}, Lorg/dom4j/datatype/AutoSchemaTest;->getDocumentURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/dom4j/datatype/AutoSchemaTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/datatype/AutoSchemaTest;->document:Lorg/dom4j/Document;

    .line 64
    return-void
.end method

.method public testDate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    const-string v0, "//person/@d"

    sget-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$3:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "java.util.Calendar"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sput-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$3:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/datatype/AutoSchemaTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    return-void

    .line 45
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testDateTime()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "//person/@dt"

    sget-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$3:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "java.util.Calendar"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sput-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$3:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/datatype/AutoSchemaTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 50
    return-void

    .line 49
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testIntAttribute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "//person/@x"

    sget-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$1:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "java.lang.Integer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sput-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$1:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/datatype/AutoSchemaTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    return-void

    .line 33
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testIntElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "//person/salary"

    sget-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$1:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "java.lang.Integer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sput-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$1:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/datatype/AutoSchemaTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

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

.method public testInteger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "//person/@age"

    sget-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$4:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "java.math.BigInteger"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sput-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$4:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/datatype/AutoSchemaTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    return-void

    .line 53
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const-string v0, "//person/note"

    sget-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$2:Ljava/lang/Class;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "java.lang.String"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sput-object v1, Lorg/dom4j/datatype/AutoSchemaTest;->class$2:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/datatype/AutoSchemaTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    return-void

    .line 41
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
