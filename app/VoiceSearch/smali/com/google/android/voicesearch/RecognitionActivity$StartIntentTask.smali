.class Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;
.super Landroid/os/AsyncTask;
.source "RecognitionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/RecognitionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartIntentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private mAction:Lcom/google/android/voicesearch/actions/VoiceAction;

.field private mAlternatives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1664
    iput-object p2, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->mAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 1665
    iput-object p3, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->mAlternatives:Ljava/util/ArrayList;

    .line 1666
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->mAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->mAlternatives:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1659
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$800(Lcom/google/android/voicesearch/RecognitionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1682
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1000(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 1683
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->mAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldWaitForActivityResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1691
    :cond_0
    :goto_0
    return-void

    .line 1686
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    .line 1687
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->mAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldPersistDisambig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1659
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$800(Lcom/google/android/voicesearch/RecognitionActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$StartIntentTask;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$800(Lcom/google/android/voicesearch/RecognitionActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1672
    return-void
.end method
