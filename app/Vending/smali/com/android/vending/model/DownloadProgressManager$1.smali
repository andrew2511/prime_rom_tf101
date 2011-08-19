.class Lcom/android/vending/model/DownloadProgressManager$1;
.super Landroid/database/ContentObserver;
.source "DownloadProgressManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/model/DownloadProgressManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/model/DownloadProgressManager;


# direct methods
.method constructor <init>(Lcom/android/vending/model/DownloadProgressManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/vending/model/DownloadProgressManager$1;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager$1;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    invoke-virtual {v0}, Lcom/android/vending/model/DownloadProgressManager;->onDownloadProgress()V

    .line 75
    return-void
.end method
