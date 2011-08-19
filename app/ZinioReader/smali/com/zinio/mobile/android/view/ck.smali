.class final Lcom/zinio/mobile/android/view/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private b:F

.field private final c:F

.field private synthetic d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 652
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput v0, p0, Lcom/zinio/mobile/android/view/ck;->a:F

    .line 654
    iput v0, p0, Lcom/zinio/mobile/android/view/ck;->b:F

    .line 656
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/zinio/mobile/android/view/ck;->c:F

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4120

    const/4 v3, 0x1

    .line 659
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, v1, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->j:Z

    .line 661
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 662
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->k:Lcom/zinio/mobile/android/view/bu;

    .line 663
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 665
    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/view/bu;->removeMessages(I)V

    .line 666
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iput-boolean v3, v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->l:Z

    .line 667
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->i:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/zinio/mobile/android/view/ck;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/zinio/mobile/android/view/ck;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->k:Lcom/zinio/mobile/android/view/bu;

    .line 673
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 675
    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/view/bu;->removeMessages(I)V

    .line 676
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ck;->d:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iput-boolean v3, v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->l:Z

    .line 677
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 678
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/ck;->a:F

    .line 679
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/ck;->b:F

    .line 682
    :cond_3
    return v5

    :cond_4
    move v0, v5

    .line 660
    goto :goto_0
.end method
