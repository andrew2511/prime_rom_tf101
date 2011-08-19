.class Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "WallpaperChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 276
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 277
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 278
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 279
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 324
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 325
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 288
    :goto_0
    return-object v1

    .line 285
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$200(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/OutOfMemoryError;
    move-object v1, v4

    .line 288
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    .line 294
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v2, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$300(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$300(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$400(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 304
    .local v1, view:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v2, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$302(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 309
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 310
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 311
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 313
    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 316
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$502(Lcom/android/launcher2/WallpaperChooserDialogFragment;Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    goto :goto_0

    .line 318
    .end local v1           #view:Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 272
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
