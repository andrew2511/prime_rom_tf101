.class Lcom/layar/ui/BriefInfoView$PoiImageLoader;
.super Landroid/os/AsyncTask;
.source "BriefInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/BriefInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PoiImageLoader"
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
.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/ui/BriefInfoView;


# direct methods
.method public constructor <init>(Lcom/layar/ui/BriefInfoView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->this$0:Lcom/layar/ui/BriefInfoView;

    .line 442
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 443
    iput-object p2, p0, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "params"

    .prologue
    .line 454
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    const/4 v1, 0x0

    .line 459
    :goto_0
    return-object v1

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/layar/data/ImageCache;->readPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 457
    .local v0, image:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 458
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/layar/data/ImageCache;->downloadPoiImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 459
    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 465
    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v0, p1}, Lcom/layar/ui/BriefInfoView;->access$0(Lcom/layar/ui/BriefInfoView;Landroid/graphics/Bitmap;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->this$0:Lcom/layar/ui/BriefInfoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ui/BriefInfoView;->access$1(Lcom/layar/ui/BriefInfoView;Lcom/layar/ui/BriefInfoView$PoiImageLoader;)V

    .line 468
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 449
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->this$0:Lcom/layar/ui/BriefInfoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ui/BriefInfoView;->access$0(Lcom/layar/ui/BriefInfoView;Landroid/graphics/Bitmap;)V

    .line 450
    return-void
.end method
