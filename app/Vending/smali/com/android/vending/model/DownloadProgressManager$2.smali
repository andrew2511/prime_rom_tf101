.class Lcom/android/vending/model/DownloadProgressManager$2;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/model/DownloadProgressManager;->onResume(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/model/DownloadProgressManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vending/model/DownloadProgressManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/vending/model/DownloadProgressManager$2;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    iput-object p2, p0, Lcom/android/vending/model/DownloadProgressManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager$2;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    iget-object v1, p0, Lcom/android/vending/model/DownloadProgressManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/vending/model/DownloadProgressManager;->access$000(Lcom/android/vending/model/DownloadProgressManager;Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager$2;->this$0:Lcom/android/vending/model/DownloadProgressManager;

    invoke-virtual {v0}, Lcom/android/vending/model/DownloadProgressManager;->onDownloadProgress()V

    .line 87
    return-void
.end method
