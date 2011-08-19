.class Lcom/amazon/android/system/xml/AndroidSAXParser;
.super Ljava/lang/Object;
.source "AndroidSAXParser.java"

# interfaces
.implements Lcom/amazon/system/xml/SAXParser;


# instance fields
.field final inner:Ljavax/xml/parsers/SAXParser;


# direct methods
.method public constructor <init>(Ljavax/xml/parsers/SAXParser;)V
    .locals 0
    .parameter "inner"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/android/system/xml/AndroidSAXParser;->inner:Ljavax/xml/parsers/SAXParser;

    .line 20
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lcom/amazon/system/xml/DefaultHandler;)V
    .locals 3
    .parameter "is"
    .parameter "dh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/system/xml/AndroidSAXParser;->inner:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Lcom/amazon/android/system/xml/AndroidDefaultHandlerWrapper;

    invoke-direct {v2, p2}, Lcom/amazon/android/system/xml/AndroidDefaultHandlerWrapper;-><init>(Lcom/amazon/system/xml/DefaultHandler;)V

    invoke-virtual {v1, p1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 29
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 31
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/amazon/topaz/exception/TopazException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/exception/TopazException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
