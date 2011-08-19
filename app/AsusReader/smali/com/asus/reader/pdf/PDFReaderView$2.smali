.class Lcom/asus/reader/pdf/PDFReaderView$2;
.super Ljava/lang/Object;
.source "PDFReaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/pdf/PDFReaderView;->scrollTo(ZZFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/pdf/PDFReaderView;

.field final synthetic val$baseX:F

.field final synthetic val$baseY:F

.field final synthetic val$duration:F

.field final synthetic val$increasePerMsX:F

.field final synthetic val$increasePerMsY:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/asus/reader/pdf/PDFReaderView;FJFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    iput p2, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$duration:F

    iput-wide p3, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$startTime:J

    iput p5, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$baseX:F

    iput p6, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$increasePerMsX:F

    iput p7, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$baseY:F

    iput p8, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$increasePerMsY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 434
    .local v1, now:J
    iget v5, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$duration:F

    iget-wide v6, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$startTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 435
    .local v0, currentMs:F
    iget v5, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$baseX:F

    iget v6, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$increasePerMsX:F

    mul-float/2addr v6, v0

    add-float v3, v5, v6

    .line 436
    .local v3, targetX:F
    iget v5, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$baseY:F

    iget v6, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$increasePerMsY:F

    mul-float/2addr v6, v0

    add-float v4, v5, v6

    .line 437
    .local v4, targetY:F
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-static {v5, v3, v4}, Lcom/asus/reader/pdf/PDFReaderView;->access$200(Lcom/asus/reader/pdf/PDFReaderView;FF)V

    .line 439
    iget v5, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->val$duration:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 440
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$100(Lcom/asus/reader/pdf/PDFReaderView;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFReaderView;->access$300(Lcom/asus/reader/pdf/PDFReaderView;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->scale:F

    const v6, 0x3f8ccccd

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 443
    iget-object v5, p0, Lcom/asus/reader/pdf/PDFReaderView$2;->this$0:Lcom/asus/reader/pdf/PDFReaderView;

    invoke-virtual {v5}, Lcom/asus/reader/pdf/PDFReaderView;->startPartialPage()V

    goto :goto_0
.end method
