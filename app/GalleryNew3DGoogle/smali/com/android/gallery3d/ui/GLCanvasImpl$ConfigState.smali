.class Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GLCanvasImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigState"
.end annotation


# instance fields
.field mAlpha:F

.field mMatrix:[F

.field mNextFree:Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;

.field mRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    .line 876
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/GLCanvasImpl$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/android/gallery3d/ui/GLCanvasImpl;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 880
    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setAlpha(F)V

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 882
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mRect:Landroid/graphics/Rect;

    .line 883
    .local v0, rect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->access$100(Lcom/android/gallery3d/ui/GLCanvasImpl;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 884
    invoke-static {p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->access$200(Lcom/android/gallery3d/ui/GLCanvasImpl;)Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 887
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    aget v1, v1, v6

    const/high16 v2, -0x80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    invoke-static {p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->access$300(Lcom/android/gallery3d/ui/GLCanvasImpl;)[F

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 890
    :cond_2
    return-void
.end method
