.class public Lcom/asus/DMS/MountChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountChangeReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/DMS/MountChangeReceiver;->mContext:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lcom/asus/DMS/MountChangeReceiver;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static RegisterMountChangeReceiver(Landroid/content/Context;)Landroid/content/BroadcastReceiver;
    .locals 3
    .parameter "aContext"

    .prologue
    .line 18
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, theFilter:Landroid/content/IntentFilter;
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/asus/DMS/MountChangeReceiver;

    invoke-direct {v0, p0}, Lcom/asus/DMS/MountChangeReceiver;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, theBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method

.method public static UnregisterMountChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "aContext"
    .parameter "aBroadcastReceiver"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    return-void
.end method
