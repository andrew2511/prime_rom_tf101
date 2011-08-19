.class Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;
.super Landroid/os/AsyncTask;
.source "AuthenticatingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/webstorage/id/AuthenticatingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInfoTask"
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

.field withCallback:Z


# direct methods
.method constructor <init>(Lcom/asus/webstorage/id/AuthenticatingActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 136
    iput-object p1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    .line 124
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 108
    iput-boolean v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->withCallback:Z

    .line 125
    iput-object p2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mContext:Landroid/content/Context;

    .line 126
    const-string v0, ""

    const v1, 0x7f040025

    invoke-virtual {p1, v1}, Lcom/asus/webstorage/id/AuthenticatingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    .line 127
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 128
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 129
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask$2;

    invoke-direct {v1, p0}, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask$2;-><init>(Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method constructor <init>(Lcom/asus/webstorage/id/AuthenticatingActivity;Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter "c"
    .parameter "withCallback"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    iput-object p1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    .line 110
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 108
    iput-boolean v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->withCallback:Z

    .line 111
    iput-object p2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mContext:Landroid/content/Context;

    .line 112
    const-string v0, ""

    const v1, 0x7f040025

    invoke-virtual {p1, v1}, Lcom/asus/webstorage/id/AuthenticatingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    .line 113
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 114
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 115
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask$1;

    invoke-direct {v1, p0}, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask$1;-><init>(Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 122
    iput-boolean p3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->withCallback:Z

    return-void
.end method

.method static synthetic access$2(Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;)Lcom/asus/webstorage/id/AuthenticatingActivity;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, rtn:Z
    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/asus/webstorage/id/AuthenticatingActivity;->access$0(Lcom/asus/webstorage/id/AuthenticatingActivity;[B)V

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v1, v1, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    iget-object v2, v2, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/utility/SimpleAES;->encodeFromString(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/webstorage/id/AuthenticatingActivity;->access$0(Lcom/asus/webstorage/id/AuthenticatingActivity;[B)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    invoke-static {v1}, Lcom/asus/webstorage/id/AuthenticatingActivity;->access$1(Lcom/asus/webstorage/id/AuthenticatingActivity;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    const/4 v0, 0x1

    .line 149
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, -0x1

    .line 154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const-string v3, "AuthenticatingActivity"

    const-string v4, "getinfo result TRUE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v3, "AccountInfo"

    iget-object v4, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    invoke-static {v4}, Lcom/asus/webstorage/id/AuthenticatingActivity;->access$1(Lcom/asus/webstorage/id/AuthenticatingActivity;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 159
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    invoke-virtual {v3, v5, v1}, Lcom/asus/webstorage/id/AuthenticatingActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    invoke-virtual {v3}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    const-string v3, "AuthenticatingActivity"

    const-string v4, "getinfo result FALSE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-boolean v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->withCallback:Z

    if-eqz v3, :cond_3

    .line 168
    const-string v3, "AuthenticatingActivity"

    const-string v4, "startActivityForResult LoginActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v2, li:Landroid/content/Intent;
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    const-class v4, Lcom/aws/account/view/LoginActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 172
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/asus/webstorage/id/AuthenticatingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 176
    .end local v2           #li:Landroid/content/Intent;
    :cond_3
    const-string v3, "AccountInfo"

    const/4 v4, 0x1

    new-array v4, v4, [B

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 177
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 178
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    invoke-virtual {v3, v5, v1}, Lcom/asus/webstorage/id/AuthenticatingActivity;->setResult(ILandroid/content/Intent;)V

    .line 179
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->this$0:Lcom/asus/webstorage/id/AuthenticatingActivity;

    invoke-virtual {v3}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
