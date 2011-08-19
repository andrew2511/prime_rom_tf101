.class public Lcom/google/android/youtube/core/player/BrandingOverlay;
.super Landroid/widget/ImageView;
.source "BrandingOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final player:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .locals 1
    .parameter "context"
    .parameter "player"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "player cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/YouTubePlayer;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/BrandingOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 29
    const v0, 0x7f02003f

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/BrandingOverlay;->setImageResource(I)V

    .line 30
    invoke-virtual {p0, p0}, Lcom/google/android/youtube/core/player/BrandingOverlay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/BrandingOverlay;->hide()V

    .line 32
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/BrandingOverlay;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public install()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 38
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 41
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    iget-object v1, p0, Lcom/google/android/youtube/core/player/BrandingOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/BrandingOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://www.vevo.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 55
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/BrandingOverlay;->setVisibility(I)V

    .line 51
    return-void
.end method
