.class public Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailTextureParameters"
.end annotation


# instance fields
.field public lineOffsetX:F

.field public lineOffsetY:F

.field public textureOffsetX:F

.field public textureOffsetY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "textureOffsetX"
    .parameter "textureOffsetY"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetX:F

    .line 53
    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetY:F

    .line 54
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetX:F

    .line 55
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    .line 56
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "textureOffsetX"
    .parameter "textureOffsetY"
    .parameter "lineOffsetX"
    .parameter "lineOffsetY"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetX:F

    .line 61
    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetY:F

    .line 62
    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetX:F

    .line 63
    iput p4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    .line 64
    return-void
.end method
