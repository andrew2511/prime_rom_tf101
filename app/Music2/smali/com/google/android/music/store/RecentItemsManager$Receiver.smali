.class public Lcom/google/android/music/store/RecentItemsManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentItemsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/RecentItemsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 330
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->hasRecentView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/store/RecentItemsManager$Service;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .local v1, recordCurrentlyPlayed:Landroid/content/Intent;
    const-string v2, "RecentItemsManagerService.recordCurrentlyPlayed"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
