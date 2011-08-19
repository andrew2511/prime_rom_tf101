.class public Lcom/google/android/music/sync/google/MusicSyncAdapter;
.super Lcom/google/android/music/sync/common/AbstractSyncAdapter;
.source "MusicSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/MusicSyncAdapter$2;,
        Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;,
        Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;,
        Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;,
        Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;
    }
.end annotation


# static fields
.field private static final DEFAULT_MERGE_BLOCK_SIZE:I = 0x64

.field private static final DEFAULT_PAGE_SIZE:I = 0xfa

.field private static final DEFAULT_UPSTREAM_PAGE_SIZE:I = 0xfa

.field private static final INITIAL_VERSION:J = 0x0L

.field static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final KEY_CONTINUATION_TOKEN:Ljava/lang/String; = "continuation"

.field private static final KEY_DOWNSTREAM_STATE:Ljava/lang/String; = "downstream_state"

.field static final KEY_ETAG_PLAYLIST:Ljava/lang/String; = "etag_playlist"

.field static final KEY_ETAG_PLAYLIST_ENTRY:Ljava/lang/String; = "etag_playlist_entry"

.field static final KEY_ETAG_TRACK:Ljava/lang/String; = "etag_track"

.field static final KEY_MERGER_PLAYLIST_VERSION:Ljava/lang/String; = "merger_playlist_version"

.field static final KEY_MERGER_PLENTRY_VERSION:Ljava/lang/String; = "merger_plentry_version"

.field static final KEY_MERGER_TRACK_VERSION:Ljava/lang/String; = "merger_track_version"

.field static final KEY_REMOTE_ACCOUNT:Ljava/lang/String; = "remote_account"

.field private static final MUSIC_EVENT_LOG_AUTHORITY:Ljava/lang/String; = "com.google.android.music"

.field private static final SUBSCRIPTION_URL_PLAYLISTS:Ljava/lang/String; = "playlist-update"

.field private static final SUBSCRIPTION_URL_PLAYLIST_ENTRIES:Ljava/lang/String; = "playlist-entry-update"

.field private static final SUBSCRIPTION_URL_TRACKS:Ljava/lang/String; = "track-update"

.field public static final TAG:Ljava/lang/String; = "MusicSyncAdapter"


# instance fields
.field private final LOGV:Z

.field private mInitialPlaylistEntryVersion:J

.field private mInitialPlaylistVersion:J

.field private mInitialTrackVersion:J

.field private mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter;-><init>(Landroid/content/Context;)V

    .line 216
    const-string v0, "MusicSyncAdapter"

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    .line 218
    return-void
.end method

.method static synthetic access$102(Lcom/google/android/music/sync/google/MusicSyncAdapter;Lcom/google/android/music/sync/api/MusicApiClient;)Lcom/google/android/music/sync/api/MusicApiClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    return-object p1
.end method

