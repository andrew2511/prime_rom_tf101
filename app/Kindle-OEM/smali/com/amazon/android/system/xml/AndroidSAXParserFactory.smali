.class public Lcom/amazon/android/system/xml/AndroidSAXParserFactory;
.super Ljava/lang/Object;
.source "AndroidSAXParserFactory.java"

# interfaces
.implements Lcom/amazon/system/xml/SAXParserFactory;


# instance fields
.field final inner:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/system/xml/AndroidSAXParserFactory;->inner:Ljavax/xml/parsers/SAXParserFactory;

    .line 26
    iget-object v0, p0, Lcom/amazon/android/system/xml/AndroidSAXParserFactory;->inner:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public newSAXParser()Lcom/amazon/system/xml/SAXParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Lcom/amazon/android/system/xml/AndroidSAXParser;

    iget-object v2, p0, Lcom/amazon/android/system/xml/AndroidSAXParserFactory;->inner:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/android/system/xml/AndroidSAXParser;-><init>(Ljavax/xml/parsers/SAXParser;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 35
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 37
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lcom/amazon/topaz/exception/TopazException;

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/exception/TopazException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 39
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 41
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/amazon/topaz/exception/TopazException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/exception/TopazException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
