.class Lcom/google/android/gsf/update/SystemUpdateActivity$3;
.super Ljava/lang/Object;
.source "SystemUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$200(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "verify_progress"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, percent:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$300(Lcom/google/android/gsf/update/SystemUpdateActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$400(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 170
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$400(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 171
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$400(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 173
    :cond_0
    return-void
.end method
