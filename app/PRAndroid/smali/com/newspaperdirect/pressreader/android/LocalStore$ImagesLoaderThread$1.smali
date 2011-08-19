.class Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

.field private final synthetic val$result:Landroid/graphics/Bitmap;

.field private final synthetic val$task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;->val$task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;->val$result:Landroid/graphics/Bitmap;

    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1892
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;->val$task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1893
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;->val$task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1902
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 1894
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;->val$task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1895
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;->val$task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1896
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread$1;->val$task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RelativeLayout;

    const v2, 0x7f0c0032

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1897
    .local v0, spinner:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1898
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1899
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
