.class Lcom/google/android/music/TrackBrowserActivity$1$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/TrackBrowserActivity$1;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v1, v1, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->refreshMetaData(Landroid/content/Context;)V

    .line 204
    :cond_0
    return-void
.end method

.method public taskCompleted()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$100(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$200(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 209
    return-void
.end method
