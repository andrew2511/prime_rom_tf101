.class Lcom/layar/LayerInfoActivity$2;
.super Ljava/lang/Object;
.source "LayerInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/LayerInfoActivity;->bindFavouriteListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/LayerInfoActivity;


# direct methods
.method constructor <init>(Lcom/layar/LayerInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/LayerInfoActivity$2;->this$0:Lcom/layar/LayerInfoActivity;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$2;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v0, v0, Lcom/layar/LayerInfoActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, p0, Lcom/layar/LayerInfoActivity$2;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v1, v1, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->addBookmark(Lcom/layar/data/layer/Layer20;)V

    .line 354
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$2;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-static {v0}, Lcom/layar/LayerInfoActivity;->access$1(Lcom/layar/LayerInfoActivity;)V

    .line 355
    return-void
.end method
