.class Lcom/amazon/android/system/xml/AndroidDefaultHandlerWrapper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AndroidDefaultHandlerWrapper.java"


# instance fields
.field final inner:Lcom/amazon/system/xml/DefaultHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/system/xml/DefaultHandler;)V
    .locals 0
    .parameter "inner"

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/android/system/xml/AndroidDefaultHandlerWrapper;->inner:Lcom/amazon/system/xml/DefaultHandler;

    .line 12
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/android/system/xml/AndroidDefaultHandlerWrapper;->inner:Lcom/amazon/system/xml/DefaultHandler;

    const-string v1, ""

    invoke-interface {v0, p1, v1, p2}, Lcom/amazon/system/xml/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/android/system/xml/AndroidDefaultHandlerWrapper;->inner:Lcom/amazon/system/xml/DefaultHandler;

    const-string v1, ""

    new-instance v2, Lcom/amazon/android/system/xml/AndroidAttributes;

    invoke-direct {v2, p4}, Lcom/amazon/android/system/xml/AndroidAttributes;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/amazon/system/xml/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/xml/Attributes;)V

    .line 29
    return-void
.end method
