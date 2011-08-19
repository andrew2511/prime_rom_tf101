.class final Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;
.super Landroid/os/Handler;
.source "RecognitionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/RecognitionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$900(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 329
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1000(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1100(Lcom/google/android/voicesearch/RecognitionActivity;I)V

    .line 331
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->showListening()V

    .line 332
    const-string v0, "RecognitionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start-up latency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1200(Lcom/google/android/voicesearch/RecognitionActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v0, "SPEAK_NOW"

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionDialog;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v0, v0, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 346
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, v1, Lcom/google/android/voicesearch/RecognitionActivity;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 348
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1100(Lcom/google/android/voicesearch/RecognitionActivity;I)V

    .line 349
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/RecognitionDialog;->showWorking()V

    .line 351
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget v2, v2, Lcom/google/android/voicesearch/RecognitionActivity;->mSpeechStartPosition:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget v3, v3, Lcom/google/android/voicesearch/RecognitionActivity;->mSpeechEndPosition:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/voicesearch/RecognitionDialog;->showWave(Ljava/nio/ShortBuffer;II)V

    .line 354
    const-string v0, "WORKING"

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1000(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 361
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0x7f090706

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0x7f09070b

    if-ne v0, v1, :cond_3

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 366
    :goto_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1100(Lcom/google/android/voicesearch/RecognitionActivity;I)V

    .line 367
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/RecognitionDialog;->showError(I)V

    .line 368
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/Vibrator;->vibrate(Landroid/view/View;)V

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->logError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    goto :goto_1

    .line 380
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1500(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 381
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/Vibrator;->vibrate(Landroid/view/View;)V

    .line 386
    :cond_4
    const-string v0, "VOICE_SEARCH_COMPLETE"

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1600(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    goto/16 :goto_0

    .line 397
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/RecognitionDialog;

    move-result-object v0

    const v1, 0x7f09071b

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/RecognitionDialog;->setHeaderText(I)V

    goto/16 :goto_0

    .line 401
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$UiThreadHandler;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1700(Lcom/google/android/voicesearch/RecognitionActivity;)V

    goto/16 :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
