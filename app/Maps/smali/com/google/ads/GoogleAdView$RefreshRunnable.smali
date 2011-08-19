.class Lcom/google/ads/GoogleAdView$RefreshRunnable;
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
    name = "RefreshRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/GoogleAdView;


# direct methods
.method private constructor <init>(Lcom/google/ads/GoogleAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/ads/GoogleAdView$RefreshRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/GoogleAdView;Lcom/google/ads/GoogleAdView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 851
    invoke-direct {p0, p1}, Lcom/google/ads/GoogleAdView$RefreshRunnable;-><init>(Lcom/google/ads/GoogleAdView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 854
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$RefreshRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$1200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/GoogleAdView$RefreshRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-virtual {v0}, Lcom/google/ads/GoogleAdView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$RefreshRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$1000(Lcom/google/ads/GoogleAdView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 860
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$RefreshRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    iget-object v1, p0, Lcom/google/ads/GoogleAdView$RefreshRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v1}, Lcom/google/ads/GoogleAdView;->access$1200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdSpec;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/ads/GoogleAdView;->access$1300(Lcom/google/ads/GoogleAdView;Lcom/google/ads/AdSpec;Z)V

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$RefreshRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$1400(Lcom/google/ads/GoogleAdView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$RefreshRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    iget-object v1, p0, Lcom/google/ads/GoogleAdView$RefreshRunnable;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-static {v1}, Lcom/google/ads/GoogleAdView;->access$1400(Lcom/google/ads/GoogleAdView;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/ads/GoogleAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
