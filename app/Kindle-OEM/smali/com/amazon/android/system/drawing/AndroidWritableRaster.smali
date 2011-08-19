.class Lcom/amazon/android/system/drawing/AndroidWritableRaster;
.super Ljava/lang/Object;
.source "AndroidWritableRaster.java"

# interfaces
.implements Lcom/amazon/system/drawing/WritableRaster;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/android/system/drawing/AndroidWritableRaster;->bitmap:Landroid/graphics/Bitmap;

    .line 14
    return-void
.end method


# virtual methods
.method public getPixels(IIII[I)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "pixels"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidWritableRaster;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move-object v1, p5

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 20
    return-void
.end method

.method public setPixels(IIII[I)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "pixels"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/android/system/drawing/AndroidWritableRaster;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move-object v1, p5

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 26
    return-void
.end method
