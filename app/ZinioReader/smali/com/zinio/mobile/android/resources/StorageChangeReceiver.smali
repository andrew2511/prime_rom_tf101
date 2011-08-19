.class public Lcom/zinio/mobile/android/resources/StorageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;->a:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    sput-object v0, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 61
    :cond_0
    sget-object v0, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;->a:Landroid/content/IntentFilter;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 25
    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    const v1, 0x7f080068

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/zinio/mobile/android/resources/a/b;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    invoke-static {}, Lcom/zinio/mobile/android/App;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/b/l;->k()V

    .line 35
    invoke-static {}, Lcom/zinio/mobile/android/App;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zinio/mobile/android/App;->a(Z)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
