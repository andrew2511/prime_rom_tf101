.class Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "KenBurnsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/KenBurnsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field private final mFilename:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/videoeditor/KenBurnsActivity;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "filename"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->mFilename:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$200(Lcom/android/videoeditor/KenBurnsActivity;Z)V

    .line 170
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "zzz"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/KenBurnsActivity;->access$300(Lcom/android/videoeditor/KenBurnsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 194
    :goto_0
    return-object v1

    .line 182
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getWidth()I

    move-result v1

    if-gtz v1, :cond_1

    .line 184
    const-wide/16 v1, 0x1e

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 185
    :catch_0
    move-exception v1

    goto :goto_1

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/KenBurnsActivity;->access$400(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/KenBurnsActivity;->access$400(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 192
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 193
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v1}, Lcom/android/videoeditor/KenBurnsActivity;->access$500(Lcom/android/videoeditor/KenBurnsActivity;)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 194
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->mFilename:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x1

    .line 203
    if-nez p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$300(Lcom/android/videoeditor/KenBurnsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/KenBurnsActivity;->finish()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$300(Lcom/android/videoeditor/KenBurnsActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videoeditor/KenBurnsActivity;->access$200(Lcom/android/videoeditor/KenBurnsActivity;Z)V

    .line 212
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$600(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 214
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0, p1}, Lcom/android/videoeditor/KenBurnsActivity;->access$402(Lcom/android/videoeditor/KenBurnsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 215
    const-string v0, "KenBurnsActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    const-string v0, "KenBurnsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$700(Lcom/android/videoeditor/KenBurnsActivity;)V

    goto :goto_0

    .line 222
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
