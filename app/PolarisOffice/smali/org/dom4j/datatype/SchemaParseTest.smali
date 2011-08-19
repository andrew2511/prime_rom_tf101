.class public Lorg/dom4j/datatype/SchemaParseTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SchemaParseTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 24
    sget-object v0, Lorg/dom4j/datatype/SchemaParseTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.datatype.SchemaParseTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SchemaParseTest;->class$0:Ljava/lang/Class;

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
.method public testParseSchema()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/datatype/DatatypeDocumentFactory;-><init>()V

    .line 32
    .local v0, factory:Lorg/dom4j/datatype/DatatypeDocumentFactory;
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 33
    .local v1, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v1, v0}, Lorg/dom4j/io/SAXReader;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 35
    const-string v3, "/xml/test/LuisSchema.xsd"

    invoke-virtual {p0, v3, v1}, Lorg/dom4j/datatype/SchemaParseTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v2

    .line 36
    .local v2, schema:Lorg/dom4j/Document;
    invoke-virtual {v0, v2}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;)V

    .line 38
    const-string v3, "Loaded the schema"

    invoke-virtual {p0, v3}, Lorg/dom4j/datatype/SchemaParseTest;->log(Ljava/lang/String;)V

    .line 41
    return-void
.end method
