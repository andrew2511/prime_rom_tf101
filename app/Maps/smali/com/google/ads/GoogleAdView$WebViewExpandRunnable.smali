.class Lcom/google/ads/GoogleAdView$WebViewExpandRunnable;
.super Ljava/lang/Object;
.source "GoogleAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/GoogleAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewExpandRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/GoogleAdView;


# direct methods
.method private constructor <init>(Lcom/google/ads/GoogleAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/google/ads/GoogleAdView$WebViewExpandRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/GoogleAdView;Lcom/google/ads/GoogleAdView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/google/ads/GoogleAdView$WebViewExpandRunnable;-><init>(Lcom/google/ads/GoogleAdView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$WebViewExpandRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$1000(Lcom/google/ads/GoogleAdView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$WebViewExpandRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$700(Lcom/google/ads/GoogleAdView;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$WebViewExpandRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$1100(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/GoogleAdOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/GoogleAdOverlay;->dimBackground()V

    goto :goto_0
.end method
