.class Lcom/layar/LayerInfoActivity$1;
.super Ljava/lang/Object;
.source "LayerInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/LayerInfoActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/layar/LayerInfoActivity$1;->this$0:Lcom/layar/LayerInfoActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$1;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v0, v0, Lcom/layar/LayerInfoActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, p0, Lcom/layar/LayerInfoActivity$1;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v1, v1, Lcom/layar/LayerInfoActivity;->mLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->addBookmark(Lcom/layar/data/layer/Layer20;)V

    .line 129
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$1;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v0, v0, Lcom/layar/LayerInfoActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0}, Lcom/layar/ActivityHelper;->gotoMain()V

    .line 130
    return-void
.end method
