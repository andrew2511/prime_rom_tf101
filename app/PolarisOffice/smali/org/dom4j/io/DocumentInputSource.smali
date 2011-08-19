.class Lorg/dom4j/io/DocumentInputSource;
.super Lorg/xml/sax/InputSource;
.source "DocumentInputSource.java"


# instance fields
.field private document:Lorg/dom4j/Document;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Document;)V
    .locals 1
    .parameter "document"

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    .line 37
    invoke-interface {p1}, Lorg/dom4j/Document;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DocumentInputSource;->setSystemId(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCharacterStream()Ljava/io/Reader;
    .locals 5

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 91
    .local v1, out:Ljava/io/StringWriter;
    new-instance v2, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v2, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 92
    .local v2, writer:Lorg/dom4j/io/XMLWriter;
    iget-object v3, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    invoke-virtual {v2, v3}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 93
    invoke-virtual {v2}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 95
    new-instance v3, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1           #out:Ljava/io/StringWriter;
    .end local v2           #writer:Lorg/dom4j/io/XMLWriter;
    :goto_0
    return-object v3

    .line 96
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 100
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lorg/dom4j/io/DocumentInputSource$1;

    invoke-direct {v3, p0, v0}, Lorg/dom4j/io/DocumentInputSource$1;-><init>(Lorg/dom4j/io/DocumentInputSource;Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    return-object v0
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 1
    .parameter "characterStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 1
    .parameter "document"

    .prologue
    .line 59
    iput-object p1, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    .line 60
    invoke-interface {p1}, Lorg/dom4j/Document;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DocumentInputSource;->setSystemId(Ljava/lang/String;)V

    .line 61
    return-void
.end method
