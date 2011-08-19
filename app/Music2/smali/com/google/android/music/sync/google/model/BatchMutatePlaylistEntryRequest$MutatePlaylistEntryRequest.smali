.class public Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;
.super Ljava/lang/Object;
.source "BatchMutatePlaylistEntryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutatePlaylistEntryRequest"
.end annotation


# instance fields
.field public mCreatePlaylistEntry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "create"
    .end annotation
.end field

.field public mDeletePlaylistEntryRemoteId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "delete"
    .end annotation
.end field

.field public mUpdatePlaylistEntry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "update"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
