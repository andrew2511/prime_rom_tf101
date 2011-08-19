.class Lnet/yostore/aws/view/common/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/RegisterActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lnet/yostore/aws/view/common/RegisterActivity$1;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnet/yostore/aws/view/common/RegisterActivity$1;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lnet/yostore/aws/view/common/RegisterActivity$1;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/RegisterHandler$Status;->values()[Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnet/yostore/aws/view/common/RegisterActivity$1;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lnet/yostore/aws/view/common/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/common/RegisterActivity$1;)Lnet/yostore/aws/view/common/RegisterActivity;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x7f06000b

    const v7, 0x7f06000a

    const v6, 0x7f060006

    const v5, 0x7f060005

    const/4 v4, 0x1

    .line 149
    invoke-static {}, Lnet/yostore/aws/view/common/RegisterActivity$1;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    iget-object v3, v3, Lnet/yostore/aws/view/common/RegisterActivity;->registeras:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 152
    :pswitch_0
    const-string v2, "RegisterDialog"

    const-string v3, "Register OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/common/RegisterActivity;->access$1(Lnet/yostore/aws/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/yostore/utility/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/common/RegisterActivity;->access$2(Lnet/yostore/aws/view/common/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lnet/yostore/aws/handler/LoginHandler;->doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 156
    .local v0, as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    invoke-static {}, Lnet/yostore/aws/view/common/RegisterActivity$1;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v2

    invoke-virtual {v0}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_1

    .line 203
    :goto_1
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-virtual {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->finish()V

    goto :goto_0

    .line 160
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->access$2(Lnet/yostore/aws/view/common/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    iget-object v3, v3, Lnet/yostore/aws/view/common/RegisterActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2, v3}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 161
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v2}, Lcom/ecareme/mear/Mear;->goHome(Landroid/content/Context;)V

    .line 162
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->access$3(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 163
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-virtual {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 197
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 199
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-virtual {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->finish()V

    goto :goto_0

    .line 166
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :pswitch_2
    :try_start_3
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-virtual {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 202
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :catchall_0
    move-exception v2

    .line 203
    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-virtual {v3}, Lnet/yostore/aws/view/common/RegisterActivity;->finish()V

    .line 204
    throw v2

    .line 169
    .restart local v0       #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :pswitch_3
    :try_start_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 170
    const v3, 0x7f060005

    new-instance v4, Lnet/yostore/aws/view/common/RegisterActivity$1$1;

    invoke-direct {v4, p0}, Lnet/yostore/aws/view/common/RegisterActivity$1$1;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 181
    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06000b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 182
    const v3, 0x7f060006

    new-instance v4, Lnet/yostore/aws/view/common/RegisterActivity$1$2;

    invoke-direct {v4, p0}, Lnet/yostore/aws/view/common/RegisterActivity$1$2;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 207
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :pswitch_5
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->access$3(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 210
    const v3, 0x7f060016

    .line 209
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060003

    new-instance v4, Lnet/yostore/aws/view/common/RegisterActivity$1$3;

    invoke-direct {v4, p0}, Lnet/yostore/aws/view/common/RegisterActivity$1$3;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 219
    :pswitch_6
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->access$3(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 222
    new-instance v3, Lnet/yostore/aws/view/common/RegisterActivity$1$4;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/common/RegisterActivity$1$4;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$1;)V

    .line 221
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 233
    :pswitch_7
    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->access$3(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 235
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 236
    new-instance v3, Lnet/yostore/aws/view/common/RegisterActivity$1$5;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/common/RegisterActivity$1$5;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$1;)V

    .line 235
    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 156
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
