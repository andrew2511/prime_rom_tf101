.class Lcom/google/android/gsf/loginservice/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/loginservice/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/loginservice/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/BaseActivity$1;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 190
    sget-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "LoginServiceActivity"

    const-string v1, "dialog cancel has been invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$1;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$000(Lcom/google/android/gsf/loginservice/BaseActivity;)Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$1;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$000(Lcom/google/android/gsf/loginservice/BaseActivity;)Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->interrupt()V

    .line 193
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$1;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finish()V

    .line 195
    :cond_1
    return-void
.end method
