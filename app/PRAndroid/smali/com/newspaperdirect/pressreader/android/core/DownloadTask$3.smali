.class Lcom/newspaperdirect/pressreader/android/core/DownloadTask$3;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyNoSdCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$3;->val$msg:Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$3;->val$msg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 349
    .local v0, bte:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "DownloadTask"

    const-string v2, "PressReader app is no longer in front."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
