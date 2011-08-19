.class Lcom/layar/data/layer/LayerManager$2;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/layer/LayerManager;->getLayers(Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/layer/LayerManager;


# direct methods
.method constructor <init>(Lcom/layar/data/layer/LayerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerManager$2;->this$0:Lcom/layar/data/layer/LayerManager;

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 960
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$2;->this$0:Lcom/layar/data/layer/LayerManager;

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->access$2(Lcom/layar/data/layer/LayerManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090036

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    .line 961
    return-void
.end method
