.class public Lcom/awox/jUPnPCP/UPnPInternetPushModule;
.super Lcom/awox/jUPnPCP/UPnPControlPointModule;
.source "UPnPInternetPushModule.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPInternetPushModuleUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPControlPointModule;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPInternetPushModule;->swigCPtr:J

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

    invoke-static {v0, v1, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPInternetPushModule__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPInternetPushModule;-><init>(JZ)V

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

    invoke-static {v0, v1, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPInternetPushModule__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPInternetPushModule;-><init>(JZ)V

    .line 34
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPInternetPushModule;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPInternetPushModule;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AddParser(Lcom/awox/jUPnPCP/InternetPushParserGeneric;)V
    .locals 6
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPInternetPushModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/InternetPushParserGeneric;->getCPtr(Lcom/awox/jUPnPCP/InternetPushParserGeneric;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPInternetPushModule_AddParser(JLcom/awox/jUPnPCP/UPnPInternetPushModule;JLcom/awox/jUPnPCP/InternetPushParserGeneric;)V

    .line 47
    return-void
.end method

.method public ParseURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/CmdInternetPushInfo;
    .locals 4
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPInternetPushModule;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPInternetPushModule_ParseURI(JLcom/awox/jUPnPCP/UPnPInternetPushModule;Ljava/lang/String;)J

    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPInternetPushModule;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPInternetPushModule;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPInternetPushModule;->swigCMemOwn:Z

    .line 28
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPInternetPushModule;->swigCPtr:J

    .line 29
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPControlPointModule;->delete()V
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
