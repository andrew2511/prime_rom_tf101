.class public Lcom/android/browser/WebViewFastScroller$ScrollFade;
.super Ljava/lang/Object;
.source "WebViewFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebViewFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Lcom/android/browser/WebViewFastScroller;


# direct methods
.method public constructor <init>(Lcom/android/browser/WebViewFastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->this$0:Lcom/android/browser/WebViewFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xd0

    .line 469
    iget-object v3, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->this$0:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v3}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 470
    const/16 v3, 0xd0

    .line 480
    :goto_0
    return v3

    .line 473
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 474
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 475
    const/4 v0, 0x0

    .local v0, alpha:I
    :goto_1
    move v3, v0

    .line 480
    goto :goto_0

    .line 477
    .end local v0           #alpha:I
    :cond_1
    iget-wide v3, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->this$0:Lcom/android/browser/WebViewFastScroller;

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/android/browser/WebViewFastScroller$ScrollFade;->startFade()V

    .line 494
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/WebViewFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->this$0:Lcom/android/browser/WebViewFastScroller;

    invoke-static {v0}, Lcom/android/browser/WebViewFastScroller;->access$000(Lcom/android/browser/WebViewFastScroller;)Lcom/android/browser/ScrollWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ScrollWebView;->invalidate()V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->this$0:Lcom/android/browser/WebViewFastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 463
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->mFadeDuration:J

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->mStartTime:J

    .line 465
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller$ScrollFade;->this$0:Lcom/android/browser/WebViewFastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    .line 466
    return-void
.end method
