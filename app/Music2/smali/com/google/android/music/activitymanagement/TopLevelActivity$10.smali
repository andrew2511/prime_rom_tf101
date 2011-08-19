.class Lcom/google/android/music/activitymanagement/TopLevelActivity$10;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 1726
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$10;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1729
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$10;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1730
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$10;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v0

    .line 1732
    .local v0, manager:Lcom/google/android/music/OfflineMusicManager;
    if-eqz v0, :cond_0

    .line 1733
    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    .line 1736
    .end local v0           #manager:Lcom/google/android/music/OfflineMusicManager;
    :cond_0
    return-void
.end method
