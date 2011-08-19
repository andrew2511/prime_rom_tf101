.class Lcom/layar/LayerInfoActivity$LoadScreenshotTask;
.super Landroid/os/AsyncTask;
.source "LayerInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/LayerInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadScreenshotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/layar/data/layer/Layer20;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/LayerInfoActivity;


# direct methods
.method private constructor <init>(Lcom/layar/LayerInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/LayerInfoActivity;Lcom/layar/LayerInfoActivity$LoadScreenshotTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;-><init>(Lcom/layar/LayerInfoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/layar/data/layer/Layer20;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, icon:Landroid/graphics/Bitmap;
    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->screenshotURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 334
    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->screenshotURL:Ljava/lang/String;

    const v2, 0x3e800

    .line 333
    invoke-static {v1, v2}, Lcom/layar/data/ImageCache;->downloadPoiImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    :cond_0
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/layar/data/layer/Layer20;

    invoke-virtual {p0, p1}, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;->doInBackground([Lcom/layar/data/layer/Layer20;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-static {v0}, Lcom/layar/LayerInfoActivity;->access$0(Lcom/layar/LayerInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 342
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-static {v0}, Lcom/layar/LayerInfoActivity;->access$0(Lcom/layar/LayerInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadScreenshotTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-static {v0}, Lcom/layar/LayerInfoActivity;->access$0(Lcom/layar/LayerInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 326
    return-void
.end method
