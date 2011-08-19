.class Lcom/google/android/feedback/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/FeedbackActivity;->runSendService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackActivity$1;->this$0:Lcom/google/android/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackActivity$1;->this$0:Lcom/google/android/feedback/FeedbackActivity;

    const v1, 0x7f050014

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackActivity$1;->this$0:Lcom/google/android/feedback/FeedbackActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/feedback/FeedbackActivity$1;->this$0:Lcom/google/android/feedback/FeedbackActivity;

    const-class v3, Lcom/google/android/feedback/SendService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/feedback/FeedbackActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    return-void
.end method
