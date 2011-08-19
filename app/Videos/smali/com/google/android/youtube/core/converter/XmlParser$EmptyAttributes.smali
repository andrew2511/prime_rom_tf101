.class Lcom/google/android/youtube/core/converter/XmlParser$EmptyAttributes;
.super Ljava/lang/Object;
.source "XmlParser.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/converter/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyAttributes"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$EmptyAttributes;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "qName"

    .prologue
    .line 243
    const/4 v0, -0x1

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 247
    const/4 v0, -0x1

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "qName"

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "qName"

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method
