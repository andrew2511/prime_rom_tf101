.class public Lcom/google/android/voicesearch/GoogleRecognitionService;
.super Landroid/speech/RecognitionService;
.source "GoogleRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "GoogleRecognitionService"


# instance fields
.field private mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

.field private mVoiceSearchApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/speech/RecognitionService;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method protected declared-synchronized onCancel(Landroid/speech/RecognitionService$Callback;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    new-instance v1, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;

    invoke-direct {v1, p1}, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;-><init>(Landroid/speech/RecognitionService$Callback;)V

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onCancel(Landroid/speech/RecognitionListener;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onPause()V

    .line 52
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/voicesearch/GoogleRecognitionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/VoiceSearchApplication;

    iput-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mVoiceSearchApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mVoiceSearchApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer()Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->createRecognitionController()Lcom/google/android/voicesearch/speechservice/RecognitionController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    .line 67
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onStop()V

    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onDestroy()V

    .line 75
    invoke-super {p0}, Landroid/speech/RecognitionService;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    new-instance v1, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;

    invoke-direct {v1, p2}, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;-><init>(Landroid/speech/RecognitionService$Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onStopListening(Landroid/speech/RecognitionService$Callback;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    new-instance v1, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;

    invoke-direct {v1, p1}, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;-><init>(Landroid/speech/RecognitionService$Callback;)V

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onStopListening(Landroid/speech/RecognitionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
