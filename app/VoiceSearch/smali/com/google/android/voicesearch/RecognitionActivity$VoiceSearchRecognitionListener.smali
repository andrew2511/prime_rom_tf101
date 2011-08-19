.class Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/RecognitionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceSearchRecognitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/RecognitionActivity$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, v1, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/voicesearch/RecognitionActivity;->mSpeechStartPosition:I

    .line 259
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 1
    .parameter

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, v1, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/voicesearch/RecognitionActivity;->mSpeechEndPosition:I

    .line 272
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$000(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->setRecognitionState(I)V

    .line 274
    return-void
.end method

.method public onError(I)V
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$200(Lcom/google/android/voicesearch/RecognitionActivity;I)V

    .line 278
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 310
    packed-switch p1, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$800(Lcom/google/android/voicesearch/RecognitionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$300(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->setRecognitionState(I)V

    .line 284
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 298
    const-string v0, "fullRecognitionResults"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$500(Lcom/google/android/voicesearch/RecognitionActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 301
    const-string v1, "android.speech.extras.RAW_AUDIO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v2, v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$600(Lcom/google/android/voicesearch/RecognitionActivity;Ljava/util/ArrayList;[B)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$700(Lcom/google/android/voicesearch/RecognitionActivity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onRmsChanged(F)V
    .locals 1
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$VoiceSearchRecognitionListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/RecognitionDialog;->updateAudioLevel(F)V

    .line 288
    return-void
.end method
