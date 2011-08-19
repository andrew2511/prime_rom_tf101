.class Lcom/android/launcher2/AllAppsPagedView$1;
.super Ljava/lang/Object;
.source "AllAppsPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AllAppsPagedView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AllAppsPagedView;

.field final synthetic val$app:Lcom/android/launcher2/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AllAppsPagedView;Lcom/android/launcher2/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/launcher2/AllAppsPagedView$1;->this$0:Lcom/android/launcher2/AllAppsPagedView;

    iput-object p2, p0, Lcom/android/launcher2/AllAppsPagedView$1;->val$app:Lcom/android/launcher2/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView$1;->this$0:Lcom/android/launcher2/AllAppsPagedView;

    invoke-static {v0}, Lcom/android/launcher2/AllAppsPagedView;->access$000(Lcom/android/launcher2/AllAppsPagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AllAppsPagedView$1;->val$app:Lcom/android/launcher2/ApplicationInfo;

    iget-object v1, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/AllAppsPagedView$1;->val$app:Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 315
    return-void
.end method
