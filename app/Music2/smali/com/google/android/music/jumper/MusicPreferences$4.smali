.class Lcom/google/android/music/jumper/MusicPreferences$4;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/jumper/MusicPreferences;->switchAccountAsync(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    iput-object p2, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 384
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$300(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v1}, Lcom/google/android/music/jumper/MusicPreferences;->access$300(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->deleteRemoteMusicAndPlaylists(Landroid/content/Context;Z)Z

    .line 387
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$300(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.accountchanged"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->val$account:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->val$account:Landroid/accounts/Account;

    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 392
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->val$account:Landroid/accounts/Account;

    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 393
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$4;->val$account:Landroid/accounts/Account;

    const-string v1, "com.google.android.music.MusicContent"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 395
    :cond_0
    return-void
.end method
