.class public Lcom/asus/webstorage/id/AuthenticatingActivity;
.super Landroid/app/Activity;
.source "AuthenticatingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;,
        Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;
    }
.end annotation


# static fields
.field private static final LOGIN:I = 0x1

.field private static final REGISTER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AuthenticatingActivity"


# instance fields
.field private accInfoBytes:[B

.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field appname:Ljava/lang/String;

.field awsacc:Ljava/io/File;

.field callerExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->accInfoBytes:[B

    .line 29
    iput-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 30
    iput-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->appname:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->callerExtra:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->awsacc:Ljava/io/File;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/asus/webstorage/id/AuthenticatingActivity;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->accInfoBytes:[B

    return-void
.end method

.method static synthetic access$1(Lcom/asus/webstorage/id/AuthenticatingActivity;)[B
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->accInfoBytes:[B

    return-object v0
.end method

.method private broadcastMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 297
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 298
    const-string v2, "com.asus.webstorage.id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 299
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 301
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method private initApiCfg()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->awsacc:Ljava/io/File;

    .line 79
    iput-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 80
    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->awsacc:Ljava/io/File;

    const-string v2, "/asus/webstorage/"

    const-string v3, "/account.info"

    invoke-static {v1, v2, v3}, Lcom/aws/mycloud/view/Utility;->initFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->awsacc:Ljava/io/File;

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, isng:Z
    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->awsacc:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->awsacc:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 84
    :cond_0
    const-string v1, "AuthenticatingActivity"

    const-string v2, "awsacc empty, needlogin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x1

    .line 100
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->awsacc:Ljava/io/File;

    invoke-static {v1}, Lnet/yostore/aws/api/ApiConfig;->getFromFile(Ljava/io/File;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 89
    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-nez v1, :cond_3

    .line 90
    const/4 v0, 0x1

    .line 91
    const-string v1, "AuthenticatingActivity"

    const-string v2, "apicfg empty, needlogin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :cond_4
    const/4 v0, 0x1

    .line 96
    const-string v1, "AuthenticatingActivity"

    const-string v2, "apicfg uid empty, needlogin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 248
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    if-ne p2, v5, :cond_3

    .line 251
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/aws/account/view/RegisterActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 254
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/asus/webstorage/id/AuthenticatingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->initApiCfg()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/utility/SimpleAES;->encodeFromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->accInfoBytes:[B

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->accInfoBytes:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->accInfoBytes:[B

    array-length v2, v2

    if-gt v2, v5, :cond_4

    .line 267
    :cond_2
    invoke-virtual {p0, v3}, Lcom/asus/webstorage/id/AuthenticatingActivity;->setResult(I)V

    .line 268
    invoke-virtual {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    .line 291
    :goto_0
    return-void

    .line 256
    :cond_3
    if-eq p2, v4, :cond_0

    .line 257
    invoke-virtual {p0, v3}, Lcom/asus/webstorage/id/AuthenticatingActivity;->setResult(I)V

    .line 258
    invoke-virtual {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    goto :goto_0

    .line 272
    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 276
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "AccountInfo"

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->accInfoBytes:[B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 278
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v4, v1}, Lcom/asus/webstorage/id/AuthenticatingActivity;->setResult(ILandroid/content/Intent;)V

    .line 280
    invoke-virtual {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    goto :goto_0

    .line 283
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    goto :goto_0

    .line 286
    :pswitch_2
    invoke-virtual {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    iput-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->accInfoBytes:[B

    .line 38
    iput-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 39
    iput-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->appname:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->callerExtra:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "AccountInfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->callerExtra:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Application"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->appname:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->initApiCfg()Z

    .line 46
    const-string v2, "getInfo"

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->callerExtra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    new-instance v1, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;

    invoke-direct {v1, p0, p0}, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;-><init>(Lcom/asus/webstorage/id/AuthenticatingActivity;Landroid/content/Context;)V

    .line 48
    .local v1, t:Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;
    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    .end local v1           #t:Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v2, "renewToken"

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->callerExtra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    new-instance v1, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;

    invoke-direct {v1, p0, p0}, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;-><init>(Lcom/asus/webstorage/id/AuthenticatingActivity;Landroid/content/Context;)V

    .line 52
    .local v1, t:Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;
    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 54
    .end local v1           #t:Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;
    :cond_2
    const-string v2, "getInfoNoCallback"

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->callerExtra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    new-instance v1, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;

    invoke-direct {v1, p0, p0, v4}, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;-><init>(Lcom/asus/webstorage/id/AuthenticatingActivity;Landroid/content/Context;Z)V

    .line 56
    .local v1, t:Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;
    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 58
    .end local v1           #t:Lcom/asus/webstorage/id/AuthenticatingActivity$GetInfoTask;
    :cond_3
    const-string v2, "logout"

    iget-object v3, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->callerExtra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/asus/webstorage/id/AuthenticatingActivity;->awsacc:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 61
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/asus/webstorage/id/AuthenticatingActivity;->setResult(I)V

    .line 62
    const-string v2, "MyCloud"

    const-string v3, "Close"

    invoke-direct {p0, v2, v3}, Lcom/asus/webstorage/id/AuthenticatingActivity;->broadcastMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 65
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Lcom/asus/webstorage/id/AuthenticatingActivity;->setResult(I)V

    goto :goto_1
.end method
