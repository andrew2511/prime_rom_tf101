.class Lcom/layar/data/layer/LayerHandler$4;
.super Ljava/lang/Object;
.source "LayerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/layer/LayerHandler;->setAutoTriggerListener(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/layer/LayerHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/layer/LayerHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler$4;->this$0:Lcom/layar/data/layer/LayerHandler;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$4;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->checkAutoTrigger()V

    .line 559
    return-void
.end method