.method private getChangesFromServerAsDom(Landroid/accounts/Account;Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;Ljava/util/HashMap;)Z
    .locals 16
    .parameter "account"
    .parameter "fetchQueue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 504
    .local p3, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v3, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;

    const-string v4, "downstream_state"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;

    .line 506
    .local v11, downstreamState:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;
    const-class v3, Ljava/lang/String;

    const-string v4, "continuation"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 507
    .local v9, continuationToken:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetcher: Getting changes from server for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with continuation token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    const/4 v14, 0x0

    .line 514
    .local v14, result:Lcom/google/android/music/sync/api/MusicApiClient$GetResult;,"Lcom/google/android/music/sync/api/MusicApiClient$GetResult<+Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;>;"
    :try_start_0
    invoke-virtual {v11}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v13

    .line 515
    .local v13, nextFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    sget-object v3, Lcom/google/android/music/sync/google/MusicSyncAdapter$2;->$SwitchMap$com$google$android$music$sync$google$MusicSyncAdapter$DownstreamState$Feed:[I

    invoke-virtual {v13}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 544
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown feed type for downstream sync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_6

    .line 547
    .end local v13           #nextFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 548
    .local v12, e:Lcom/google/android/music/sync/common/SyncHttpException;
    const-string v3, "MusicSyncAdapter"

    invoke-virtual {v12}, Lcom/google/android/music/sync/common/SyncHttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on fetch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 517
    .end local v12           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    .restart local v13       #nextFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    :pswitch_0
    :try_start_1
    const-class v3, Ljava/lang/String;

    const-string v4, "etag_track"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 518
    .local v6, etag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    move-object v3, v0

    const/16 v5, 0xfa

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialTrackVersion:J

    move-wide v7, v0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/google/android/music/sync/api/MusicApiClient;->getTracks(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v14

    .line 520
    iget-object v3, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 521
    const-string v3, "etag_track"

    iget-object v4, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_1 .. :try_end_1} :catch_6

    .line 567
    .end local v6           #etag:Ljava/lang/String;
    .end local v13           #nextFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    :cond_1
    :goto_0
    const-string v3, "continuation"

    iget-object v4, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mContinuationToken:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v3, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mItems:Ljava/util/Iterator;

    if-nez v3, :cond_3

    .line 569
    const-string v3, "MusicSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    const-string v3, "MusicSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No mutations found for feed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2
    :goto_1
    iget-object v3, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mContinuationToken:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 594
    invoke-virtual {v11}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->onDoneWithFeed()V

    .line 595
    const-string v3, "continuation"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-virtual {v11}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    .line 598
    :goto_2
    return v3

    .line 526
    .restart local v13       #nextFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    :pswitch_1
    :try_start_2
    const-class v3, Ljava/lang/String;

    const-string v4, "etag_playlist"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 527
    .restart local v6       #etag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    move-object v3, v0

    const/16 v5, 0xfa

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistVersion:J

    move-wide v7, v0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/google/android/music/sync/api/MusicApiClient;->getPlaylists(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v14

    .line 529
    iget-object v3, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 530
    const-string v3, "etag_playlist"

    iget-object v4, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 550
    .end local v6           #etag:Ljava/lang/String;
    .end local v13           #nextFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 551
    .local v12, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v3, v12}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 535
    .end local v12           #e:Ljava/io/IOException;
    .restart local v13       #nextFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    :pswitch_2
    :try_start_3
    const-class v3, Ljava/lang/String;

    const-string v4, "etag_playlist_entry"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 536
    .restart local v6       #etag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    move-object v3, v0

    const/16 v5, 0xfa

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistEntryVersion:J

    move-wide v7, v0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/google/android/music/sync/api/MusicApiClient;->getPlaylistEntries(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v14

    .line 538
    iget-object v3, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 539
    const-string v3, "etag_playlist_entry"

    iget-object v4, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mEtag:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_0

    .line 552
    .end local v6           #etag:Ljava/lang/String;
    .end local v13           #nextFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;
    :catch_2
    move-exception v3

    move-object v12, v3

    .line 553
    .local v12, e:Lcom/google/android/music/sync/api/BadRequestException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v3, v12}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 554
    .end local v12           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_3
    move-exception v3

    move-object v12, v3

    .line 555
    .local v12, e:Lcom/google/android/music/sync/api/ForbiddenException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v3, v12}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 556
    .end local v12           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_4
    move-exception v3

    move-object v12, v3

    .line 557
    .local v12, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v3, v12}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 558
    .end local v12           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :catch_5
    move-exception v3

    move-object v12, v3

    .line 559
    .local v12, e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    new-instance v15, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v15, v12}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/Throwable;)V

    .line 560
    .local v15, se:Lcom/google/android/music/sync/common/SoftSyncException;
    invoke-virtual {v12}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->getRetryAfter()J

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Lcom/google/android/music/sync/common/SoftSyncException;->setRetryAfter(J)V

    .line 561
    throw v15

    .line 562
    .end local v12           #e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    .end local v15           #se:Lcom/google/android/music/sync/common/SoftSyncException;
    :catch_6
    move-exception v3

    move-object v12, v3

    .line 564
    .local v12, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    .end local v14           #result:Lcom/google/android/music/sync/api/MusicApiClient$GetResult;,"Lcom/google/android/music/sync/api/MusicApiClient$GetResult<+Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v14, v3, v4, v5}, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;-><init>(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v14       #result:Lcom/google/android/music/sync/api/MusicApiClient$GetResult;,"Lcom/google/android/music/sync/api/MusicApiClient$GetResult<+Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;>;"
    goto/16 :goto_0

    .line 573
    .end local v12           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    :cond_3
    const/4 v10, 0x0

    .line 574
    .local v10, count:I
    :cond_4
    :goto_3
    iget-object v3, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mItems:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 575
    add-int/lit8 v10, v10, 0x1

    .line 577
    :try_start_4
    iget-object v3, v14, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;->mItems:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_3

    .line 578
    :catch_7
    move-exception v3

    move-object v12, v3

    .line 579
    .local v12, e:Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;
    const-string v3, "MusicSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 580
    const-string v3, "MusicSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "The reader has killed the fetch queue, so there\'s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "no point in having the fetcher continue."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 584
    .end local v12           #e:Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;
    :catch_8
    move-exception v3

    move-object v12, v3

    .line 585
    .local v12, e:Ljava/lang/InterruptedException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v3, v12}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 588
    .end local v12           #e:Ljava/lang/InterruptedException;
    :cond_5
    const-string v3, "MusicSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 589
    const-string v3, "MusicSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetcher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;->getNextFeedToSync()Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mutation(s) found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 596
    .end local v10           #count:I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 598
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V
    .locals 20
    .parameter "account"

    .prologue
    .line 314
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 315
    .local v18, newFeeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "track-update"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    const-string v4, "playlist-update"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v4, "playlist-entry-update"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 320
    .local v12, existingFeeds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 321
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "feed"

    aput-object v6, v5, v4

    .line 322
    .local v5, projection:[Ljava/lang/String;
    const-string v19, "_sync_account=? AND _sync_account_type=? AND authority=?"

    .line 325
    .local v19, where:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v7, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v7, v4

    const/4 v4, 0x2

    const-string v6, "com.google.android.music.MusicContent"

    aput-object v6, v7, v4

    .line 327
    .local v7, values:[Ljava/lang/String;
    sget-object v4, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_sync_account=? AND _sync_account_type=? AND authority=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 328
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 329
    const-string v4, "MusicSyncAdapter"

    const-string v5, "Can\'t find sync subscription feeds."

    .end local v5           #projection:[Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local p0
    :cond_0
    return-void

    .line 333
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local p0
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 334
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 335
    .local v15, id:J
    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 336
    .local v13, feed:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 339
    .end local v13           #feed:Ljava/lang/String;
    .end local v15           #id:J
    :catchall_0
    move-exception v4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 342
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v5           #projection:[Ljava/lang/String;
    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 344
    .local v17, newFeed:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 346
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v4, "_sync_account"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v4, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v4, "feed"

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v4, "service"

    const-string v5, "sj"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v4, "authority"

    const-string v5, "com.google.android.music.MusicContent"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v4, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 356
    .end local v10           #contentValues:Landroid/content/ContentValues;
    :cond_3
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 360
    .end local v17           #newFeed:Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local p0
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 361
    .local v11, existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 362
    .restart local v15       #id:J
    sget-object v4, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static newBuilder()Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected createDownstreamMerger(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/DownstreamMerger;
    .locals 6
    .parameter "mergeQueue"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/DownstreamMerger;"
        }
    .end annotation

    .prologue
    .line 259
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_merge_block_size"

    const/16 v3, 0x64

    invoke-static {v0, v1, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 261
    .local v2, blockSize:I
    new-instance v0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/sync/google/MusicDownstreamMerger;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createDownstreamReader(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILandroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/DownstreamReader;
    .locals 6
    .parameter "fetchQueue"
    .parameter "queueCapacity"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/DownstreamReader;"
        }
    .end annotation

    .prologue
    .line 253
    .local p4, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/music/sync/google/MusicDownstreamReader;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/sync/google/MusicDownstreamReader;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createUpstreamReader(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/UpstreamReader;
    .locals 2
    .parameter "upstreamQueue"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/UpstreamReader;"
        }
    .end annotation

    .prologue
    .line 267
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/music/sync/google/MusicUpstreamReader;

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createUpstreamSender(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;)Lcom/google/android/music/sync/common/UpstreamSender;
    .locals 8
    .parameter "upstreamQueue"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/music/sync/common/UpstreamSender;"
        }
    .end annotation

    .prologue
    .line 273
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_upstream_page_size"

    const/16 v3, 0xfa

    invoke-static {v0, v1, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 275
    .local v2, upstreamBlockSize:I
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_enable_track_stats_upsync"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    .line 277
    .local v7, enableTrackStatsUpSync:Z
    new-instance v0, Lcom/google/android/music/sync/google/MusicUpstreamSender;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mMusicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/sync/google/MusicUpstreamSender;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/google/android/music/sync/api/MusicApiClient;Z)V

    return-object v0
.end method

.method protected fetchDataFromServer(Landroid/accounts/Account;Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;Ljava/util/HashMap;)Z
    .locals 1
    .parameter "account"
    .parameter "fetchQueue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 494
    .local p3, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getChangesFromServerAsDom(Landroid/accounts/Account;Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .locals 5
    .parameter "sb"
    .parameter "result"

    .prologue
    const-wide/16 v3, 0x0

    .line 627
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 628
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 630
    :cond_0
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 631
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 633
    :cond_1
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 634
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 636
    :cond_2
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numEntries:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 637
    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 639
    :cond_3
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    .line 640
    const-string v0, "k"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numSkippedEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 642
    :cond_4
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    return-void
.end method

.method protected onDownstreamComplete(Landroid/accounts/Account;Ljava/util/HashMap;)V
    .locals 4
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p2, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 610
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/MediaStoreImporter;->updateLocalMusicBasedOnRemoteContentAsync(Landroid/content/Context;)V

    .line 611
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItemsAsync(Landroid/content/Context;)V

    .line 612
    return-void
.end method

.method protected onDownstreamStart(Landroid/accounts/Account;Ljava/util/HashMap;)V
    .locals 0
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, protocolState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 5
    .parameter "bytesSent"
    .parameter "bytesReceived"
    .parameter "result"

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 618
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p5}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 619
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.google.android.music"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 621
    return-void
.end method

.method protected onSyncEnd(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 5
    .parameter "syncAccount"
    .parameter "context"
    .parameter
    .parameter "success"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 289
    .local v0, accountMismatch:Z
    invoke-static {p2}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 291
    .local v1, configuredAccount:Landroid/accounts/Account;
    if-nez v1, :cond_2

    .line 292
    const-string v3, "MusicSyncAdapter"

    const-string v4, "Just synced account has been removed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x1

    .line 299
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 301
    if-nez v1, :cond_3

    const/4 v3, 0x0

    move v2, v3

    .line 304
    .local v2, requestSync:Z
    :goto_1
    sget-object v3, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v4, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;

    invoke-direct {v4, p0, p2, v2}, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter;Landroid/content/Context;Z)V

    invoke-static {v3, v4}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 310
    .end local v2           #requestSync:Z
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.music.SYNC_COMPLETE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 311
    return-void

    .line 294
    :cond_2
    invoke-virtual {p1, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    const-string v3, "MusicSyncAdapter"

    const-string v4, "Streaming account has changed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :cond_3
    const/4 v3, 0x1

    move v2, v3

    goto :goto_1
.end method

.method protected onSyncStart(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 9
    .parameter "account"
    .parameter "context"
    .parameter
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 372
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 374
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 376
    .local v0, configuredAccount:Landroid/accounts/Account;
    invoke-virtual {p1, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 381
    const-string v6, "com.google.android.music.MusicContent"

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 382
    const-string v6, "com.google.android.music.MusicContent"

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 383
    const-string v6, "MusicSyncAdapter"

    const-string v7, "Sync is requested with wrong account. Ignoring..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v6, Lcom/google/android/music/sync/common/HardSyncException;

    const-string v7, "Sync requested for unexpected account."

    invoke-direct {v6, v7}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 387
    :cond_0
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v6, :cond_1

    .line 388
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Reading client state from db."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    .line 392
    .local v4, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 393
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 395
    .local v5, syncState:Lcom/google/android/music/sync/google/ClientSyncState;
    :try_start_0
    invoke-static {v1, p1}, Lcom/google/android/music/sync/google/ClientSyncState$Helpers;->get(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Lcom/google/android/music/sync/google/ClientSyncState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 399
    invoke-virtual {v4, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 401
    if-nez v5, :cond_3

    .line 402
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v6, :cond_2

    .line 403
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "There is no sync state for this account."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 407
    invoke-static {}, Lcom/google/android/music/sync/google/ClientSyncState;->newBuilder()Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemoteTrackVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemotePlaylistVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemotePlentryVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/music/store/Store;->computeAccountHash(Landroid/accounts/Account;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemoteAccount(I)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->build()Lcom/google/android/music/sync/google/ClientSyncState;

    move-result-object v5

    .line 413
    invoke-static {v1, p1, v5}, Lcom/google/android/music/sync/google/ClientSyncState$Helpers;->set(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Lcom/google/android/music/sync/google/ClientSyncState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    const/4 v6, 0x1

    invoke-virtual {v4, v1, v6}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 420
    :cond_3
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v6, :cond_4

    .line 421
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current sync state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/music/sync/google/ClientSyncState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_4
    iget-object v6, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    if-nez v6, :cond_a

    const-wide/16 v6, 0x0

    :goto_0
    iput-wide v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialTrackVersion:J

    .line 425
    iget-object v6, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    if-nez v6, :cond_b

    const-wide/16 v6, 0x0

    :goto_1
    iput-wide v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistVersion:J

    .line 427
    iget-object v6, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    if-nez v6, :cond_c

    const-wide/16 v6, 0x0

    :goto_2
    iput-wide v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistEntryVersion:J

    .line 429
    const-string v6, "merger_track_version"

    iget-wide v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialTrackVersion:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v6, "merger_playlist_version"

    iget-wide v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistVersion:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v6, "merger_plentry_version"

    iget-wide v7, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mInitialPlaylistEntryVersion:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v6, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 433
    const-string v6, "etag_track"

    iget-object v7, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_5
    iget-object v6, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 436
    const-string v6, "etag_playlist"

    iget-object v7, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_6
    iget-object v6, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 439
    const-string v6, "etag_playlist_entry"

    iget-object v7, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_7
    const-string v6, "remote_account"

    iget-object v7, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v6, "account"

    invoke-interface {p3, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v6, "feed"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 444
    const-string v6, "feed"

    invoke-virtual {p4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, feed:Ljava/lang/String;
    const-string v6, "track-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 446
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v6, :cond_8

    .line 447
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Sync manager specified track feed type."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_8
    const-string v6, "downstream_state"

    new-instance v7, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;

    sget-object v8, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->TRACKS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    invoke-direct {v7, v8}, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;)V

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .end local v3           #feed:Ljava/lang/String;
    :cond_9
    :goto_3
    return-void

    .line 396
    :catch_0
    move-exception v2

    .line 397
    .local v2, e:Lcom/google/android/music/sync/common/ProviderException;
    :try_start_2
    new-instance v6, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v7, "Unable to read sync state: "

    invoke-direct {v6, v7, v2}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    .end local v2           #e:Lcom/google/android/music/sync/common/ProviderException;
    :catchall_0
    move-exception v6

    invoke-virtual {v4, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 414
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 415
    .restart local v2       #e:Lcom/google/android/music/sync/common/ProviderException;
    :try_start_3
    new-instance v6, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v7, "Unable to write sync state: "

    invoke-direct {v6, v7, v2}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 417
    .end local v2           #e:Lcom/google/android/music/sync/common/ProviderException;
    :catchall_1
    move-exception v6

    const/4 v7, 0x1

    invoke-virtual {v4, v1, v7}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v6

    .line 423
    :cond_a
    iget-object v6, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_0

    .line 425
    :cond_b
    iget-object v6, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_1

    .line 427
    :cond_c
    iget-object v6, v5, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_2

    .line 451
    .restart local v3       #feed:Ljava/lang/String;
    :cond_d
    const-string v6, "playlist-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 452
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v6, :cond_e

    .line 453
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Sync manager specified playlist feed type."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_e
    const-string v6, "downstream_state"

    new-instance v7, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;

    sget-object v8, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLAYLISTS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    invoke-direct {v7, v8}, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;)V

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 457
    :cond_f
    const-string v6, "playlist-entry-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 458
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v6, :cond_10

    .line 459
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Sync manager specified playlist-entry feed type."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_10
    const-string v6, "downstream_state"

    new-instance v7, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;

    sget-object v8, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLENTRIES:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    invoke-direct {v7, v8}, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;)V

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 464
    :cond_11
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v6, :cond_9

    .line 465
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync manager specified an unknown feed type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Syncing all feeds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 470
    .end local v3           #feed:Ljava/lang/String;
    :cond_12
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->LOGV:Z

    if-eqz v6, :cond_13

    .line 471
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;->mTag:Ljava/lang/String;

    const-string v7, "Sync manager provided no specific feed type.  Syncing all feeds."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_13
    const-string v6, "downstream_state"

    new-instance v7, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;

    invoke-direct {v7}, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;-><init>()V

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method
