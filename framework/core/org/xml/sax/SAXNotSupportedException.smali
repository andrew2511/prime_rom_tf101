.class public Lorg/xml/sax/SAXNotSupportedException;
.super Lorg/xml/sax/SAXException;
.source "SAXNotSupportedException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/xml/sax/SAXException;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method
