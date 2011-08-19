.class Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;
.super Landroid/os/AsyncTask;
.source "AddFavoritesDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/AddFavoritesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLogoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private layername:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/ui/AddFavoritesDialog;


# direct methods
.method private constructor <init>(Lcom/layar/ui/AddFavoritesDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/ui/AddFavoritesDialog;Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;-><init>(Lcom/layar/ui/AddFavoritesDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    aget-object v1, p1, v3

    iput-object v1, p0, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->layername:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->layername:Ljava/lang/String;

    const-string v2, "banner_icon"

    invoke-static {v1, v2, v3}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, cached:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->layername:Ljava/lang/String;

    const-string v2, "banner_icon"

    invoke-static {v1, v2, v3}, Lcom/layar/data/ImageCache;->downloadLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    :cond_0
    if-nez v0, :cond_1

    .line 248
    iget-object v1, p0, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->layername:Ljava/lang/String;

    const-string v2, "banner_icon"

    invoke-static {v1, v2, v4}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    :cond_1
    if-nez v0, :cond_2

    .line 250
    iget-object v1, p0, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->layername:Ljava/lang/String;

    const-string v2, "banner_icon"

    invoke-static {v1, v2, v4}, Lcom/layar/data/ImageCache;->downloadLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    :cond_2
    new-array v1, v4, [Landroid/graphics/Bitmap;

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->publishProgress([Ljava/lang/Object;)V

    .line 253
    const/4 v1, 0x0

    return-object v1
.end method

.method public varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    invoke-static {v0}, Lcom/layar/ui/AddFavoritesDialog;->access$0(Lcom/layar/ui/AddFavoritesDialog;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->layername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/layar/ui/AddFavoritesDialog;->setLogo(Landroid/graphics/Bitmap;)V

    .line 236
    :cond_0
    return-void
.end method

.method public bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/layar/ui/AddFavoritesDialog$GetLogoTask;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method
