.class public Lcom/layar/OnUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnUpgradeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/layar/OnUpgradeReceiver;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/OnUpgradeReceiver;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 23
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 25
    const/16 v5, 0x80

    .line 24
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    .end local v2           #packageName:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 30
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 31
    .local v3, versionCode:I
    const/16 v4, 0x1a

    if-gt v3, v4, :cond_0

    .line 32
    invoke-static {}, Lcom/layar/data/ImageCache;->clearLayersCache()V

    .line 37
    .end local v3           #versionCode:I
    :cond_0
    invoke-static {p1}, Lcom/layar/App;->clearRestorePoints(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/layar/data/layer/LayerCacheManager;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, cacheManager:Lcom/layar/data/layer/LayerCacheManager;
    invoke-virtual {v0}, Lcom/layar/data/layer/LayerCacheManager;->reset()V

    .line 40
    return-void

    .line 26
    .end local v0           #cacheManager:Lcom/layar/data/layer/LayerCacheManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
