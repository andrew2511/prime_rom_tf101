.class Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;
.super Landroid/os/Handler;
.source "BackgroundRecognizer.java"


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
    .line 56
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$000(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;->onError(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;I)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$000(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;->onEndOfSpeech(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)V

    goto :goto_0

    .line 69
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    const-string v1, "fullRecognitionResults"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    const-string v2, "results_recognition"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v2}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$000(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-interface {v2, v3, v1, v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;->onFinishRecognizing(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$000(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;->onReadyForSpeech(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)V

    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;->access$000(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$1;->this$0:Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;->onRmsChanged(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;F)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
