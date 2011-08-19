.class Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$2;
.super Ljava/lang/Object;
.source "BackgroundRecognizer.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$2;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .parameter

    .prologue
    .line 92
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$2;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$100(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    return-void
.end method

.method public onError(I)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 99
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 100
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 101
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$2;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$100(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$2;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$100(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 112
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$2;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$100(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 2
    .parameter

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 117
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 119
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$2;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$100(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method
