.class Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayMediaListRunnable"
.end annotation


# instance fields
.field private final mSongList:Lcom/google/android/music/medialist/SongList;

.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/medialist/SongList;)V
    .locals 0
    .parameter
    .parameter "mSongList"

    .prologue
    .line 2279
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2280
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;->mSongList:Lcom/google/android/music/medialist/SongList;

    .line 2281
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2284
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;->mSongList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 2285
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNowPlayingBarVisibility()V

    .line 2286
    return-void
.end method
