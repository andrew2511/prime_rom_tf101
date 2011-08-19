.class public Lcom/awox/jUPnPCP/InternetPushParserGeneric;
.super Ljava/lang/Object;
.source "InternetPushParserGeneric.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/InternetPushParserGeneric;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/InternetPushParserGeneric;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/InternetPushParserGeneric;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/InternetPushParserGeneric;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public HandleCompletedUPnPCommand(Lcom/awox/jUPnPCP/UPnPCommand;Lcom/awox/jUPnPCP/SWIGTYPE_p_UPnPCommandCompletedAction;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/InternetPushParserGeneric;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getCPtr(Lcom/awox/jUPnPCP/UPnPCommand;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_UPnPCommandCompletedAction;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_UPnPCommandCompletedAction;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->InternetPushParserGeneric_HandleCompletedUPnPCommand(JLcom/awox/jUPnPCP/InternetPushParserGeneric;JLcom/awox/jUPnPCP/UPnPCommand;J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/InternetPushParserGeneric;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/InternetPushParserGeneric;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/InternetPushParserGeneric;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/InternetPushParserGeneric;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method
