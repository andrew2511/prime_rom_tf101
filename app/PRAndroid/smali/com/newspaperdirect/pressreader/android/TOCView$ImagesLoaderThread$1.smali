.class Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread$1;
.super Ljava/lang/Object;
.source "TOCView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

.field private final synthetic val$result:Landroid/graphics/Bitmap;

.field private final synthetic val$task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread$1;->this$1:Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread$1;->val$task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread$1;->val$result:Landroid/graphics/Bitmap;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 460
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread$1;->val$task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 461
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 462
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread$1;->val$task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 463
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 464
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    :cond_0
    return-void
.end method
