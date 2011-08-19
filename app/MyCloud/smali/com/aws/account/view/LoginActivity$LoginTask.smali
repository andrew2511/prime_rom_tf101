.class Lcom/aws/account/view/LoginActivity$LoginTask;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aws/account/view/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginTask"
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


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I


# instance fields
.field mContext:Landroid/content/Context;

.field mDialog:Landroid/app/ProgressDialog;

.field status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

.field final synthetic this$0:Lcom/aws/account/view/LoginActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lcom/aws/account/view/LoginActivity$LoginTask;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->values()[Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/aws/account/view/LoginActivity$LoginTask;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/aws/account/view/LoginActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    iput-object p1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    .line 144
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 161
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    iput-object v0, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 145
    iget-object v0, p1, Lcom/aws/account/view/LoginActivity;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    iput-object p2, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->mContext:Landroid/content/Context;

    .line 148
    const-string v0, ""

    const v1, 0x7f040021

    invoke-virtual {p1, v1}, Lcom/aws/account/view/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->mDialog:Landroid/app/ProgressDialog;

    .line 149
    iget-object v0, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 150
    iget-object v0, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 151
    iget-object v0, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/aws/account/view/LoginActivity$LoginTask$1;

    invoke-direct {v1, p0}, Lcom/aws/account/view/LoginActivity$LoginTask$1;-><init>(Lcom/aws/account/view/LoginActivity$LoginTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$3(Lcom/aws/account/view/LoginActivity$LoginTask;)Lcom/aws/account/view/LoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 164
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    iput-object v4, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 166
    aget-object v3, p1, v5

    .line 167
    .local v3, uid:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/yostore/utility/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, pwd:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 171
    .local v2, rtn:Ljava/lang/Boolean;
    :try_start_0
    iget-object v4, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    iget-object v5, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    invoke-static {v5}, Lcom/aws/account/view/LoginActivity;->access$0(Lcom/aws/account/view/LoginActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    invoke-static {v4, v3, v1, v5}, Lnet/yostore/aws/handler/LoginHandler;->doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v4

    iput-object v4, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 173
    iget-object v4, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    sget-object v5, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v4, v5, :cond_0

    .line 174
    iget-object v4, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    invoke-static {v4}, Lcom/aws/account/view/LoginActivity;->access$0(Lcom/aws/account/view/LoginActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-static {}, Lcom/aws/account/view/LoginActivity;->access$1()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/api/ApiConfig;->setToFile(Ljava/io/File;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 179
    :cond_0
    :goto_0
    return-object v2

    .line 176
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 177
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

    invoke-virtual {p0, p1}, Lcom/aws/account/view/LoginActivity$LoginTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    invoke-static {v1}, Lcom/aws/account/view/LoginActivity;->access$0(Lcom/aws/account/view/LoginActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/utility/SimpleAES;->encodeFromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 187
    .local v0, accInfoBytes:[B
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    invoke-static {v1, v0}, Lcom/aws/account/view/LoginActivity;->access$2(Lcom/aws/account/view/LoginActivity;[B)V

    .line 189
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/aws/account/view/LoginActivity;->setResult(I)V

    .line 190
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 191
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    invoke-virtual {v1}, Lcom/aws/account/view/LoginActivity;->finish()V

    .line 209
    .end local v0           #accInfoBytes:[B
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 196
    invoke-static {}, Lcom/aws/account/view/LoginActivity$LoginTask;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v1

    iget-object v2, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 204
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    iget-object v1, v1, Lcom/aws/account/view/LoginActivity;->err:Landroid/widget/TextView;

    const v2, 0x7f04002b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    :goto_1
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    iget-object v1, v1, Lcom/aws/account/view/LoginActivity;->mLoginButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 198
    :pswitch_0
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    iget-object v1, v1, Lcom/aws/account/view/LoginActivity;->err:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 201
    :pswitch_1
    iget-object v1, p0, Lcom/aws/account/view/LoginActivity$LoginTask;->this$0:Lcom/aws/account/view/LoginActivity;

    iget-object v1, v1, Lcom/aws/account/view/LoginActivity;->err:Landroid/widget/TextView;

    const v2, 0x7f04002a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/aws/account/view/LoginActivity$LoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
