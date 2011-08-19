.class public abstract Ljavax/xml/validation/SchemaFactory;
.super Ljava/lang/Object;
.source "SchemaFactory.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;
    .registers 4
    .parameter "schemaLanguage"

    .prologue
    .line 182
    invoke-static {}, Ljavax/xml/validation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 184
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_c

    .line 187
    const-class v2, Ljavax/xml/validation/SchemaFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 190
    :cond_c
    new-instance v2, Ljavax/xml/validation/SchemaFactoryFinder;

    invoke-direct {v2, v0}, Ljavax/xml/validation/SchemaFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, p0}, Ljavax/xml/validation/SchemaFactoryFinder;->newFactory(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v1

    .line 191
    .local v1, f:Ljavax/xml/validation/SchemaFactory;
    if-nez v1, :cond_1d

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_1d
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/validation/SchemaFactory;
    .registers 8
    .parameter "schemaLanguage"
    .parameter "factoryClassName"
    .parameter "classLoader"

    .prologue
    .line 206
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 207
    :cond_4
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "schemaLanguage == null || factoryClassName == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :cond_c
    if-nez p2, :cond_16

    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 213
    :cond_16
    if-eqz p2, :cond_39

    :try_start_18
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 216
    .local v2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1d
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/validation/SchemaFactory;

    .line 217
    .local v1, result:Ljavax/xml/validation/SchemaFactory;
    if-eqz v1, :cond_2b

    invoke-virtual {v1, p0}, Ljavax/xml/validation/SchemaFactory;->isSchemaLanguageSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 218
    :cond_2b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_31} :catch_31
    .catch Ljava/lang/InstantiationException; {:try_start_18 .. :try_end_31} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_31} :catch_47

    .line 221
    .end local v1           #result:Ljavax/xml/validation/SchemaFactory;
    .end local v2           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_31
    move-exception v3

    move-object v0, v3

    .line 222
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 213
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_39
    :try_start_39
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39 .. :try_end_3c} :catch_31
    .catch Ljava/lang/InstantiationException; {:try_start_39 .. :try_end_3c} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3c} :catch_47

    move-result-object v3

    move-object v2, v3

    goto :goto_1d

    .line 223
    :catch_3f
    move-exception v3

    move-object v0, v3

    .line 224
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 225
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_47
    move-exception v3

    move-object v0, v3

    .line 226
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 220
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .restart local v1       #result:Ljavax/xml/validation/SchemaFactory;
    .restart local v2       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4f
    return-object v1
.end method


# virtual methods
.method public abstract getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 267
    if-nez p1, :cond_a

    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the name parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 376
    if-nez p1, :cond_a

    .line 377
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the name parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
.end method

.method public abstract isSchemaLanguageSupported(Ljava/lang/String;)Z
.end method

.method public abstract newSchema()Ljavax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public newSchema(Ljava/io/File;)Ljavax/xml/validation/Schema;
    .registers 3
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactory;->newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public newSchema(Ljava/net/URL;)Ljavax/xml/validation/Schema;
    .registers 4
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactory;->newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public newSchema(Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .registers 4
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 528
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/xml/transform/Source;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public abstract newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 316
    if-nez p1, :cond_a

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the name parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "name"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 344
    if-nez p1, :cond_a

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the name parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
.end method
