.class Lcom/google/android/music/activitymanagement/TopLevelActivity$3;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->onStoreStateChanged(I)V
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
    .line 944
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$300(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 949
    :cond_0
    return-void
.end method
