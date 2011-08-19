.class Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;
.super Ljava/lang/Object;
.source "PageCellsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->loadBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$1(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :cond_0
    :goto_0
    move-object v2, v0

    .line 227
    .local v2, result:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 228
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$9(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$2(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;

    invoke-direct {v4, p0, v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void

    .line 222
    .end local v2           #result:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 223
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "PageCellsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
