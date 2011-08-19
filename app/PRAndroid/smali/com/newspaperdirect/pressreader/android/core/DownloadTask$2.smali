.class Lcom/newspaperdirect/pressreader/android/core/DownloadTask$2;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyBadConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadTask;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$2;->val$context:Landroid/content/Context;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$2;->val$context:Landroid/content/Context;

    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, msg:Ljava/lang/String;
    const-string v2, "DownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SocketTimeoutException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$2;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 324
    .local v0, bte:Landroid/view/WindowManager$BadTokenException;
    const-string v2, "DownloadTask"

    const-string v3, "PressReader app is no longer in front."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
