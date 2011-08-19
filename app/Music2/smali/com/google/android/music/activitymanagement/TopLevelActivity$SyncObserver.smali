.class Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/TopLevelActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2291
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 4
    .parameter "which"

    .prologue
    .line 2293
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$900(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 2294
    .local v0, account:Landroid/accounts/Account;
    const-string v2, "com.google.android.music.MusicContent"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 2296
    .local v1, syncActive:Z
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v2, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1902(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)Z

    .line 2297
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver$1;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;Z)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2304
    return-void
.end method
