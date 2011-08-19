.class public Lcom/google/android/music/sync/google/model/SyncablePlaylistEntryFeed$PlaylistEntryListData;
.super Lcom/google/api/client/json/GenericJson;
.source "SyncablePlaylistEntryFeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/SyncablePlaylistEntryFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistEntryListData"
.end annotation


# instance fields
.field public items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntryFeed$PlaylistEntryListData;->items:Ljava/util/List;

    return-void
.end method
