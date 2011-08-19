.class Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;
.super Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;
.source "MusicSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/MusicSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllFeedsDownstreamState"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$1;)V

    .line 182
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->TRACKS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    .line 183
    return-void
.end method


# virtual methods
.method public onDoneWithFeed()V
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$2;->$SwitchMap$com$google$android$music$sync$google$MusicSyncAdapter$DownstreamState$Feed:[I

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    invoke-virtual {v1}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 190
    :pswitch_0
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLAYLISTS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_0

    .line 195
    :pswitch_1
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLENTRIES:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_0

    .line 200
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
