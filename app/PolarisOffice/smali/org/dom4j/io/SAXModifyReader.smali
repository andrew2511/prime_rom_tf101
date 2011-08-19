.class Lorg/dom4j/io/SAXModifyReader;
.super Lorg/dom4j/io/SAXReader;
.source "SAXModifyReader.java"


# instance fields
.field private pruneElements:Z

.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "xmlReaderClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "xmlReaderClassName"
    .parameter "validating"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Z)V
    .locals 0
    .parameter "factory"
    .parameter "validating"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .parameter "xmlReader"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .locals 0
    .parameter "xmlReader"
    .parameter "validating"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/xml/sax/XMLReader;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "validating"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method protected createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;
    .locals 3
    .parameter "reader"

    .prologue
    .line 77
    new-instance v0, Lorg/dom4j/io/SAXModifyContentHandler;

    .line 78
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v2

    .line 77
    invoke-direct {v0, v1, v2}, Lorg/dom4j/io/SAXModifyContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    .line 80
    .local v0, handler:Lorg/dom4j/io/SAXModifyContentHandler;
    iget-object v1, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXModifyContentHandler;->setXMLWriter(Lorg/dom4j/io/XMLWriter;)V

    .line 82
    return-object v0
.end method

.method protected getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public isPruneElements()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/dom4j/io/SAXModifyReader;->pruneElements:Z

    return v0
.end method

.method public setPruneElements(Z)V
    .locals 0
    .parameter "pruneElements"

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/dom4j/io/SAXModifyReader;->pruneElements:Z

    .line 74
    return-void
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 65
    iput-object p1, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 66
    return-void
.end method
