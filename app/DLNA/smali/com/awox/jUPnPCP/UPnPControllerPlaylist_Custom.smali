.class public Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;
.super Lcom/awox/jUPnPCP/UPnPControllerPlaylist;
.source "UPnPControllerPlaylist_Custom.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPControllerPlaylist_CustomUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPControllerPlaylist_Custom__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;-><init>(JZ)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPControllerPlaylist_Custom__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;-><init>(JZ)V

    .line 34
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Add(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_Custom_Add__SWIG_2(JLcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public Add(Ljava/lang/String;Lcom/awox/jUPnPCP/CDSEntryInfo;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCPtr:J

    invoke-static {p2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getCPtr(Lcom/awox/jUPnPCP/CDSEntryInfo;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_Custom_Add__SWIG_1(JLcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;Ljava/lang/String;JLcom/awox/jUPnPCP/CDSEntryInfo;)V

    .line 46
    return-void
.end method

.method public Add(Ljava/lang/String;Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCPtr:J

    invoke-static {p2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getCPtr(Lcom/awox/jUPnPCP/CDSEntryInfo;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getCPtr(Lcom/awox/jUPnPCP/CDSResourceInfo;)J

    move-result-wide v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_Custom_Add__SWIG_0(JLcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;Ljava/lang/String;JLcom/awox/jUPnPCP/CDSEntryInfo;JLcom/awox/jUPnPCP/CDSResourceInfo;)V

    .line 42
    return-void
.end method

.method public GetContainer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_Custom_GetContainer(JLcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCMemOwn:Z

    .line 28
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_Custom;->swigCPtr:J

    .line 29
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
