.class public Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;
.super Ljava/lang/Object;
.source "CmdRetrieveURLInBuffer.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdRetrieveURLInBuffer__SWIG_2(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;-><init>(JZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;J)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdRetrieveURLInBuffer__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;-><init>(JZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;JLcom/awox/jUPnPCP/SWIGTYPE_p_CmdRetrieveURLExtraInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {p5}, Lcom/awox/jUPnPCP/SWIGTYPE_p_CmdRetrieveURLExtraInfo;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_CmdRetrieveURLExtraInfo;)J

    move-result-wide v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdRetrieveURLInBuffer__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;JJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;-><init>(JZ)V

    .line 48
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCMemOwn:Z

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getMGrowingBuffer()Lcom/awox/jUPnPCP/SWIGTYPE_p_awGrowingBuffer;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/awox/jUPnPCP/SWIGTYPE_p_awGrowingBuffer;

    iget-wide v1, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRetrieveURLInBuffer_mGrowingBuffer_get(JLcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awGrowingBuffer;-><init>(JZ)V

    return-object v0
.end method

.method public getMMaxDownloadSize()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRetrieveURLInBuffer_mMaxDownloadSize_get(JLcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMfDownloadedMaxSize()Z
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRetrieveURLInBuffer_mfDownloadedMaxSize_get(JLcom/awox/jUPnPCP/CmdRetrieveURLInBuffer;)Z

    move-result v0

    return v0
.end method
