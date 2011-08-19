.class Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;
.super Lcom/google/android/music/Worker;
.source "CreateInstantMixActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/CreateInstantMixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncMixCreatorWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mInstantMixCreated:Z

.field private mPlaylistLocalId:J

.field private mPlaylistRemoteId:Ljava/lang/String;

.field private mStreamingAccount:Landroid/accounts/Account;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/CreateInstantMixActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/music/CreateInstantMixActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    .line 129
    const-string v0, "AsyncMixCreatorWorker"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mPlaylistRemoteId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    return v0
.end method

.method private checkPlaylistSynced()V
    .locals 4

    .prologue
    .line 328
    iget-boolean v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mPlaylistRemoteId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v1}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mPlaylistRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/store/Store;->getLocalIdFromRemoteIdForPlaylist(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 331
    .local v0, localId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mPlaylistLocalId:J

    .line 333
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    .line 336
    .end local v0           #localId:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private getSeedValueAndName(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;J)Landroid/util/Pair;
    .locals 9
    .parameter "seedType"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 256
    const/4 v7, 0x1

    .line 258
    .local v7, use2columns:Z
    sget-object v0, Lcom/google/android/music/CreateInstantMixActivity$2;->$SwitchMap$com$google$android$music$sync$google$model$MagicPlaylistRequest$MagicPlaylistSeed$SeedType:[I

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown SeedType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_0
    invoke-static {p2, p3}, Lcom/google/android/music/store/MusicContent$XAudio;->getRemoteAudio(J)Landroid/net/Uri;

    move-result-object v1

    .line 261
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SourceId"

    aput-object v0, v2, v4

    const-string v0, "title"

    aput-object v0, v2, v5

    .line 277
    .local v2, projection:[Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 279
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v0}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 280
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    const-string v0, "InstantMixActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find row for given uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v0, v8

    :goto_1
    return-object v0

    .line 265
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :pswitch_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 266
    .restart local v1       #uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "album"

    aput-object v0, v2, v4

    .line 267
    .restart local v2       #projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 268
    goto :goto_0

    .line 270
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    :pswitch_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 271
    .restart local v1       #uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v4

    .line 272
    .restart local v2       #projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 273
    goto :goto_0

    .line 284
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    if-eqz v7, :cond_2

    .line 285
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 290
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_1

    .line 287
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 290
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onFailure(Ljava/lang/Object;)V
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    new-instance v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$2;-><init>(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method private onSuccess()V
    .locals 5

    .prologue
    .line 296
    iget-object v2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v2}, Lcom/google/android/music/CreateInstantMixActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v2}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.google.android.music.SHOW_TRACKLISTING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    new-instance v1, Lcom/google/android/music/medialist/PlaylistSongList;

    iget-wide v2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mPlaylistLocalId:J

    iget-object v4, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    .line 302
    .local v1, playlistSongList:Lcom/google/android/music/medialist/SongList;
    const-string v2, "medialist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    iget-object v2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-static {v2}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 304
    iget-object v2, p0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    invoke-virtual {v2}, Lcom/google/android/music/CreateInstantMixActivity;->finish()V

    .line 306
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #playlistSongList:Lcom/google/android/music/medialist/SongList;
    :cond_0
    return-void
.end method

.method private startInstantMixCreation()V
    .locals 20

    .prologue
    .line 162
    invoke-static {}, Lcom/google/android/music/sync/api/MusicApiClientFactory;->getInstance()Lcom/google/android/music/sync/api/MusicApiClientFactory;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v15

    new-instance v16, Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/music/CreateInstantMixActivity;->access$100(Lcom/google/android/music/CreateInstantMixActivity;)Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/music/sync/api/MusicApiClientFactory;->createApiClientWithAuthInfo(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)Lcom/google/android/music/sync/api/MusicApiClient;

    move-result-object v4

    .line 165
    .local v4, apiClient:Lcom/google/android/music/sync/api/MusicApiClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/music/CreateInstantMixActivity;->access$200(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    move-object v14, v0

    if-nez v14, :cond_0

    .line 167
    const-string v14, "InstantMixActivity"

    const-string v15, "No streaming account found.  Should not be creating instant mixes when streaming is not setup"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v14, 0x5

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    .line 248
    :goto_0
    return-void

    .line 173
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/music/CreateInstantMixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 175
    .local v8, intent:Landroid/content/Intent;
    const-string v14, "songId"

    const-wide/16 v15, -0x1

    move-object v0, v8

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 176
    .local v6, id:J
    const-wide/16 v14, -0x1

    cmp-long v14, v6, v14

    if-eqz v14, :cond_2

    .line 177
    sget-object v11, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->TRACK:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 178
    .local v11, seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    sget-boolean v14, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    if-nez v14, :cond_1

    const-string v14, "albumId"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 179
    :cond_1
    sget-boolean v14, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    if-nez v14, :cond_4

    const-string v14, "artistId"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 181
    .end local v11           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_2
    const-string v14, "albumId"

    const-wide/16 v15, -0x1

    move-object v0, v8

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 182
    const-wide/16 v14, -0x1

    cmp-long v14, v6, v14

    if-eqz v14, :cond_3

    .line 183
    sget-object v11, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ALBUM:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 184
    .restart local v11       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    sget-boolean v14, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->$assertionsDisabled:Z

    if-nez v14, :cond_4

    const-string v14, "artistId"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 186
    .end local v11           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_3
    const-string v14, "artistId"

    const-wide/16 v15, -0x1

    move-object v0, v8

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 187
    const-wide/16 v14, -0x1

    cmp-long v14, v6, v14

    if-eqz v14, :cond_5

    .line 188
    sget-object v11, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;->ARTIST:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;

    .line 195
    .restart local v11       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    :cond_4
    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->getSeedValueAndName(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;J)Landroid/util/Pair;

    move-result-object v12

    .line 196
    .local v12, seedValueAndTitle:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v12, :cond_6

    .line 197
    const/4 v14, 0x5

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 190
    .end local v11           #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    .end local v12           #seedValueAndTitle:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Must supply an artist, album, or song id to create the instant playlist with"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 201
    .restart local v11       #seedType:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;
    .restart local v12       #seedValueAndTitle:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    iget-object v5, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mTitle:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    move-object v14, v0

    new-instance v15, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker$1;-><init>(Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;)V

    invoke-virtual {v14, v15}, Lcom/google/android/music/CreateInstantMixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    invoke-static {}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->newBuilder()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    move-object v15, v0

    const v16, 0x7f0c00f1

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v12

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/music/CreateInstantMixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->setName(Ljava/lang/String;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;

    move-result-object v14

    invoke-static {}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;->newBuilder()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;

    move-result-object v15

    invoke-virtual {v15, v11}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->setSeedType(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$SeedType;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;

    move-result-object v15

    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->setSeedValue(Ljava/lang/String;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed$Builder;->build()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->addSeed(Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$MagicPlaylistSeed;)Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest$Builder;->build()Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;

    move-result-object v9

    .line 218
    .local v9, magicPlaylistRequest:Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mStreamingAccount:Landroid/accounts/Account;

    move-object v14, v0

    invoke-interface {v4, v14, v9}, Lcom/google/android/music/sync/api/MusicApiClient;->createMagicPlaylist(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;

    move-result-object v10

    .line 220
    .local v10, response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    invoke-virtual {v10}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->getStatusCode()Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    move-result-object v13

    .line 221
    .local v13, statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    sget-object v14, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->OK:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    if-ne v13, v14, :cond_7

    .line 222
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mInstantMixCreated:Z

    .line 223
    iget-object v14, v10, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mRemotePlaylistId:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->mPlaylistRemoteId:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->this$0:Lcom/google/android/music/CreateInstantMixActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/music/CreateInstantMixActivity;->access$200(Lcom/google/android/music/CreateInstantMixActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/google/android/music/MusicUtils;->requestSync(Lcom/google/android/music/jumper/MusicPreferences;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_6

    .line 245
    :goto_1
    invoke-interface {v4}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto/16 :goto_0

    .line 227
    :cond_7
    const/4 v14, 0x5

    :try_start_1
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 230
    .end local v10           #response:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .end local v13           #statusCode:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 231
    .local v5, e:Landroid/accounts/AuthenticatorException;
    :try_start_2
    const-string v14, "InstantMixActivity"

    invoke-virtual {v5}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    invoke-interface {v4}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    .line 247
    .end local v5           #e:Landroid/accounts/AuthenticatorException;
    :goto_2
    const/4 v14, 0x5

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 232
    :catch_1
    move-exception v14

    move-object v5, v14

    .line 233
    .local v5, e:Lcom/google/android/music/store/InvalidDataException;
    :try_start_3
    const-string v14, "InstantMixActivity"

    invoke-virtual {v5}, Lcom/google/android/music/store/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    invoke-interface {v4}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_2

    .line 234
    .end local v5           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_2
    move-exception v14

    move-object v5, v14

    .line 235
    .local v5, e:Lcom/google/android/music/sync/common/SyncHttpException;
    :try_start_4
    const-string v14, "InstantMixActivity"

    invoke-virtual {v5}, Lcom/google/android/music/sync/common/SyncHttpException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    invoke-interface {v4}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_2

    .line 236
    .end local v5           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_3
    move-exception v14

    move-object v5, v14

    .line 237
    .local v5, e:Ljava/io/IOException;
    :try_start_5
    const-string v14, "InstantMixActivity"

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 245
    invoke-interface {v4}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_2

    .line 238
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v14

    move-object v5, v14

    .line 239
    .local v5, e:Lcom/google/android/music/sync/api/BadRequestException;
    :try_start_6
    const-string v14, "InstantMixActivity"

    invoke-virtual {v5}, Lcom/google/android/music/sync/api/BadRequestException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    invoke-interface {v4}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_2

    .line 240
    .end local v5           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_5
    move-exception v14

    move-object v5, v14

    .line 241
    .local v5, e:Lcom/google/android/music/sync/api/ForbiddenException;
    :try_start_7
    const-string v14, "InstantMixActivity"

    invoke-virtual {v5}, Lcom/google/android/music/sync/api/ForbiddenException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 245
    invoke-interface {v4}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_2

    .line 242
    .end local v5           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_6
    move-exception v14

    move-object v5, v14

    .line 243
    .local v5, e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    :try_start_8
    const-string v14, "InstantMixActivity"

    invoke-virtual {v5}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 245
    invoke-interface {v4}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    goto :goto_2

    .end local v5           #e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    :catchall_0
    move-exception v14

    invoke-interface {v4}, Lcom/google/android/music/sync/api/MusicApiClient;->close()V

    throw v14
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x3

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->startInstantMixCreation()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->removeMessages(I)V

    .line 140
    invoke-direct {p0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->checkPlaylistSynced()V

    goto :goto_0

    .line 143
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 148
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->removeMessages(I)V

    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->onFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->removeMessages(I)V

    .line 153
    invoke-direct {p0}, Lcom/google/android/music/CreateInstantMixActivity$AsyncMixCreatorWorker;->onSuccess()V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
