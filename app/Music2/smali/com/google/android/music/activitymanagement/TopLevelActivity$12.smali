.class Lcom/google/android/music/activitymanagement/TopLevelActivity$12;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
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
    .line 2253
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$12;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$12;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2256
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$12;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNowPlayingBarVisibility()V

    .line 2258
    :cond_0
    return-void
.end method
