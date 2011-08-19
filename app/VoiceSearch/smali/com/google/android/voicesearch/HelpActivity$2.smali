.class Lcom/google/android/voicesearch/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/HelpDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpActivity;->access$000(Lcom/google/android/voicesearch/HelpActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 72
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpActivity;->finish()V

    .line 73
    return-void
.end method

.method public onSpeakAgain()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    const-class v3, Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpActivity;->finish()V

    .line 68
    return-void
.end method
