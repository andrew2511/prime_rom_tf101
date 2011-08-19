.class Lcom/google/android/finsky/layout/TrackList$4;
.super Ljava/lang/Object;
.source "TrackList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/TrackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/TrackList;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/TrackList;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-static {v1}, Lcom/google/android/finsky/layout/TrackList;->access$200(Lcom/google/android/finsky/layout/TrackList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 268
    .local v0, position:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    sget-object v2, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ONE_TRACK:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    invoke-static {v1, v2}, Lcom/google/android/finsky/layout/TrackList;->access$302(Lcom/google/android/finsky/layout/TrackList;Lcom/google/android/finsky/layout/TrackList$PlaybackMode;)Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    .line 271
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-static {v1}, Lcom/google/android/finsky/layout/TrackList;->access$000(Lcom/google/android/finsky/layout/TrackList;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-static {v1}, Lcom/google/android/finsky/layout/TrackList;->access$400(Lcom/google/android/finsky/layout/TrackList;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-static {v1}, Lcom/google/android/finsky/layout/TrackList;->access$400(Lcom/google/android/finsky/layout/TrackList;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 277
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    sget-object v2, Lcom/google/android/finsky/model/Track$TrackMode;->PAUSE:Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-static {v1, v2}, Lcom/google/android/finsky/layout/TrackList;->access$500(Lcom/google/android/finsky/layout/TrackList;Lcom/google/android/finsky/model/Track$TrackMode;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-static {v1}, Lcom/google/android/finsky/layout/TrackList;->access$600(Lcom/google/android/finsky/layout/TrackList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-static {v1}, Lcom/google/android/finsky/layout/TrackList;->access$400(Lcom/google/android/finsky/layout/TrackList;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 282
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    sget-object v2, Lcom/google/android/finsky/model/Track$TrackMode;->PLAYING:Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-static {v1, v2}, Lcom/google/android/finsky/layout/TrackList;->access$500(Lcom/google/android/finsky/layout/TrackList;Lcom/google/android/finsky/model/Track$TrackMode;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$4;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-static {v1, v0}, Lcom/google/android/finsky/layout/TrackList;->access$700(Lcom/google/android/finsky/layout/TrackList;I)V

    goto :goto_0
.end method
