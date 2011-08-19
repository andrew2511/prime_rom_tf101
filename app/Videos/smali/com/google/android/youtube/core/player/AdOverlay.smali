.class public final Lcom/google/android/youtube/core/player/AdOverlay;
.super Landroid/widget/LinearLayout;
.source "AdOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/AdOverlay$Listener;
    }
.end annotation


# static fields
.field private static final PADDING:I = 0x4


# instance fields
.field private final advertisementText:Landroid/widget/TextView;

.field private final clickthroughText:Landroid/widget/TextView;

.field private final listener:Lcom/google/android/youtube/core/player/AdOverlay$Listener;

.field private final player:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/AdOverlay$Listener;)V
    .locals 6
    .parameter "context"
    .parameter "player"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    const v2, -0x333334

    const/4 v4, -0x2

    const/4 v3, 0x4

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "player cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/YouTubePlayer;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 36
    iput-object p3, p0, Lcom/google/android/youtube/core/player/AdOverlay;->listener:Lcom/google/android/youtube/core/player/AdOverlay$Listener;

    .line 38
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    const v1, 0x7f0c0098

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->advertisementText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/AdOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/AdOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    const/high16 v0, -0x7800

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->setBackgroundColor(I)V

    .line 54
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/google/android/youtube/core/player/AdOverlay;->setPadding(IIII)V

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/AdOverlay;->setVisibility(I)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/google/android/youtube/core/player/AdOverlay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public install()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->listener:Lcom/google/android/youtube/core/player/AdOverlay$Listener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->listener:Lcom/google/android/youtube/core/player/AdOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/AdOverlay$Listener;->onAdClickthrough()V

    .line 79
    :cond_0
    return-void
.end method

.method public setAd(Lcom/google/android/youtube/core/model/VastAd;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdOverlay;->clickthroughText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/VastAd;->clickthroughUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/VastAd;->clickthroughUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
