.class public Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;
.super Landroid/content/BroadcastReceiver;
.source "AndroidFileSystemPathDescriptor.java"

# interfaces
.implements Lcom/amazon/system/io/IPathDescriptor;


# static fields
.field static final DATA_PATH:Ljava/lang/String; = "/kindle/"


# instance fields
.field private applicationPaths:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private fileSystemChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private permanentPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->constructPaths()V

    .line 53
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->fileSystemChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 54
    return-void
.end method

.method private constructPaths()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/amazon/kcp/application/ResourceUnavailableException;

    const-string v1, "Internal files-directory is not available"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->permanentPath:Ljava/lang/String;

    .line 105
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/kindle/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    move-object v0, v1

    .line 120
    :goto_0
    array-length v1, v0

    sub-int/2addr v1, v3

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->permanentPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 122
    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->applicationPaths:[Ljava/lang/String;

    .line 123
    return-void

    .line 116
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getApplicationPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->applicationPaths:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChangedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->fileSystemChangedEvent:Lcom/amazon/foundation/internal/EventProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPersistentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->permanentPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidFileSystemPathDescriptor.onReceive(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->constructPaths()V

    .line 87
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->fileSystemChangedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
