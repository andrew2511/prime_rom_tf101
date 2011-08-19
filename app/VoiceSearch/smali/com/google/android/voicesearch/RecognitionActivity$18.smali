.class Lcom/google/android/voicesearch/RecognitionActivity$18;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/RecognitionActivity;
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
    .line 1092
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/actions/VoiceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1105
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1600(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    .line 1106
    return-void
.end method

.method public onGo()V
    .locals 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2900(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/TimeoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->dismiss()V

    .line 1100
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/actions/VoiceAction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2800(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    .line 1101
    return-void
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2900(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/TimeoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->dismiss()V

    .line 1095
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$18;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3400(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/actions/VoiceAction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2800(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    .line 1096
    return-void
.end method
