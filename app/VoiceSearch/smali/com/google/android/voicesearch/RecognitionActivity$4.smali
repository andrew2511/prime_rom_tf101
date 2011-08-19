.class Lcom/google/android/voicesearch/RecognitionActivity$4;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/DisambigDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionSelected(I)V
    .locals 3
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2500(Lcom/google/android/voicesearch/RecognitionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 485
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2600(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 487
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2700(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/EditorDialog;

    move-result-object v1

    check-cast v0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2500(Lcom/google/android/voicesearch/RecognitionActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/voicesearch/EditorDialog;->setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V

    .line 488
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1100(Lcom/google/android/voicesearch/RecognitionActivity;I)V

    .line 493
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DisambigDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/DisambigDialog;->dismiss()V

    .line 491
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2800(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    goto :goto_0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 510
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DisambigDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->dismiss()V

    .line 511
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 512
    return-void
.end method

.method public onHelp()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DisambigDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->dismiss()V

    .line 499
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->helpButtonUsed(Z)V

    .line 500
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2100(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 501
    return-void
.end method

.method public onSpeakAgain()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2200(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 505
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$4;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2300(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 506
    return-void
.end method
