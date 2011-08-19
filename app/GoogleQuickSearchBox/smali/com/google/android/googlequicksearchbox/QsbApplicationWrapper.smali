.class public Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;
.super Landroid/app/Application;
.source "QsbApplicationWrapper.java"


# instance fields
.field mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected createQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized getApp()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->createQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->close()V

    .line 34
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 36
    return-void

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
