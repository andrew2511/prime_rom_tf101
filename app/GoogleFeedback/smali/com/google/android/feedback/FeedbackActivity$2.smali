.class Lcom/google/android/feedback/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/FeedbackActivity;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feedback/FeedbackActivity;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/google/android/feedback/FeedbackActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackActivity$2;->this$0:Lcom/google/android/feedback/FeedbackActivity;

    iput p2, p0, Lcom/google/android/feedback/FeedbackActivity$2;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackActivity$2;->this$0:Lcom/google/android/feedback/FeedbackActivity;

    iget v1, p0, Lcom/google/android/feedback/FeedbackActivity$2;->val$resId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 356
    return-void
.end method
