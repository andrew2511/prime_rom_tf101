.class public Lcom/layar/core/StaticTexture;
.super Ljava/lang/Object;
.source "StaticTexture.java"

# interfaces
.implements Lcom/layar/core/Texture;


# instance fields
.field private textureData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "textureData"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/layar/core/StaticTexture;->textureData:[B

    .line 9
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/layar/core/StaticTexture;->textureData:[B

    array-length v0, v0

    return v0
.end method

.method public getTextureData()[B
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/layar/core/StaticTexture;->textureData:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method
