.class Lcom/layar/SearchLayersActivity$2;
.super Ljava/lang/Object;
.source "SearchLayersActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/SearchLayersActivity;->_scrollListener()Landroid/widget/AbsListView$OnScrollListener;
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
    iput-object p1, p0, Lcom/layar/SearchLayersActivity$2;->this$0:Lcom/layar/SearchLayersActivity;

    .line 246
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
    .line 254
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 248
    if-nez p2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/layar/SearchLayersActivity$2;->this$0:Lcom/layar/SearchLayersActivity;

    invoke-static {v0}, Lcom/layar/SearchLayersActivity;->access$1(Lcom/layar/SearchLayersActivity;)V

    .line 250
    :cond_0
    return-void
.end method
