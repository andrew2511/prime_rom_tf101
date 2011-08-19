.class Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;
.super Ljava/lang/Object;
.source "PageCellsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;

.field private final synthetic val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;->this$2:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;->val$result:Landroid/graphics/Bitmap;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;->this$2:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$2(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;Z)V

    .line 231
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;->val$result:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;->this$2:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;->val$result:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$3(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;Landroid/graphics/Bitmap;)V

    .line 234
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;->this$2:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$9(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$3(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2$1;->this$2:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell$2;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;->access$9(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$3(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$OnBitmapLoadedListener;->onBitmapLoaded()V

    .line 236
    :cond_0
    return-void
.end method
