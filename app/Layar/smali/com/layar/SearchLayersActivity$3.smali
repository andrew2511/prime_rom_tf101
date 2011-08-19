.class Lcom/layar/SearchLayersActivity$3;
.super Ljava/lang/Object;
.source "SearchLayersActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/SearchLayersActivity;->_onLayerLongClick()Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/SearchLayersActivity;


# direct methods
.method constructor <init>(Lcom/layar/SearchLayersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/SearchLayersActivity$3;->this$0:Lcom/layar/SearchLayersActivity;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/layar/SearchLayersActivity$3;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/Layer20;

    invoke-static {v1, v0}, Lcom/layar/SearchLayersActivity;->access$6(Lcom/layar/SearchLayersActivity;Lcom/layar/data/layer/Layer20;)V

    .line 277
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$3;->this$0:Lcom/layar/SearchLayersActivity;

    iget-object v1, p0, Lcom/layar/SearchLayersActivity$3;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-virtual {v1}, Lcom/layar/SearchLayersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/SearchLayersActivity;->openContextMenu(Landroid/view/View;)V

    .line 278
    const/4 v0, 0x1

    return v0
.end method
