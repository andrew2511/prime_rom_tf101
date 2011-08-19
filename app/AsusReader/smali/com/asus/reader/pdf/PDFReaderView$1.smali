.class Lcom/asus/reader/pdf/PDFReaderView$1;
.super Ljava/lang/Object;
.source "PDFReaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/pdf/PDFReaderView;

.field final synthetic val$ScaleFactor:F

.field final synthetic val$centerX:F

.field final synthetic val$centerY:F

.field final synthetic val$duration:F

.field final synthetic val$increasePerMs:F

.field final synthetic val$increaseXMs:F

.field final synthetic val$increaseYMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/asus/reader/pdf/PDFReaderView;FJFFFFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    iput p2, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$duration:F

    iput-wide p3, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$startTime:J

    iput p5, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$oldScale:F

    iput p6, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$increasePerMs:F

    iput p7, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$centerX:F

    iput p8, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$increaseXMs:F

    iput p9, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$centerY:F

    iput p10, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$increaseYMs:F

    iput p11, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$ScaleFactor:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 366
    .local v12, now:J
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$duration:F

    iget-wide v4, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$startTime:J

    sub-long v4, v12, v4

    long-to-float v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 367
    .local v11, currentMs:F
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$oldScale:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$increasePerMs:F

    mul-float/2addr v1, v11

    add-float/2addr v1, v0

    .line 368
    .local v1, targetScale:F
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$centerX:F

    iget v2, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$increaseXMs:F

    mul-float/2addr v2, v11

    add-float/2addr v2, v0

    .line 369
    .local v2, nowCenterX:F
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$centerY:F

    iget v3, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$increaseYMs:F

    mul-float/2addr v3, v11

    add-float/2addr v3, v0

    .line 370
    .local v3, nowCenterY:F
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    iget v4, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$ScaleFactor:F

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    iget v5, v5, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    iget v6, v6, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/pdf/PDFReaderView;->access$000(Lcom/asus/reader/pdf/PDFReaderView;FFFFFF)V

    .line 372
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$duration:F

    cmpg-float v0, v11, v0

    if-gez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFReaderView;->access$100(Lcom/asus/reader/pdf/PDFReaderView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->mPageStatus:I

    .line 384
    .end local v1           #targetScale:F
    :cond_0
    :goto_0
    return-void

    .line 376
    .restart local v1       #targetScale:F
    :cond_1
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    iget v5, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$ScaleFactor:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$ScaleFactor:F

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    iget v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->viewWidth:F

    const/high16 v1, 0x4000

    div-float v9, v0, v1

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    .end local v1           #targetScale:F
    iget v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->viewHeight:F

    const/high16 v1, 0x4000

    div-float v10, v0, v1

    invoke-static/range {v4 .. v10}, Lcom/asus/reader/pdf/PDFReaderView;->access$000(Lcom/asus/reader/pdf/PDFReaderView;FFFFFF)V

    .line 377
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/reader/pdf/PDFReaderView;->screenBound(Landroid/view/MotionEvent;)Z

    .line 378
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasScale:Z

    .line 379
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->isOnDoubleTap:Z

    .line 380
    iget v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->val$ScaleFactor:F

    const v1, 0x3f8ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFReaderView$1;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v0}, Lcom/asus/reader/pdf/PDFReaderView;->startPartialPage()V

    goto :goto_0
.end method
