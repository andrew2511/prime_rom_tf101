.class Lcom/layar/LayerListActivity$2;
.super Ljava/lang/Object;
.source "LayerListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/LayerListActivity;->_scrollListener()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/LayerListActivity;


# direct methods
.method constructor <init>(Lcom/layar/LayerListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/LayerListActivity$2;->this$0:Lcom/layar/LayerListActivity;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 318
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 312
    if-nez p2, :cond_0

    .line 313
    iget-object v0, p0, Lcom/layar/LayerListActivity$2;->this$0:Lcom/layar/LayerListActivity;

    invoke-static {v0}, Lcom/layar/LayerListActivity;->access$2(Lcom/layar/LayerListActivity;)V

    .line 314
    :cond_0
    return-void
.end method
