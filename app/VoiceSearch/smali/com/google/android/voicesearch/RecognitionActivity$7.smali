.class Lcom/google/android/voicesearch/RecognitionActivity$7;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 543
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$7;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$7;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2900(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/TimeoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->stopCountDown()V

    .line 546
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$7;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1600(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    .line 547
    return-void
.end method
