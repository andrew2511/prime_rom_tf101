.class Lcom/amazon/android/system/xml/AndroidAttributes;
.super Ljava/lang/Object;
.source "AndroidAttributesWrapper.java"

# interfaces
.implements Lcom/amazon/system/xml/Attributes;


# instance fields
.field private final inner:Lorg/xml/sax/Attributes;


# direct methods
.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0
    .parameter "inner"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/android/system/xml/AndroidAttributes;->inner:Lorg/xml/sax/Attributes;

    .line 13
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amazon/android/system/xml/AndroidAttributes;->inner:Lorg/xml/sax/Attributes;

    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    return v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/android/system/xml/AndroidAttributes;->inner:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/android/system/xml/AndroidAttributes;->inner:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/android/system/xml/AndroidAttributes;->inner:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
