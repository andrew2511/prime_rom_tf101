.class Lcom/google/android/music/activitymanagement/TopLevelActivity$2;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->initialize(Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/QueryBrowserActivity;->handleSearchResult(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Landroid/content/Intent;)Z

    .line 494
    return-void
.end method
