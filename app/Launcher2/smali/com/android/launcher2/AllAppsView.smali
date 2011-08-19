.class public interface abstract Lcom/android/launcher2/AllAppsView;
.super Ljava/lang/Object;
.source "AllAppsView.java"


# virtual methods
.method public abstract addApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dumpState()V
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract removeApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDragController(Lcom/android/launcher2/DragController;)V
.end method

.method public abstract setLauncher(Lcom/android/launcher2/Launcher;)V
.end method

.method public abstract surrender()V
.end method

.method public abstract updateApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zoom(FZ)V
.end method
