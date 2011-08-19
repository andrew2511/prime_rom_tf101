.class abstract Lcom/zinio/mobile/android/view/cl;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zinio/mobile/android/view/cl;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static b()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v3

    .line 24
    :goto_0
    sget-boolean v1, Lcom/zinio/mobile/android/view/cl;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 25
    sput-boolean v2, Lcom/zinio/mobile/android/view/cl;->a:Z

    .line 26
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/cl;->a()V

    .line 28
    :cond_1
    if-nez v0, :cond_3

    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/zinio/mobile/android/view/cl;->a:Z

    .line 29
    return-void

    :cond_2
    move v0, v2

    .line 22
    goto :goto_0

    :cond_3
    move v0, v2

    .line 28
    goto :goto_1
.end method
