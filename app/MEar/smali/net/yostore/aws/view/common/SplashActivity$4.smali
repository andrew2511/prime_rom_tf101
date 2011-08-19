.class Lnet/yostore/aws/view/common/SplashActivity$4;
.super Ljava/lang/Thread;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/SplashActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/SplashActivity$4;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    .line 102
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/view/common/SplashActivity$4;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 103
    .local v5, manager:Landroid/content/pm/PackageManager;
    const-string v6, "com.asus.webstorage.id"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 104
    .local v2, appInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    .line 106
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "com.asus.webstorage.id"

    const-string v7, "com.asus.webstorage.id.AuthenticatingActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v6, "Application"

    const-string v7, "MEar"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v6, "AccountInfo"

    const-string v7, "getInfo"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v6, p0, Lnet/yostore/aws/view/common/SplashActivity$4;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    .end local v2           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 115
    .restart local v2       #appInfo:Landroid/content/pm/PackageInfo;
    .restart local v5       #manager:Landroid/content/pm/PackageManager;
    :cond_0
    invoke-static {}, Lcom/ecareme/mear/Mear;->getPreferenceApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    .line 116
    .local v1, apicfg:Lnet/yostore/aws/api/ApiConfig;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 117
    .local v0, _msg:Landroid/os/Message;
    const/16 v6, 0x14

    iput v6, v0, Landroid/os/Message;->what:I

    .line 118
    iget-object v6, p0, Lnet/yostore/aws/view/common/SplashActivity$4;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v0           #_msg:Landroid/os/Message;
    .end local v1           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    .end local v2           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 124
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/ecareme/mear/Mear;->getPreferenceApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    .line 125
    .restart local v1       #apicfg:Lnet/yostore/aws/api/ApiConfig;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 126
    .restart local v0       #_msg:Landroid/os/Message;
    iput v8, v0, Landroid/os/Message;->what:I

    .line 127
    iget-object v6, p0, Lnet/yostore/aws/view/common/SplashActivity$4;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
