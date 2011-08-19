.class Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;
.super Ljava/lang/Object;
.source "RecognitionControllerImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndpointerInputStreamListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 966
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$302(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;J)J

    .line 968
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$402(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Z)Z

    .line 969
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$600(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$500(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->extend(J)V

    .line 970
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    .line 973
    :cond_0
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 2
    .parameter

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$800(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 5

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$800(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 991
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$300(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$1002(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;J)J

    .line 992
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$200(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setEndOfSpeech()V

    .line 993
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    goto :goto_0
.end method

.method public onReadyForSpeech(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1002
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadyForSpeech, noise level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", snr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$1102(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;F)F

    .line 1004
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0, p2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$1202(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;F)F

    .line 1005
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1006
    const-string v1, "NoiseLevel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1007
    const-string v1, "SignalNoiseRatio"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1008
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 1014
    :cond_0
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 2
    .parameter

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$800(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    goto :goto_0
.end method
