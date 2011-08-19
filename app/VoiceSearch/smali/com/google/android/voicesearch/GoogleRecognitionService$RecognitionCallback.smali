.class Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;
.super Ljava/lang/Object;
.source "GoogleRecognitionService.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/GoogleRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecognitionCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/speech/RecognitionService$Callback;


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionService$Callback;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    .line 83
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v0}, Landroid/speech/RecognitionService$Callback;->beginningOfSpeech()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "GoogleRecognitionService"

    const-string v2, "beginningOfSpeech callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBufferReceived([B)V
    .locals 3
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v0, p1}, Landroid/speech/RecognitionService$Callback;->bufferReceived([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "GoogleRecognitionService"

    const-string v2, "bufferReceived callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v0}, Landroid/speech/RecognitionService$Callback;->endOfSpeech()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "GoogleRecognitionService"

    const-string v2, "endOfSpeech callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onError(I)V
    .locals 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v0, p1}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "GoogleRecognitionService"

    const-string v2, "error callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v0, p1}, Landroid/speech/RecognitionService$Callback;->partialResults(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "GoogleRecognitionService"

    const-string v2, "partialResults callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v0, p1}, Landroid/speech/RecognitionService$Callback;->readyForSpeech(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "GoogleRecognitionService"

    const-string v2, "readyForSpeech callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v0, p1}, Landroid/speech/RecognitionService$Callback;->results(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "GoogleRecognitionService"

    const-string v2, "results callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onRmsChanged(F)V
    .locals 3
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;->mCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {v0, p1}, Landroid/speech/RecognitionService$Callback;->rmsChanged(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v1, "GoogleRecognitionService"

    const-string v2, "rmsChanged callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
