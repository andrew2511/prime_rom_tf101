.class public Lcom/infraware/filemanager/FmLocalFileObserver;
.super Ljava/lang/Object;
.source "FmLocalFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/FmLocalFileObserver$IFileObservingListener;
    }
.end annotation


# static fields
.field static final fm_nEventMask:I = 0xfc2


# instance fields
.field m_oContext:Landroid/content/Context;

.field m_oFileObserver:Landroid/os/FileObserver;

.field m_oUpObservingListener:Lcom/infraware/filemanager/FmLocalFileObserver$IFileObservingListener;

.field m_oUpdateHandler:Landroid/os/Handler;

.field m_strObservingPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/infraware/filemanager/FmLocalFileObserver$IFileObservingListener;)V
    .locals 1
    .parameter "a_oContext"
    .parameter "a_oUpObservingListener"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oUpObservingListener:Lcom/infraware/filemanager/FmLocalFileObserver$IFileObservingListener;

    .line 30
    new-instance v0, Lcom/infraware/filemanager/FmLocalFileObserver$1;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/FmLocalFileObserver$1;-><init>(Lcom/infraware/filemanager/FmLocalFileObserver;)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oUpdateHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method


# virtual methods
.method public createFileObserver(Ljava/lang/String;)Z
    .locals 2
    .parameter "a_strObservingPath"

    .prologue
    .line 39
    new-instance v0, Lcom/infraware/filemanager/FmLocalFileObserver$2;

    const/16 v1, 0xfc2

    invoke-direct {v0, p0, p1, v1}, Lcom/infraware/filemanager/FmLocalFileObserver$2;-><init>(Lcom/infraware/filemanager/FmLocalFileObserver;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oFileObserver:Landroid/os/FileObserver;

    .line 81
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_strObservingPath:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start watching : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_strObservingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 96
    :cond_0
    return-void
.end method

.method public stopObserving()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop watching : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_strObservingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 105
    :cond_0
    return-void
.end method
