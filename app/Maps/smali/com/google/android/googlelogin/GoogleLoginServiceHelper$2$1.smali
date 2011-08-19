.class Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;
.super Ljava/lang/Object;
.source "GoogleLoginServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

.field final synthetic val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;


# direct methods
.method constructor <init>(Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iput-object p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 392
    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 399
    .local v0, credentialsIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v2, v2, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v2, v2, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    const-string v3, "optional_message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 402
    .local v1, msg:Ljava/lang/CharSequence;
    const-string v2, "optional_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 405
    .end local v1           #msg:Ljava/lang/CharSequence;
    :cond_0
    const-string v2, "callerExtras"

    iget-object v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v3, v3, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 408
    const-string v2, "requestCode"

    iget-object v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget v3, v3, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v2, "service"

    iget-object v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v3, v3, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v2, v2, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget v3, v3, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 415
    return-void
.end method
