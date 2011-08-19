.class Lcom/google/android/voicesearch/RecognitionActivity$2;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/RecognitionDialog$Listener;


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
    .line 453
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->cancel()V

    .line 456
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1300(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 457
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2000(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/speechservice/RecognitionController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1900(Lcom/google/android/voicesearch/RecognitionActivity;)Landroid/speech/RecognitionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->onCancel(Landroid/speech/RecognitionListener;)V

    .line 458
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 459
    return-void
.end method

.method public onHelp(Z)V
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->helpButtonUsed(Z)V

    .line 463
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2100(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 464
    return-void
.end method

.method public onTryAgain()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2200(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 468
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->retry()V

    .line 469
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$2;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2300(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 470
    return-void
.end method
