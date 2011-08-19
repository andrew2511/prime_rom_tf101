.class Lcom/aws/account/view/RegisterActivity$RegisterTask;
.super Landroid/os/AsyncTask;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aws/account/view/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterTask"
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
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I


# instance fields
.field mContext:Landroid/content/Context;

.field mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/aws/account/view/RegisterActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I
    .locals 3

    .prologue
    .line 166
    sget-object v0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/RegisterHandler$Status;->values()[Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->ACTed:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/aws/account/view/RegisterActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    iput-object p1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    .line 170
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->mContext:Landroid/content/Context;

    .line 172
    iget-object v0, p1, Lcom/aws/account/view/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    const-string v0, ""

    const v1, 0x7f040022

    invoke-virtual {p1, v1}, Lcom/aws/account/view/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->mDialog:Landroid/app/ProgressDialog;

    .line 175
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 181
    aget-object v1, p1, v0

    .line 182
    .local v1, uid:Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v2, p1, v0

    .line 183
    .local v2, pwd:Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v3, p1, v0

    .line 184
    .local v3, email:Ljava/lang/String;
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v0}, Lcom/aws/account/view/RegisterActivity;->access$0(Lcom/aws/account/view/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, language:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-virtual {v0}, Lcom/aws/account/view/RegisterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.asus.webstorage.id"

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 188
    .local v7, pi:Landroid/content/pm/PackageInfo;
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/aws/account/ASUSWebstorage;->setV_ClientVersion(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v0}, Lcom/aws/account/view/RegisterActivity;->access$1(Lcom/aws/account/view/RegisterActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aws/account/ASUSWebstorage;->setMac(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v7           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v5}, Lcom/aws/account/view/RegisterActivity;->access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    invoke-static {v5, v4}, Lnet/yostore/aws/handler/SelfActivationHandler;->selfActivate(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v5

    iput-object v5, v0, Lcom/aws/account/view/RegisterActivity;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 198
    invoke-static {}, Lcom/aws/account/view/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v0

    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v5, v5, Lcom/aws/account/view/RegisterActivity;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v5}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v5

    aget v0, v0, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v0}, Lcom/aws/account/view/RegisterActivity;->access$3(Lcom/aws/account/view/RegisterActivity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 192
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 193
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v0}, Lcom/aws/account/view/RegisterActivity;->access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v0}, Lcom/aws/account/view/RegisterActivity;->access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    const-string v5, "@@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v5}, Lcom/aws/account/view/RegisterActivity;->access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    invoke-static {v5, v1, v2, v3, v4}, Lnet/yostore/aws/handler/UpdateLoginHandler;->updateLogin(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v5

    iput-object v5, v0, Lcom/aws/account/view/RegisterActivity;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 202
    invoke-static {}, Lcom/aws/account/view/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v0

    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v5, v5, Lcom/aws/account/view/RegisterActivity;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v5}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v0}, Lcom/aws/account/view/RegisterActivity;->access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v0}, Lcom/aws/account/view/RegisterActivity;->access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v2, v0, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 235
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 236
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_3
    iget-object v8, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    .line 222
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v5}, Lcom/aws/account/view/RegisterActivity;->access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    .line 221
    invoke-static/range {v0 .. v5}, Lnet/yostore/aws/handler/RegisterHandler;->doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    iput-object v0, v8, Lcom/aws/account/view/RegisterActivity;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    goto :goto_1

    .line 226
    :pswitch_3
    iget-object v8, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    .line 227
    iget-object v0, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v5, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v5}, Lcom/aws/account/view/RegisterActivity;->access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    .line 226
    invoke-static/range {v0 .. v5}, Lnet/yostore/aws/handler/RegisterHandler;->doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    iput-object v0, v8, Lcom/aws/account/view/RegisterActivity;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 202
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aws/account/view/RegisterActivity$RegisterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v1, v1, Lcom/aws/account/view/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 246
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v1}, Lcom/aws/account/view/RegisterActivity;->access$2(Lcom/aws/account/view/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/utility/SimpleAES;->encodeFromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 249
    .local v0, accInfoBytes:[B
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-static {v1, v0}, Lcom/aws/account/view/RegisterActivity;->access$4(Lcom/aws/account/view/RegisterActivity;[B)V

    .line 251
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/aws/account/view/RegisterActivity;->setResult(I)V

    .line 252
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    invoke-virtual {v1}, Lcom/aws/account/view/RegisterActivity;->finish()V

    .line 272
    .end local v0           #accInfoBytes:[B
    :goto_0
    :pswitch_0
    return-void

    .line 255
    :cond_0
    invoke-static {}, Lcom/aws/account/view/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v1

    iget-object v2, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v2, v2, Lcom/aws/account/view/RegisterActivity;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v2}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v1, v1, Lcom/aws/account/view/RegisterActivity;->err:Landroid/widget/TextView;

    const v2, 0x7f040027

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v1, v1, Lcom/aws/account/view/RegisterActivity;->err:Landroid/widget/TextView;

    const v2, 0x7f04002b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 265
    :pswitch_3
    iget-object v1, p0, Lcom/aws/account/view/RegisterActivity$RegisterTask;->this$0:Lcom/aws/account/view/RegisterActivity;

    iget-object v1, v1, Lcom/aws/account/view/RegisterActivity;->err:Landroid/widget/TextView;

    const v2, 0x7f040028

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/aws/account/view/RegisterActivity$RegisterTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
