.class abstract Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Lcom/layar/data/layer/LayerManager$LayerFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "InternalLayerFoundListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/layer/LayerManager;

.field public wasPageUpdated:Z


# direct methods
.method private constructor <init>(Lcom/layar/data/layer/LayerManager;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;->this$0:Lcom/layar/data/layer/LayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;->wasPageUpdated:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/data/layer/LayerManager;Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;-><init>(Lcom/layar/data/layer/LayerManager;)V

    return-void
.end method
