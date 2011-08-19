.class Lcom/google/android/opengl/glview/Scroller$ThumbBar;
.super Lcom/google/android/opengl/glview/Scroller$BaseBar;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;
    }
.end annotation


# static fields
.field private static final THUMB_BAR_VELOCITY_SCALE_FACTOR:F = 20.0f


# instance fields
.field private mdU:F

.field final synthetic this$0:Lcom/google/android/opengl/glview/Scroller;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/Scroller;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$BaseBar;-><init>(Lcom/google/android/opengl/glview/Scroller;)V

    .line 220
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/opengl/glview/Scroller$ThumbBar;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->setDU(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/opengl/glview/Scroller$ThumbBar;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    iput p1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mdU:F

    return p1
.end method

.method private setDU(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 300
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mHorizontalScrolling:Z

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->width()F

    move-result v0

    .line 302
    .local v0, length:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 307
    .local v1, u:F
    :goto_0
    div-float v2, v1, v0

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mdU:F

    .line 308
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->updateThumbPosition()V

    .line 309
    return-void

    .line 304
    .end local v0           #length:F
    .end local v1           #u:F
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->height()F

    move-result v0

    .line 305
    .restart local v0       #length:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .restart local v1       #u:F
    goto :goto_0
.end method


# virtual methods
.method protected gestureDown(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 2
    .parameter "e0"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->setDU(Landroid/view/MotionEvent;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 292
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar$ThumbBarTracker;-><init>(Lcom/google/android/opengl/glview/Scroller$ThumbBar;)V

    .line 294
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinLength(Z)F
    .locals 1
    .parameter "horizontal"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbPosition()F
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 313
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mHorizontalScrolling:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->x()F

    move-result v0

    iget v1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mdU:F

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->width()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 316
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->y()F

    move-result v0

    iget v1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mdU:F

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->height()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public layout(ZFF)V
    .locals 3
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 276
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->internalLayout(ZFF)V

    .line 277
    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v0

    .line 279
    .local v0, thumbLength:F
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mHorizontalScrolling:Z

    if-ne v1, p1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->getThumbPosition()F

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 285
    .end local v0           #thumbLength:F
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local v0       #thumbLength:F
    :cond_1
    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    goto :goto_0
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 5
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    const/high16 v4, 0x41a0

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, dx:F
    const/4 v1, 0x0

    .line 259
    .local v1, dy:F
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mHorizontalScrolling:Z

    if-eqz v2, :cond_0

    .line 260
    iget v2, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mdU:F

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->width()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    mul-float v0, v2, v4

    .line 264
    :goto_0
    iget-object v2, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v2}, Lcom/google/android/opengl/glview/Scroller;->access$400(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 266
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v2

    return v2

    .line 262
    :cond_0
    iget v2, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mdU:F

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->height()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    mul-float v1, v2, v4

    goto :goto_0
.end method

.method public updateThumbPosition()V
    .locals 5

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->x()F

    move-result v0

    .line 323
    .local v0, x:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->y()F

    move-result v1

    .line 324
    .local v1, y:F
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mHorizontalScrolling:Z

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->getThumbPosition()F

    move-result v0

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    iget-object v3, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 330
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ThumbBar;->getThumbPosition()F

    move-result v1

    goto :goto_0
.end method
