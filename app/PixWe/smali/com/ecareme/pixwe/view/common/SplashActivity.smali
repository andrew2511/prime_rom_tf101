.class public Lcom/ecareme/pixwe/view/common/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;,
        Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;,
        Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I = null

.field private static final TAG:Ljava/lang/String; = "SplashActivity"

.field static ctx:Landroid/content/Context;


# instance fields
.field private final bindAWSHandlerCode:I

.field private final getAccountHandlerCode:I

.field private handler:Landroid/os/Handler;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private final progressCancelHandlerCode:I

.field private final progressHandlerCode:I

.field private final renewAccountInfoHandlerCode:I

.field private usBind:Z

.field private usConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/ecareme/pixwe/view/common/SplashActivity;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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
    sput-object v0, Lcom/ecareme/pixwe/view/common/SplashActivity;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->handler:Landroid/os/Handler;

    .line 58
    const/16 v0, 0xa

    iput v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->progressHandlerCode:I

    .line 59
    const/16 v0, 0x14

    iput v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->getAccountHandlerCode:I

    .line 60
    const/16 v0, 0x1e

    iput v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->renewAccountInfoHandlerCode:I

    .line 61
    const/16 v0, 0x28

    iput v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->bindAWSHandlerCode:I

    .line 62
    const/16 v0, 0x32

    iput v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->progressCancelHandlerCode:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->usBind:Z

    .line 510
    new-instance v0, Lcom/ecareme/pixwe/view/common/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/common/SplashActivity$1;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->usConnection:Landroid/content/ServiceConnection;

    .line 53
    return-void
.end method

.method private CheckUploadServiceExit()Z
    .locals 7

    .prologue
    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/ecareme/pixwe/view/common/SplashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 497
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 499
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 507
    :cond_1
    :goto_0
    return v2

    .line 499
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 500
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ecareme.pixwe.service.UploadService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 501
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 502
    const/4 v2, 0x1

    .line 504
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->backGroungLogin()V

    return-void
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/common/SplashActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/common/SplashActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/common/SplashActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->bindUploadService()V

    return-void
.end method

.method private backGroungLogin()V
    .locals 6

    .prologue
    .line 211
    :try_start_0
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 213
    .local v0, as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Lnet/yostore/aws/handler/LoginHandler;->doBackgroundLogin(Landroid/content/Context;Landroid/content/SharedPreferences;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/ecareme/pixwe/view/common/SplashActivity;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v2

    invoke-virtual {v0}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 281
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :goto_0
    return-void

    .line 220
    .restart local v0       #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :pswitch_0
    new-instance v2, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 272
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 273
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/ecareme/pixwe/PixWe;->goLogin(Landroid/content/Context;)V

    .line 226
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->finish()V

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 232
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 234
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    const v3, 0x7f06006d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 236
    const v3, 0x7f060065

    new-instance v4, Lcom/ecareme/pixwe/view/common/SplashActivity$4;

    invoke-direct {v4, p0}, Lcom/ecareme/pixwe/view/common/SplashActivity$4;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 243
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 244
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 249
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_1

    .line 250
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 252
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    const v3, 0x7f06006a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 254
    const v3, 0x7f060088

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 255
    const v3, 0x7f060065

    new-instance v4, Lcom/ecareme/pixwe/view/common/SplashActivity$5;

    invoke-direct {v4, p0}, Lcom/ecareme/pixwe/view/common/SplashActivity$5;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 263
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 264
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private bindUploadService()V
    .locals 5

    .prologue
    .line 457
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/ecareme/pixwe/service/UploadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->CheckUploadServiceExit()Z

    move-result v2

    if-nez v2, :cond_2

    .line 460
    :cond_0
    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 465
    :try_start_0
    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->usConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->usBind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 467
    .restart local p0
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 469
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->usBind:Z

    if-nez v2, :cond_1

    .line 471
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060069

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06006d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 472
    const v3, 0x7f060064

    new-instance v4, Lcom/ecareme/pixwe/view/common/SplashActivity$6;

    invoke-direct {v4, p0}, Lcom/ecareme/pixwe/view/common/SplashActivity$6;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    .line 471
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 485
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/ecareme/pixwe/PixWe;->goHome(Landroid/content/Context;)V

    .line 486
    sget-object p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/ecareme/pixwe/view/common/SplashActivity$3;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/common/SplashActivity$3;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->handler:Landroid/os/Handler;

    .line 206
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    if-ne p1, v3, :cond_0

    .line 117
    if-eqz p3, :cond_2

    .line 118
    const-string v0, "AccountInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 119
    .local v6, accinfo:[B
    if-eqz v6, :cond_1

    array-length v0, v6

    if-le v0, v3, :cond_1

    .line 121
    sget-object v0, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/common/SplashActivity$2;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/SplashActivity$2;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    .line 127
    new-instance v0, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;

    invoke-direct {v0, p0, v6}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;[B)V

    new-array v1, v3, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    .end local v6           #accinfo:[B
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v6       #accinfo:[B
    :cond_1
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->finish()V

    goto :goto_0

    .line 135
    .end local v6           #accinfo:[B
    :cond_2
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/common/SplashActivity;->setContentView(I)V

    .line 71
    sput-object p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    .line 72
    const-string v1, "PixWePrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/ecareme/pixwe/view/common/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 73
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->initHandler()V

    .line 74
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 75
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 76
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 146
    iget-boolean v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->usBind:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->usConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 152
    :cond_1
    return-void
.end method
