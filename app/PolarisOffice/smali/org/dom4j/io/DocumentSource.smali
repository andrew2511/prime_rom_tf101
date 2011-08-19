.class public Lorg/dom4j/io/DocumentSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "DocumentSource.java"


# static fields
.field public static final DOM4J_FEATURE:Ljava/lang/String; = "http://org.dom4j.io.DoucmentSource/feature"


# instance fields
.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lorg/dom4j/Document;)V
    .locals 1
    .parameter "document"

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 38
    new-instance v0, Lorg/dom4j/io/SAXWriter;

    invoke-direct {v0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 57
    invoke-virtual {p0, p1}, Lorg/dom4j/io/DocumentSource;->setDocument(Lorg/dom4j/Document;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 46
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 38
    new-instance v0, Lorg/dom4j/io/SAXWriter;

    invoke-direct {v0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 47
    invoke-interface {p1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DocumentSource;->setDocument(Lorg/dom4j/Document;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getDocument()Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/dom4j/io/DocumentSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    check-cast v0, Lorg/dom4j/io/DocumentInputSource;

    .line 70
    .local v0, source:Lorg/dom4j/io/DocumentInputSource;
    invoke-virtual {v0}, Lorg/dom4j/io/DocumentInputSource;->getDocument()Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 1
    .parameter "document"

    .prologue
    .line 80
    new-instance v0, Lorg/dom4j/io/DocumentInputSource;

    invoke-direct {v0, p1}, Lorg/dom4j/io/DocumentInputSource;-><init>(Lorg/dom4j/Document;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 81
    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 1
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 107
    instance-of v0, p1, Lorg/dom4j/io/DocumentInputSource;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lorg/dom4j/io/DocumentInputSource;

    .end local p1
    invoke-super {p0, p1}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 112
    return-void

    .line 110
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 125
    instance-of v3, p1, Lorg/dom4j/io/SAXWriter;

    if-eqz v3, :cond_0

    .line 126
    check-cast p1, Lorg/dom4j/io/SAXWriter;

    .end local p1
    iput-object p1, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 146
    :goto_0
    return-void

    .line 127
    .restart local p1
    :cond_0
    instance-of v3, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v3, :cond_2

    .line 128
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/XMLFilter;

    move-object v1, v0

    .line 131
    .local v1, filter:Lorg/xml/sax/XMLFilter;
    :goto_1
    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 133
    .local v2, parent:Lorg/xml/sax/XMLReader;
    instance-of v3, v2, Lorg/xml/sax/XMLFilter;

    if-eqz v3, :cond_1

    .line 134
    move-object v0, v2

    check-cast v0, Lorg/xml/sax/XMLFilter;

    move-object v1, v0

    .line 130
    goto :goto_1

    .line 141
    :cond_1
    iget-object v3, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v3}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 142
    iput-object v1, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    goto :goto_0

    .line 144
    .end local v1           #filter:Lorg/xml/sax/XMLFilter;
    .end local v2           #parent:Lorg/xml/sax/XMLReader;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method
