.class Lcom/google/android/music/TrackBrowserActivity$3;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/BottomBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarChanged()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 414
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    .line 424
    .local v1, viewToSetPaddingOn:Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getBottomBarHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/TrackBrowserActivity;->access$902(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/OfflineMusicManager;

    .line 431
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$900(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/medialist/SongList;->supportsOfflineCaching()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 434
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$900(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/medialist/SongList;->isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;)Z

    move-result v0

    .line 436
    .local v0, selectedForOffline:Z
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1000(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1000(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1100(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 440
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1100(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 441
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1100(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 451
    .end local v0           #selectedForOffline:Z
    :cond_2
    :goto_1
    return-void

    .line 422
    .end local v1           #viewToSetPaddingOn:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$700(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v1

    .restart local v1       #viewToSetPaddingOn:Landroid/view/View;
    goto/16 :goto_0

    .line 444
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1000(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 445
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1000(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1100(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 448
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1100(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    goto :goto_1
.end method
