.class Lcom/google/android/gm/HtmlConversationFragment$6;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentProgresses(JLcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;

.field final synthetic val$progressToSet:I


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2411
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$6;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iput p2, p0, Lcom/google/android/gm/HtmlConversationFragment$6;->val$progressToSet:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$6;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$3900(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$6;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$3900(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$6;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$3900(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/HtmlConversationFragment$6;->val$progressToSet:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2417
    :cond_0
    return-void
.end method
