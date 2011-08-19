.class Lcom/android/launcher2/LauncherModel$LoaderTask$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->onlyBindAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1165
    .local v1, t:J
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1166
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1167
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$12;->val$list:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 1173
    :cond_0
    return-void
.end method
