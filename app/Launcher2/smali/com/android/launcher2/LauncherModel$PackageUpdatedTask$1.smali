.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

.field final synthetic val$addedFinal:Ljava/util/ArrayList;

.field final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->val$addedFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;->val$addedFinal:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    .line 1380
    :cond_0
    return-void
.end method
