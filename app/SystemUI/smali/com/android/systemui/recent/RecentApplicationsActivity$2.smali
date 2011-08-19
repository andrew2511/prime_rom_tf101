.class Lcom/android/systemui/recent/RecentApplicationsActivity$2;
.super Ljava/lang/Object;
.source "RecentApplicationsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentApplicationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentApplicationsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$2;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$2;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$700(Lcom/android/systemui/recent/RecentApplicationsActivity;)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$2;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentApplicationsActivity;->updateRunningTasks()V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$2;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$2;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$000(Lcom/android/systemui/recent/RecentApplicationsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$800(Lcom/android/systemui/recent/RecentApplicationsActivity;Z)V

    .line 500
    return-void

    .line 499
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
