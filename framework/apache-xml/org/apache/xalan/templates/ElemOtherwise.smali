.class public Lorg/apache/xalan/templates/ElemOtherwise;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemOtherwise.java"


# static fields
.field static final serialVersionUID:J = 0x19de0fb3dda62b13L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const-string v0, "otherwise"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 45
    const/16 v0, 0x27

    return v0
.end method
