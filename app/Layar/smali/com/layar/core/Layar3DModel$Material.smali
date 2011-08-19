.class Lcom/layar/core/Layar3DModel$Material;
.super Ljava/lang/Object;
.source "Layar3DModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/core/Layar3DModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Material"
.end annotation


# instance fields
.field ambientColor:Lcom/layar/core/Layar3DModel$Color;

.field diffuseColor:Lcom/layar/core/Layar3DModel$Color;

.field specularColor:Lcom/layar/core/Layar3DModel$Color;

.field specularExponent:I

.field texture:Lcom/layar/core/Texture;

.field textureId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/layar/core/Layar3DModel$Color;

    invoke-direct {v0}, Lcom/layar/core/Layar3DModel$Color;-><init>()V

    iput-object v0, p0, Lcom/layar/core/Layar3DModel$Material;->ambientColor:Lcom/layar/core/Layar3DModel$Color;

    .line 42
    new-instance v0, Lcom/layar/core/Layar3DModel$Color;

    invoke-direct {v0}, Lcom/layar/core/Layar3DModel$Color;-><init>()V

    iput-object v0, p0, Lcom/layar/core/Layar3DModel$Material;->diffuseColor:Lcom/layar/core/Layar3DModel$Color;

    .line 43
    new-instance v0, Lcom/layar/core/Layar3DModel$Color;

    invoke-direct {v0}, Lcom/layar/core/Layar3DModel$Color;-><init>()V

    iput-object v0, p0, Lcom/layar/core/Layar3DModel$Material;->specularColor:Lcom/layar/core/Layar3DModel$Color;

    .line 40
    return-void
.end method
