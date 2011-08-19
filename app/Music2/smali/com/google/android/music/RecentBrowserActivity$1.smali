.class Lcom/google/android/music/RecentBrowserActivity$1;
.super Ljava/lang/Object;
.source "RecentBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/BottomBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RecentBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/RecentBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarChanged()V
    .locals 6

    .prologue
    .line 184
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$000(Lcom/google/android/music/RecentBrowserActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$000(Lcom/google/android/music/RecentBrowserActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/RecentBrowserActivity;->access$000(Lcom/google/android/music/RecentBrowserActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/RecentBrowserActivity;->access$000(Lcom/google/android/music/RecentBrowserActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/RecentBrowserActivity;->access$100(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getBottomBarHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 188
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/RecentBrowserActivity;->onAlbumChanged()V

    .line 190
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$100(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v0

    .line 191
    .local v0, manager:Lcom/google/android/music/OfflineMusicManager;
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$1;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 194
    new-instance v1, Lcom/google/android/music/RecentBrowserActivity$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/RecentBrowserActivity$1$1;-><init>(Lcom/google/android/music/RecentBrowserActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 203
    :cond_0
    return-void
.end method
