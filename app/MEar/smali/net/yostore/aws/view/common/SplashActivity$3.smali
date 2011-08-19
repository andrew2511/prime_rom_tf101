.class Lnet/yostore/aws/view/common/SplashActivity$3;
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
    iput-object p1, p0, Lnet/yostore/aws/view/common/SplashActivity$3;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 82
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$3;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-virtual {v2}, Lnet/yostore/aws/view/common/SplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$3;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 83
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/ecareme/mear/Mear;->clientversion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 87
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
