.class Lcom/android/vending/model/DownloadProgressManager$4;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/model/DownloadProgressManager;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/model/DownloadProgressManager;


# direct methods
.method constructor <init>(Lcom/android/vending/model/DownloadProgressManager;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/vending/model/DownloadProgressManager$4;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/vending/model/DownloadProgressManager$4;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    invoke-static {v1}, Lcom/android/vending/model/DownloadProgressManager;->access$100(Lcom/android/vending/model/DownloadProgressManager;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/vending/model/DownloadProgressManager$4;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    invoke-static {v1}, Lcom/android/vending/model/DownloadProgressManager;->access$100(Lcom/android/vending/model/DownloadProgressManager;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 126
    iget-object v1, p0, Lcom/android/vending/model/DownloadProgressManager$4;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/vending/model/DownloadProgressManager;->access$102(Lcom/android/vending/model/DownloadProgressManager;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/vending/model/DownloadProgressManager$4;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    invoke-static {v1}, Lcom/android/vending/model/DownloadProgressManager;->access$200(Lcom/android/vending/model/DownloadProgressManager;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 131
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 134
    :cond_1
    return-void
.end method
