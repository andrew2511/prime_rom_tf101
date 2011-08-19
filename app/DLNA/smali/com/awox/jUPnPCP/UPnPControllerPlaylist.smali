.class public Lcom/awox/jUPnPCP/UPnPControllerPlaylist;
.super Ljava/lang/Object;
.source "UPnPControllerPlaylist.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPControllerPlaylist;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetContainer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_GetContainer(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetCurrentTrack()I
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_GetCurrentTrack(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;)I

    move-result v0

    return v0
.end method

.method public GetRepeat()Z
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_GetRepeat(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;)Z

    move-result v0

    return v0
.end method

.method public GetShuffle()Z
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_GetShuffle(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;)Z

    move-result v0

    return v0
.end method

.method public IsFirst()Z
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_IsFirst(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;)Z

    move-result v0

    return v0
.end method

.method public IsLast()Z
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_IsLast(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;)Z

    move-result v0

    return v0
.end method

.method public IsValidTrackOrPosition(I)Z
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_IsValidTrackOrPosition(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;I)Z

    move-result v0

    return v0
.end method

.method public SetNextPosition()Lcom/awox/jUPnPCP/CmdPlaylistInfo;
    .locals 4

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_SetNextPosition(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;)J

    move-result-wide v0

    .line 41
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public SetPreviousPosition()Lcom/awox/jUPnPCP/CmdPlaylistInfo;
    .locals 4

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_SetPreviousPosition(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;)J

    move-result-wide v0

    .line 46
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public SetRepeat(Z)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_SetRepeat(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;Z)V

    .line 59
    return-void
.end method

.method public SetShuffle(Z)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_SetShuffle(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;Z)V

    .line 55
    return-void
.end method

.method public SetTrack(I)Lcom/awox/jUPnPCP/CmdPlaylistInfo;
    .locals 4
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_SetTrack(JLcom/awox/jUPnPCP/UPnPControllerPlaylist;I)J

    move-result-wide v0

    .line 36
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCMemOwn:Z

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
