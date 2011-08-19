.class public interface abstract Lcom/amazon/system/xml/SAXParser;
.super Ljava/lang/Object;
.source "SAXParser.java"


# virtual methods
.method public abstract parse(Ljava/io/InputStream;Lcom/amazon/system/xml/DefaultHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
