.class Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;
.super Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;
.source "MusicSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/MusicSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TickledDownstreamState"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;)V
    .locals 2
    .parameter "feed"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$1;)V

    .line 150
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$2;->$SwitchMap$com$google$android$music$sync$google$MusicSyncAdapter$DownstreamState$Feed:[I

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 152
    :pswitch_0
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->TRACKS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_0

    .line 157
    :pswitch_1
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLAYLISTS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onDoneWithFeed()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    sget-object v1, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLAYLISTS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    if-ne v0, v1, :cond_0

    .line 166
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLENTRIES:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_0
.end method
