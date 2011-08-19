.class public Lcom/android/browser/ScrollWebView$FloatFade;
.super Ljava/lang/Object;
.source "ScrollWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ScrollWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatFade"
.end annotation


# instance fields
.field mStartTime:J

.field final synthetic this$0:Lcom/android/browser/ScrollWebView;


# direct methods
.method public constructor <init>(Lcom/android/browser/ScrollWebView;)V
    .locals 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/browser/ScrollWebView$FloatFade;->this$0:Lcom/android/browser/ScrollWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/ScrollWebView$FloatFade;->mStartTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/browser/ScrollWebView$FloatFade;->this$0:Lcom/android/browser/ScrollWebView;

    invoke-static {v0}, Lcom/android/browser/ScrollWebView;->access$000(Lcom/android/browser/ScrollWebView;)Lcom/android/browser/WebViewFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/WebViewFastScroller;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/browser/ScrollWebView$FloatFade;->this$0:Lcom/android/browser/ScrollWebView;

    invoke-static {v0}, Lcom/android/browser/ScrollWebView;->access$000(Lcom/android/browser/ScrollWebView;)Lcom/android/browser/WebViewFastScroller;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    .line 340
    :cond_0
    return-void
.end method
