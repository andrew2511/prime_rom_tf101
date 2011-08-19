.class public Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;
.super Ljava/lang/Object;
.source "AttributeDeclTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/dtd/AttributeDeclTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MyTestAttributeDecl"
.end annotation


# instance fields
.field private attName:Ljava/lang/String;

.field private declType:Ljava/lang/String;

.field private declValue:Ljava/lang/String;

.field private defaultValue:Ljava/lang/String;

.field private elName:Ljava/lang/String;

.field private txt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "elementName"
    .parameter "attributeName"
    .parameter "type"
    .parameter "valueDefault"
    .parameter "value"
    .parameter "text"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->elName:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->attName:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->declType:Ljava/lang/String;

    .line 190
    iput-object p4, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->defaultValue:Ljava/lang/String;

    .line 192
    iput-object p5, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->declValue:Ljava/lang/String;

    .line 194
    iput-object p6, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->txt:Ljava/lang/String;

    .line 195
    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->attName:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->elName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->txt:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->declType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->declValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDeclTest$MyTestAttributeDecl;->defaultValue:Ljava/lang/String;

    return-object v0
.end method
