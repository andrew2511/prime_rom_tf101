.class public Lcom/awox/jUPnPCP/awMediaParserManager;
.super Ljava/lang/Object;
.source "awMediaParserManager.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_awMediaParserManager__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/awMediaParserManager;-><init>(JZ)V

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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPropertyList;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPropertyList;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPropertyList;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_awMediaParserManager__SWIG_0(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/awMediaParserManager;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/awMediaParserManager;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Add(Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParser;)Z
    .locals 4
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParser;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParser;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awMediaParserManager_Add(JLcom/awox/jUPnPCP/awMediaParserManager;J)Z

    move-result v0

    return v0
.end method

.method public AddStandardParsers()V
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awMediaParserManager_AddStandardParsers(JLcom/awox/jUPnPCP/awMediaParserManager;)V

    .line 62
    return-void
.end method

.method public GetDLNAInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awMediaParserManager_GetDLNAInfo(JLcom/awox/jUPnPCP/awMediaParserManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetMimeTypesDotIniParser()Lcom/awox/jUPnPCP/SWIGTYPE_p_awMimeTypesDotIniParser;
    .locals 4

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awMediaParserManager_GetMimeTypesDotIniParser(JLcom/awox/jUPnPCP/awMediaParserManager;)J

    move-result-wide v0

    .line 66
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMimeTypesDotIniParser;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMimeTypesDotIniParser;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public Parse(Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserStream;)Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaInfo;
    .locals 4
    .parameter

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserStream;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserStream;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awMediaParserManager_Parse(JLcom/awox/jUPnPCP/awMediaParserManager;J)J

    move-result-wide v0

    .line 48
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public ParseFromType(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserStream;)Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaInfo;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserStream;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserStream;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->awMediaParserManager_ParseFromType(JLcom/awox/jUPnPCP/awMediaParserManager;Ljava/lang/String;J)J

    move-result-wide v0

    .line 57
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_awMediaParserManager(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/awMediaParserManager;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/awMediaParserManager;->delete()V

    .line 26
    return-void
.end method
