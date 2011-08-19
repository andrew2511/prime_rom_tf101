.class Lcom/layar/data/layer/LayerRefresher$1;
.super Ljava/lang/Object;
.source "LayerRefresher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/layer/LayerRefresher;


# direct methods
.method constructor <init>(Lcom/layar/data/layer/LayerRefresher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerRefresher$1;->this$0:Lcom/layar/data/layer/LayerRefresher;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher$1;->this$0:Lcom/layar/data/layer/LayerRefresher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerRefresher;->check(Landroid/location/Location;)V

    .line 111
    return-void
.end method
