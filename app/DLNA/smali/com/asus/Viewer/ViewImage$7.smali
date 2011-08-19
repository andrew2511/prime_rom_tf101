.class Lcom/asus/Viewer/ViewImage$7;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/ViewImage;->setupOnTouchListeners(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/ViewImage;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ViewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 362
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$700(Lcom/asus/Viewer/ViewImage;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 363
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$700(Lcom/asus/Viewer/ViewImage;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$800(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 365
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$900(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fd0

    iget-object v4, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v4}, Lcom/asus/Viewer/ViewImage;->access$1000(Lcom/asus/Viewer/ViewImage;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v1, v1, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    if-eq v0, v1, :cond_4

    .line 367
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1104(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/asus/Viewer/ViewImage;->setImage(IZ)V

    .line 372
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$900(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4030

    iget-object v4, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v4}, Lcom/asus/Viewer/ViewImage;->access$1000(Lcom/asus/Viewer/ViewImage;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1106(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/asus/Viewer/ViewImage;->setImage(IZ)V

    .line 379
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$500(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/ViewImageLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$900(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1, v6}, Lcom/asus/Viewer/ViewImageLayout;->scrollBy(II)V

    .line 380
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0, v6}, Lcom/asus/Viewer/ViewImage;->access$902(Lcom/asus/Viewer/ViewImage;I)I

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 387
    :cond_3
    return v7

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/asus/Viewer/ViewImage;->setImage(IZ)V

    goto :goto_0

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage$7;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v1}, Lcom/asus/Viewer/ViewImage;->access$1100(Lcom/asus/Viewer/ViewImage;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/asus/Viewer/ViewImage;->setImage(IZ)V

    goto :goto_1
.end method
