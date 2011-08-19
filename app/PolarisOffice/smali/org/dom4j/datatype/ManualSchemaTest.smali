.class public Lorg/dom4j/datatype/ManualSchemaTest;
.super Lorg/dom4j/datatype/AutoSchemaTest;
.source "ManualSchemaTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/dom4j/datatype/AutoSchemaTest;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 24
    sget-object v0, Lorg/dom4j/datatype/ManualSchemaTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.datatype.ManualSchemaTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/ManualSchemaTest;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 25
    return-void

    .line 24
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
    .line 30
    const-string v0, "/xml/test/schema/personal.xml"

    return-object v0
.end method

.method protected loadDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/datatype/DatatypeDocumentFactory;-><init>()V

    .line 36
    .local v0, factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;
    const-string v2, "/xml/test/schema/personal.xsd"

    invoke-virtual {p0, v2}, Lorg/dom4j/datatype/ManualSchemaTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 37
    .local v1, schemaDocument:Lorg/dom4j/Document;
    invoke-virtual {v0, v1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;)V

    .line 39
    return-object v0
.end method
