.class Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;
.super Landroid/os/AsyncTask;
.source "AuthenticatingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/webstorage/id/AuthenticatingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenewTokenTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;


# direct methods
.method constructor <init>(Lcom/asus/webstorage/id/AuthenticatingActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    iput-object p1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    .line 190
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->mContext:Landroid/content/Context;

    .line 192
    const-string v0, ""

    const v1, 0x7f040021

    invoke-virtual {p1, v1}, Lcom/asus/webstorage/id/AuthenticatingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->mDialog:Landroid/app/ProgressDialog;

    .line 193
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 194
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask$1;

    invoke-direct {v1, p0}, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask$1;-><init>(Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$2(Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;)Lcom/asus/webstorage/id/AuthenticatingActivity;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .parameter "params"

    .prologue
    .line 206
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 208
    .local v2, rtn:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v5, v5, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v5, :cond_0

    .line 209
    iget-object v5, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v5, v5, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 210
    .local v4, uid:Ljava/lang/String;
    iget-object v5, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v5, v5, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v5, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 213
    .local v1, pwd:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v6, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v6, v6, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v5, v4, v1, v6}, Lnet/yostore/aws/handler/LoginHandler;->doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 214
    .local v3, status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v6, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v6, v6, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v6}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/yostore/utility/SimpleAES;->encodeFromString(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/asus/webstorage/id/AuthenticatingActivity;->access$0(Lcom/asus/webstorage/id/AuthenticatingActivity;[B)V

    .line 216
    iget-object v5, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v5, v5, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v6, v6, Lcom/asus/webstorage/id/AuthenticatingActivity;->awsacc:Ljava/io/File;

    invoke-virtual {v5, v6}, Lnet/yostore/aws/api/ApiConfig;->setToFile(Ljava/io/File;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 223
    .end local v1           #pwd:Ljava/lang/String;
    .end local v3           #status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    .end local v4           #uid:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 218
    .restart local v1       #pwd:Ljava/lang/String;
    .restart local v4       #uid:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 219
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 228
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    const-string v3, "AccountInfo"

    iget-object v4, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    invoke-static {v4}, Lcom/asus/webstorage/id/AuthenticatingActivity;->access$1(Lcom/asus/webstorage/id/AuthenticatingActivity;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 232
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 233
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/asus/webstorage/id/AuthenticatingActivity;->setResult(ILandroid/content/Intent;)V

    .line 234
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    invoke-virtual {v3}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v2, li:Landroid/content/Intent;
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    const-class v4, Lcom/aws/account/view/LoginActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/asus/webstorage/id/AuthenticatingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
