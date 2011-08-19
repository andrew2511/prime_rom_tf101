.class public Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;
.super Ljava/lang/Object;
.source "BatchMutatePlaylistRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutatePlaylistRequest"
.end annotation


# instance fields
.field public mCreatePlaylist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "create"
    .end annotation
.end field

.field public mDeletePlaylistRemoteId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "delete"
    .end annotation
.end field

.field public mUpdatePlaylist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "update"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
