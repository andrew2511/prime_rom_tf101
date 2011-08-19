.class Lcom/layar/ui/drag/LayerSpot$GetIconTask;
.super Landroid/os/AsyncTask;
.source "LayerSpot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/drag/LayerSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetIconTask"
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

.field final synthetic this$0:Lcom/layar/ui/drag/LayerSpot;


# direct methods
.method private constructor <init>(Lcom/layar/ui/drag/LayerSpot;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/ui/drag/LayerSpot;Lcom/layar/ui/drag/LayerSpot$GetIconTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/layar/ui/drag/LayerSpot$GetIconTask;-><init>(Lcom/layar/ui/drag/LayerSpot;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 214
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->layername:Ljava/lang/String;

    .line 215
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->layername:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v3}, Lcom/layar/data/ImageCache;->downloadLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->publishProgress([Ljava/lang/Object;)V

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->this$0:Lcom/layar/ui/drag/LayerSpot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ui/drag/LayerSpot;->access$5(Lcom/layar/ui/drag/LayerSpot;Lcom/layar/ui/drag/LayerSpot$GetIconTask;)V

    .line 222
    return-void
.end method

.method public varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 205
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v0}, Lcom/layar/ui/drag/LayerSpot;->access$0(Lcom/layar/ui/drag/LayerSpot;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v0}, Lcom/layar/ui/drag/LayerSpot;->access$0(Lcom/layar/ui/drag/LayerSpot;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->layername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->this$0:Lcom/layar/ui/drag/LayerSpot;

    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->this$0:Lcom/layar/ui/drag/LayerSpot;

    aget-object v2, p1, v3

    invoke-static {v1, v2}, Lcom/layar/ui/drag/LayerSpot;->access$1(Lcom/layar/ui/drag/LayerSpot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layar/ui/drag/LayerSpot;->access$2(Lcom/layar/ui/drag/LayerSpot;Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v0}, Lcom/layar/ui/drag/LayerSpot;->access$3(Lcom/layar/ui/drag/LayerSpot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v1}, Lcom/layar/ui/drag/LayerSpot;->access$4(Lcom/layar/ui/drag/LayerSpot;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v0}, Lcom/layar/ui/drag/LayerSpot;->access$3(Lcom/layar/ui/drag/LayerSpot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/layar/ui/drag/LayerSpot$GetIconTask;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method
