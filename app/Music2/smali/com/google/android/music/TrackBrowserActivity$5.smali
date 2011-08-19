.class Lcom/google/android/music/TrackBrowserActivity$5;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field artistname:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getSecondaryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$5;->artistname:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 561
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$5;->artistname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->setMainArtist(Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 564
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$5;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 566
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    return-void
.end method
