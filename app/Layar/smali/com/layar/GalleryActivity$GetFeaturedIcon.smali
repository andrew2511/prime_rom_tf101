.class Lcom/layar/GalleryActivity$GetFeaturedIcon;
.super Landroid/os/AsyncTask;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFeaturedIcon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayerName:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/GalleryActivity;


# direct methods
.method private constructor <init>(Lcom/layar/GalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->this$0:Lcom/layar/GalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/GalleryActivity;Lcom/layar/GalleryActivity$GetFeaturedIcon;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/layar/GalleryActivity$GetFeaturedIcon;-><init>(Lcom/layar/GalleryActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager;->getFirstFeaturedLayerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->mLayerName:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->mLayerName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 242
    :goto_0
    return-object v1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->mLayerName:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v3}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 235
    iget-object v1, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->mLayerName:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v3}, Lcom/layar/data/ImageCache;->downloadLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    :cond_1
    if-nez v0, :cond_2

    .line 239
    iget-object v1, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->mLayerName:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v4}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    :cond_2
    if-nez v0, :cond_3

    .line 241
    iget-object v1, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->mLayerName:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v4}, Lcom/layar/data/ImageCache;->downloadLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 242
    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/GalleryActivity$GetFeaturedIcon;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p0}, Lcom/layar/GalleryActivity$GetFeaturedIcon;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 251
    :cond_0
    if-eqz p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->this$0:Lcom/layar/GalleryActivity;

    invoke-static {v0}, Lcom/layar/GalleryActivity;->access$0(Lcom/layar/GalleryActivity;)Lcom/layar/adapters/GalleryExpandableAdapter;

    move-result-object v0

    const-string v1, "featured"

    invoke-virtual {v0, v1, p1}, Lcom/layar/adapters/GalleryExpandableAdapter;->updateTab(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->this$0:Lcom/layar/GalleryActivity;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/layar/GalleryActivity$GetFeaturedIcon;->this$0:Lcom/layar/GalleryActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/layar/GalleryActivity;->access$3(Lcom/layar/GalleryActivity;Lcom/layar/GalleryActivity$GetFeaturedIcon;)V

    .line 254
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/layar/GalleryActivity$GetFeaturedIcon;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
