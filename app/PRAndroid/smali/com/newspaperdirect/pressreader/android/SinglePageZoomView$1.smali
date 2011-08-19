.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;
.super Ljava/lang/Thread;
.source "SinglePageZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->val$handler:Landroid/os/Handler;

    .line 85
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 89
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getZoomsFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iget-object v3, v3, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_bg.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadBitmap(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method
