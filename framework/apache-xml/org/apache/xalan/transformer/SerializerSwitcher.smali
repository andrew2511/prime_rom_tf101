.class public Lorg/apache/xalan/transformer/SerializerSwitcher;
.super Ljava/lang/Object;
.source "SerializerSwitcher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .registers 3
    .parameter "qnameString"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1, p0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public static switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/xml/serializer/Serializer;)Lorg/apache/xml/serializer/Serializer;
    .registers 13
    .parameter "ns"
    .parameter "localName"
    .parameter "props"
    .parameter "oldSerializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v2, p3

    .line 155
    .local v2, newSerializer:Lorg/apache/xml/serializer/Serializer;
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3b

    :cond_9
    const-string v8, "html"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 161
    const-string v8, "method"

    invoke-static {v8, p2}, Lorg/apache/xalan/transformer/SerializerSwitcher;->getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1b

    move-object v3, v2

    .line 202
    .end local v2           #newSerializer:Lorg/apache/xml/serializer/Serializer;
    .local v3, newSerializer:Lorg/apache/xml/serializer/Serializer;
    :goto_1a
    return-object v3

    .line 166
    .end local v3           #newSerializer:Lorg/apache/xml/serializer/Serializer;
    .restart local v2       #newSerializer:Lorg/apache/xml/serializer/Serializer;
    :cond_1b
    move-object v5, p2

    .line 171
    .local v5, prevProperties:Ljava/util/Properties;
    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v8, "html"

    invoke-direct {v0, v8}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, htmlOutputProperties:Lorg/apache/xalan/templates/OutputProperties;
    const/4 v8, 0x1

    invoke-virtual {v0, v5, v8}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    .line 174
    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 178
    .local v1, htmlProperties:Ljava/util/Properties;
    if-eqz p3, :cond_3b

    .line 180
    invoke-static {v1}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v6

    .line 183
    .local v6, serializer:Lorg/apache/xml/serializer/Serializer;
    invoke-interface {p3}, Lorg/apache/xml/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object v7

    .line 185
    .local v7, writer:Ljava/io/Writer;
    if-eqz v7, :cond_3d

    .line 186
    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    .line 194
    :cond_3a
    :goto_3a
    move-object v2, v6

    .end local v0           #htmlOutputProperties:Lorg/apache/xalan/templates/OutputProperties;
    .end local v1           #htmlProperties:Ljava/util/Properties;
    .end local v5           #prevProperties:Ljava/util/Properties;
    .end local v6           #serializer:Lorg/apache/xml/serializer/Serializer;
    .end local v7           #writer:Ljava/io/Writer;
    :cond_3b
    move-object v3, v2

    .line 202
    .end local v2           #newSerializer:Lorg/apache/xml/serializer/Serializer;
    .restart local v3       #newSerializer:Lorg/apache/xml/serializer/Serializer;
    goto :goto_1a

    .line 189
    .end local v3           #newSerializer:Lorg/apache/xml/serializer/Serializer;
    .restart local v0       #htmlOutputProperties:Lorg/apache/xalan/templates/OutputProperties;
    .restart local v1       #htmlProperties:Ljava/util/Properties;
    .restart local v2       #newSerializer:Lorg/apache/xml/serializer/Serializer;
    .restart local v5       #prevProperties:Ljava/util/Properties;
    .restart local v6       #serializer:Lorg/apache/xml/serializer/Serializer;
    .restart local v7       #writer:Ljava/io/Writer;
    :cond_3d
    invoke-interface {v6}, Lorg/apache/xml/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 191
    .local v4, os:Ljava/io/OutputStream;
    if-eqz v4, :cond_3a

    .line 192
    invoke-interface {v6, v4}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_3a
.end method

.method public static switchSerializerIfHTML(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "transformer"
    .parameter "ns"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 59
    if-nez p0, :cond_3

    .line 117
    :cond_2
    :goto_2
    return-void

    .line 62
    :cond_3
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    :cond_b
    const-string v9, "html"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    const-string v9, "method"

    invoke-virtual {p0, v9}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 73
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v6

    .line 78
    .local v6, prevProperties:Ljava/util/Properties;
    new-instance v2, Lorg/apache/xalan/templates/OutputProperties;

    const-string v9, "html"

    invoke-direct {v2, v9}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, htmlOutputProperties:Lorg/apache/xalan/templates/OutputProperties;
    const/4 v9, 0x1

    invoke-virtual {v2, v6, v9}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    .line 81
    invoke-virtual {v2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v3

    .line 86
    .local v3, htmlProperties:Ljava/util/Properties;
    const/4 v4, 0x0

    .line 88
    .local v4, oldSerializer:Lorg/apache/xml/serializer/Serializer;
    if-eqz v4, :cond_2

    .line 90
    :try_start_35
    invoke-static {v3}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v7

    .line 93
    .local v7, serializer:Lorg/apache/xml/serializer/Serializer;
    invoke-interface {v4}, Lorg/apache/xml/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object v8

    .line 95
    .local v8, writer:Ljava/io/Writer;
    if-eqz v8, :cond_52

    .line 96
    invoke-interface {v7, v8}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    .line 107
    :cond_42
    :goto_42
    invoke-interface {v7}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 109
    .local v0, ch:Lorg/xml/sax/ContentHandler;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_49} :catch_4a

    goto :goto_2

    .line 112
    .end local v0           #ch:Lorg/xml/sax/ContentHandler;
    .end local v7           #serializer:Lorg/apache/xml/serializer/Serializer;
    .end local v8           #writer:Ljava/io/Writer;
    :catch_4a
    move-exception v9

    move-object v1, v9

    .line 114
    .local v1, e:Ljava/io/IOException;
    new-instance v9, Ljavax/xml/transform/TransformerException;

    invoke-direct {v9, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 99
    .end local v1           #e:Ljava/io/IOException;
    .restart local v7       #serializer:Lorg/apache/xml/serializer/Serializer;
    .restart local v8       #writer:Ljava/io/Writer;
    :cond_52
    :try_start_52
    invoke-interface {v4}, Lorg/apache/xml/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 101
    .local v5, os:Ljava/io/OutputStream;
    if-eqz v5, :cond_42

    .line 102
    invoke-interface {v7, v5}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5b} :catch_4a

    goto :goto_42
.end method
