.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;
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

.field final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field final synthetic val$permanent:Z

.field final synthetic val$removedFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;->val$removedFinal:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;->val$permanent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;->val$removedFinal:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;->val$permanent:Z

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsRemoved(Ljava/util/ArrayList;Z)V

    .line 1401
    :cond_0
    return-void
.end method
