.class Lcom/layar/data/layer/LayerHandler$GetPOITask$1;
.super Ljava/lang/Object;
.source "LayerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/layer/LayerHandler$GetPOITask;->onPostExecute([Lcom/layar/data/layer/LayerManager$POIResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/data/layer/LayerHandler$GetPOITask;


# direct methods
.method constructor <init>(Lcom/layar/data/layer/LayerHandler$GetPOITask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask$1;->this$1:Lcom/layar/data/layer/LayerHandler$GetPOITask;

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$GetPOITask$1;->this$1:Lcom/layar/data/layer/LayerHandler$GetPOITask;

    invoke-static {v0}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->access$3(Lcom/layar/data/layer/LayerHandler$GetPOITask;)Lcom/layar/data/layer/LayerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->checkAutoTrigger()V

    .line 845
    return-void
.end method
