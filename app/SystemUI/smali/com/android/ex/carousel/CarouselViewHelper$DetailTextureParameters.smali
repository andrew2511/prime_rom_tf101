.class public Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/carousel/CarouselViewHelper;
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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetX:F

    .line 54
    iput p2, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetY:F

    .line 55
    iput v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetX:F

    .line 56
    iput v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    .line 57
    return-void
.end method
