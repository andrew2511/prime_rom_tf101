.class public Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureParameters"
.end annotation


# instance fields
.field public mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 0
    .parameter "matrix"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;->mMatrix:Landroid/graphics/Matrix;

    .line 45
    return-void
.end method
