.class public Lcom/awox/jUPnPCP/UPnPCachedURL;
.super Ljava/lang/Object;
.source "UPnPCachedURL.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPCachedURL;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCachedURL_GetURL(JLcom/awox/jUPnPCP/UPnPCachedURL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUserData()Lcom/awox/jUPnPCP/SWIGTYPE_p_void;
    .locals 4

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCachedURL_GetUserData(JLcom/awox/jUPnPCP/UPnPCachedURL;)J

    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public SetUserData(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)V
    .locals 4
    .parameter

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPCachedURL_SetUserData(JLcom/awox/jUPnPCP/UPnPCachedURL;J)V

    .line 38
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCMemOwn:Z

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPCachedURL;->swigCPtr:J
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
