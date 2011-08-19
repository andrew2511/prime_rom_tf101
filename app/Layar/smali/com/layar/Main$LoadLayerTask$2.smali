.class Lcom/layar/Main$LoadLayerTask$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Main$LoadLayerTask;->onPostExecute(Lcom/layar/data/layer/LayerManager$LayerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/Main$LoadLayerTask;

.field private final synthetic val$layer:Lcom/layar/data/layer/Layer20;


# direct methods
.method constructor <init>(Lcom/layar/Main$LoadLayerTask;Lcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Main$LoadLayerTask$2;->this$1:Lcom/layar/Main$LoadLayerTask;

    iput-object p2, p0, Lcom/layar/Main$LoadLayerTask$2;->val$layer:Lcom/layar/data/layer/Layer20;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask$2;->this$1:Lcom/layar/Main$LoadLayerTask;

    invoke-static {v0}, Lcom/layar/Main$LoadLayerTask;->access$3(Lcom/layar/Main$LoadLayerTask;)Lcom/layar/Main;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/Main;->access$7(Lcom/layar/Main;Landroid/app/Dialog;)V

    .line 380
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask$2;->this$1:Lcom/layar/Main$LoadLayerTask;

    iget-object v1, p0, Lcom/layar/Main$LoadLayerTask$2;->val$layer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0, v1}, Lcom/layar/Main$LoadLayerTask;->start(Lcom/layar/data/layer/Layer20;)V

    .line 381
    return-void
.end method
