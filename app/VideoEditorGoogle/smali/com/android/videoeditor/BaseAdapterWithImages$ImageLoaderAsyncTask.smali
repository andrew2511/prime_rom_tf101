.class public Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAdapterWithImages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/BaseAdapterWithImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImageLoaderAsyncTask"
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
.field private final mData:Ljava/lang/Object;

.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/videoeditor/BaseAdapterWithImages;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/BaseAdapterWithImages;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;,"Lcom/android/videoeditor/BaseAdapterWithImages<TT;>.ImageLoaderAsyncTask;"
    .local p2, key:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/BaseAdapterWithImages;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->mKey:Ljava/lang/Object;

    .line 103
    iput-object p3, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->mData:Ljava/lang/Object;

    .line 104
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "zzz"

    .prologue
    .line 111
    .local p0, this:Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;,"Lcom/android/videoeditor/BaseAdapterWithImages<TT;>.ImageLoaderAsyncTask;"
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/BaseAdapterWithImages;

    iget-object v1, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/BaseAdapterWithImages;->loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    .local p0, this:Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;,"Lcom/android/videoeditor/BaseAdapterWithImages<TT;>.ImageLoaderAsyncTask;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 119
    .local p0, this:Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;,"Lcom/android/videoeditor/BaseAdapterWithImages<TT;>.ImageLoaderAsyncTask;"
    iget-object v2, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/BaseAdapterWithImages;

    invoke-static {v2}, Lcom/android/videoeditor/BaseAdapterWithImages;->access$000(Lcom/android/videoeditor/BaseAdapterWithImages;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->mKey:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/BaseAdapterWithImages;

    invoke-static {v2}, Lcom/android/videoeditor/BaseAdapterWithImages;->access$100(Lcom/android/videoeditor/BaseAdapterWithImages;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;

    .line 125
    .local v1, viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder<TT;>;"
    iget-object v2, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->mKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->access$200(Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    invoke-static {v1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->access$300(Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 131
    .end local v1           #viewHolder:Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder<TT;>;"
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    .local p0, this:Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;,"Lcom/android/videoeditor/BaseAdapterWithImages<TT;>.ImageLoaderAsyncTask;"
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
