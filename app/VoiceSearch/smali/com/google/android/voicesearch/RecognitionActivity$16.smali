.class Lcom/google/android/voicesearch/RecognitionActivity$16;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionActivity;->getActionWarningDialog(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;

.field final synthetic val$showDisambigAfter:Z


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iput-boolean p2, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->val$showDisambigAfter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->val$showDisambigAfter:Z

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1600(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3200(Lcom/google/android/voicesearch/RecognitionActivity;)V

    goto :goto_0
.end method
