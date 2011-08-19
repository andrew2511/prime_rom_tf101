.class Lcom/android/camera/ui/ColorTexture;
.super Ljava/lang/Object;
.source "ColorTexture.java"

# interfaces
.implements Lcom/android/camera/ui/Texture;


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/android/camera/ui/ColorTexture;->mColor:I

    .line 25
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/ui/GLRootView;IIII)V
    .locals 6
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 31
    iget v5, p0, Lcom/android/camera/ui/ColorTexture;->mColor:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->drawColor(IIIII)V

    .line 32
    return-void
.end method
