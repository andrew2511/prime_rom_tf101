.class public Lcom/awox/jUPnPCP/awError;
.super Ljava/lang/Object;
.source "awError.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_awError__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/awError;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-static {p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_awError__SWIG_2(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/awError;-><init>(JZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_awError__SWIG_1(ILjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/awError;-><init>(JZ)V

    .line 44
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/awError;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/awError;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/awError;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Lcom/awox/jUPnPCP/awError;->getCPtr(Lcom/awox/jUPnPCP/awError;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_awError__SWIG_3(JLcom/awox/jUPnPCP/awError;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/awError;-><init>(JZ)V

    .line 52
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/awError;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awError;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetErrorCode()I
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awError;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awError_GetErrorCode(JLcom/awox/jUPnPCP/awError;)I

    move-result v0

    return v0
.end method

.method public GetErrorStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awError;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awError_GetErrorStr(JLcom/awox/jUPnPCP/awError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awError;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awError_ToString(JLcom/awox/jUPnPCP/awError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awError;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/awError;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/awError;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awError;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_awError(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/awError;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/awError;->delete()V

    .line 26
    return-void
.end method
