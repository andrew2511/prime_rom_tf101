.class Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/common/SplashActivity;Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 11
    .parameter "params"

    .prologue
    const/16 v10, 0x64

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 300
    new-array v6, v8, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 301
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/view/common/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "AccountInfo"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 302
    .local v0, accinfo:[B
    if-eqz v0, :cond_0

    .line 303
    const-string v6, "SplashActivity"

    const-string v7, ">>>>>>>>>Get AccountInfo from MyCloud"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-array v6, v8, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 312
    new-instance v6, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;

    iget-object v7, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-direct {v6, v7, v0}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;[B)V

    new-array v7, v8, [Ljava/lang/Void;

    const/4 v8, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 342
    :goto_0
    new-instance v6, Ljava/lang/Long;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 315
    :cond_0
    const-string v6, "SplashActivity"

    const-string v7, ">>>>>>>>>NO AccountInfo from MyCloud"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_0
    sget-object v6, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 319
    .local v5, manager:Landroid/content/pm/PackageManager;
    const-string v6, "com.asus.webstorage.id"

    const/16 v7, 0x40

    .line 318
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 320
    .local v2, appInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1

    .line 321
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "com.asus.webstorage.id"

    const-string v7, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v6, "Application"

    const-string v7, "PixWe"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v6, "AccountInfo"

    const-string v7, "getInfo"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v6, "SplashActivity"

    const-string v7, ">>>>>>>>>Try to get AccountInfo from MyCloud"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/ecareme/pixwe/view/common/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v2           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #manager:Landroid/content/pm/PackageManager;
    :goto_1
    new-array v6, v8, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    .restart local v2       #appInfo:Landroid/content/pm/PackageInfo;
    .restart local v5       #manager:Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getPreferenceApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    .line 330
    .local v1, apicfg:Lnet/yostore/aws/api/ApiConfig;
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v6}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$0(Lcom/ecareme/pixwe/view/common/SplashActivity;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 334
    .end local v1           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    .end local v2           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 336
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getPreferenceApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    .line 337
    .restart local v1       #apicfg:Lnet/yostore/aws/api/ApiConfig;
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v6}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$0(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 362
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 347
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    sget-object v0, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask$1;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$1(Lcom/ecareme/pixwe/view/common/SplashActivity;Landroid/app/ProgressDialog;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$2(Lcom/ecareme/pixwe/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
