.class Lcom/google/android/music/activitymanagement/TopLevelActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "TopLevelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 961
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$4;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 964
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$4;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v1

    if-nez v1, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$4;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->access$500(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    goto :goto_0
.end method
