.class public Lcom/android/vending/updater/UpdateMarketReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateMarketReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/updater/UpdateMarketReceiver$InstallObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 42
    .local v0, contentUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Lcom/android/vending/updater/UpdateMarketReceiver$InstallObserver;

    invoke-direct {v2, p1}, Lcom/android/vending/updater/UpdateMarketReceiver$InstallObserver;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 45
    return-void
.end method
