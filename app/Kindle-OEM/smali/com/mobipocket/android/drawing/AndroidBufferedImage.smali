.class public Lcom/mobipocket/android/drawing/AndroidBufferedImage;
.super Ljava/lang/Object;
.source "AndroidBufferedImage.java"

# interfaces
.implements Lcom/amazon/system/drawing/BufferedImage;


# instance fields
.field private final image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mobipocket/android/drawing/AndroidBufferedImage;->image:Landroid/graphics/Bitmap;

    .line 23
    return-void
.end method


# virtual methods
.method public disposeGraphics()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidBufferedImage;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGraphics()Lcom/amazon/system/drawing/Graphics;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidGraphics;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidBufferedImage;->image:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Lcom/mobipocket/android/drawing/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method
