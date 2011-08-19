.class Lcom/android/gallery3d/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "cropRect"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 217
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 14
    .parameter "jc"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 221
    .local v0, cropRect:Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 223
    .local v3, extra:Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 227
    .local v5, rect:Landroid/graphics/Rect;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v6, result:Landroid/content/Intent;
    const-string v8, "cropped-rect"

    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, cropped:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 231
    .local v4, outputted:Z
    if-eqz v3, :cond_7

    .line 232
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 233
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 234
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v12

    .line 258
    .end local v7           #uri:Landroid/net/Uri;
    :goto_0
    return-object v8

    .line 235
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_0
    const/4 v4, 0x1

    .line 236
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v8, v5}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 237
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v8, p1, v1, v7}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v12

    goto :goto_0

    .line 239
    :cond_1
    const-string v8, "return-data"

    invoke-virtual {v3, v8, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 240
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v12

    goto :goto_0

    .line 241
    :cond_2
    const/4 v4, 0x1

    .line 242
    if-nez v1, :cond_3

    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v8, v5}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    :cond_3
    const-string v8, "data"

    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    :cond_4
    const-string v8, "set-as-wallpaper"

    invoke-virtual {v3, v8, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 246
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v12

    goto :goto_0

    .line 247
    :cond_5
    const/4 v4, 0x1

    .line 248
    if-nez v1, :cond_6

    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v8, v5}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 249
    :cond_6
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v8, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v8

    if-nez v8, :cond_7

    move-object v8, v12

    goto :goto_0

    .line 252
    .end local v7           #uri:Landroid/net/Uri;
    :cond_7
    if-nez v4, :cond_a

    .line 253
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v12

    goto :goto_0

    .line 254
    :cond_8
    if-nez v1, :cond_9

    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v8, v5}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 255
    :cond_9
    iget-object v8, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v8, p1, v1}, Lcom/android/gallery3d/app/CropImage;->access$600(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 256
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_a

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .end local v2           #data:Landroid/net/Uri;
    :cond_a
    move-object v8, v6

    .line 258
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$SaveOutput;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
