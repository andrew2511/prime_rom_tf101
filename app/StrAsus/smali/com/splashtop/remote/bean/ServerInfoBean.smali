.class public Lcom/splashtop/remote/bean/ServerInfoBean;
.super Ljava/lang/Object;
.source "ServerInfoBean.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private height:I

.field private type:I

.field private version:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->width:I

    .line 21
    iput v0, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->height:I

    .line 22
    iput v0, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->type:I

    .line 23
    iput v0, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->version:I

    .line 24
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->height:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->type:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->version:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 39
    iput p1, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->height:I

    .line 40
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 47
    iput p1, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->type:I

    .line 48
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 55
    iput p1, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->version:I

    .line 56
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 31
    iput p1, p0, Lcom/splashtop/remote/bean/ServerInfoBean;->width:I

    .line 32
    return-void
.end method
