.class Lcom/android/launcher2/AllAppsPagedView$2;
.super Ljava/lang/Object;
.source "AllAppsPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AllAppsPagedView;->tearDownDragMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AllAppsPagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AllAppsPagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/launcher2/AllAppsPagedView$2;->this$0:Lcom/android/launcher2/AllAppsPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 349
    iget-object v2, p0, Lcom/android/launcher2/AllAppsPagedView$2;->this$0:Lcom/android/launcher2/AllAppsPagedView;

    invoke-static {v2}, Lcom/android/launcher2/AllAppsPagedView;->access$000(Lcom/android/launcher2/AllAppsPagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v2

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DeleteZone;

    .line 353
    .local v0, allAppsDeleteZone:Lcom/android/launcher2/DeleteZone;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DeleteZone;->setDragAndDropEnabled(Z)V

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AllAppsPagedView$2;->this$0:Lcom/android/launcher2/AllAppsPagedView;

    invoke-static {v2}, Lcom/android/launcher2/AllAppsPagedView;->access$000(Lcom/android/launcher2/AllAppsPagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v2

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfoDropTarget;

    .line 357
    .local v1, allAppsInfoButton:Lcom/android/launcher2/ApplicationInfoDropTarget;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/launcher2/ApplicationInfoDropTarget;->setDragAndDropEnabled(Z)V

    .line 358
    :cond_1
    return-void
.end method
