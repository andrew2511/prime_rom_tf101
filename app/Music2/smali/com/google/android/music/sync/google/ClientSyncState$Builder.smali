.class public Lcom/google/android/music/sync/google/ClientSyncState$Builder;
.super Ljava/lang/Object;
.source "ClientSyncState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/ClientSyncState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEtagPlaylist:Ljava/lang/String;

.field private mEtagPlaylistEntry:Ljava/lang/String;

.field private mEtagTrack:Ljava/lang/String;

.field private mRemoteAccount:Ljava/lang/Integer;

.field private mRemotePlaylistVersion:Ljava/lang/Long;

.field private mRemotePlentryVersion:Ljava/lang/Long;

.field private mRemoteTrackVersion:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/sync/google/ClientSyncState$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/music/sync/google/ClientSyncState;)V
    .locals 1
    .parameter "clone"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-object v0, p1, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemoteTrackVersion:Ljava/lang/Long;

    .line 65
    iget-object v0, p1, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemotePlaylistVersion:Ljava/lang/Long;

    .line 66
    iget-object v0, p1, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemotePlentryVersion:Ljava/lang/Long;

    .line 67
    iget-object v0, p1, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemoteAccount:Ljava/lang/Integer;

    .line 68
    iget-object v0, p1, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mEtagPlaylist:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mEtagPlaylistEntry:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mEtagTrack:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/sync/google/ClientSyncState;Lcom/google/android/music/sync/google/ClientSyncState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;-><init>(Lcom/google/android/music/sync/google/ClientSyncState;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/music/sync/google/ClientSyncState;
    .locals 9

    .prologue
    .line 109
    new-instance v0, Lcom/google/android/music/sync/google/ClientSyncState;

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemoteAccount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemoteTrackVersion:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemotePlaylistVersion:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemotePlentryVersion:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mEtagTrack:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mEtagPlaylist:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mEtagPlaylistEntry:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/music/sync/google/ClientSyncState;-><init>(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/sync/google/ClientSyncState$1;)V

    return-object v0
.end method

.method public setEtagPlaylist(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .locals 0
    .parameter "etagPlaylist"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mEtagPlaylist:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public setEtagPlaylistEntry(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .locals 0
    .parameter "etagPlaylistEntry"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mEtagPlaylistEntry:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setEtagTrack(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .locals 0
    .parameter "etagTrack"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mEtagTrack:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setRemoteAccount(I)Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .locals 1
    .parameter "remoteAccount"

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemoteAccount:Ljava/lang/Integer;

    .line 75
    return-object p0
.end method

.method public setRemotePlaylistVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .locals 1
    .parameter "remoteVersion"

    .prologue
    .line 84
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemotePlaylistVersion:Ljava/lang/Long;

    .line 85
    return-object p0
.end method

.method public setRemotePlentryVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .locals 1
    .parameter "remoteVersion"

    .prologue
    .line 89
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemotePlentryVersion:Ljava/lang/Long;

    .line 90
    return-object p0
.end method

.method public setRemoteTrackVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .locals 1
    .parameter "remoteVersion"

    .prologue
    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->mRemoteTrackVersion:Ljava/lang/Long;

    .line 80
    return-object p0
.end method
