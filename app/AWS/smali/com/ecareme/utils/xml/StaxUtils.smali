.class public Lcom/ecareme/utils/xml/StaxUtils;
.super Ljava/lang/Object;
.source "StaxUtils.java"


# static fields
.field private static final xmlif:Ljavax/xml/stream/XMLInputFactory;

.field private static final xmlof:Ljavax/xml/stream/XMLOutputFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    sput-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlif:Ljavax/xml/stream/XMLInputFactory;

    .line 27
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlif:Ljavax/xml/stream/XMLInputFactory;

    const-string v1, "javax.xml.stream.isCoalescing"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    sput-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlof:Ljavax/xml/stream/XMLOutputFactory;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlif:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlif:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v0, p0, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlif:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLEventWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLEventWriter;
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlof:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/stream/XMLOutputFactory;->createXMLEventWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventWriter;
    .locals 1
    .parameter "out"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlof:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p0, p1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLEventWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLEventWriter;
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlof:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/stream/XMLOutputFactory;->createXMLEventWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlif:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlif:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v0, p0, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlif:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlof:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 1
    .parameter "out"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlof:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p0, p1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/ecareme/utils/xml/StaxUtils;->xmlof:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    return-object v0
.end method
