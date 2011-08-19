.class Lcom/android/vending/model/DownloadProgressManager$3;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/model/DownloadProgressManager;->onPause()V
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
    .line 112
    iput-object p1, p0, Lcom/android/vending/model/DownloadProgressManager$3;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager$3;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    invoke-static {v0}, Lcom/android/vending/model/DownloadProgressManager;->access$100(Lcom/android/vending/model/DownloadProgressManager;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 115
    return-void
.end method
