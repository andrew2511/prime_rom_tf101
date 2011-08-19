.class Lcom/layar/SearchLayersActivity$4;
.super Ljava/lang/Object;
.source "SearchLayersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/SearchLayersActivity;->_onLayerClick()Landroid/view/View$OnClickListener;
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
    iput-object p1, p0, Lcom/layar/SearchLayersActivity$4;->this$0:Lcom/layar/SearchLayersActivity;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 287
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/layar/SearchLayersActivity$4;->this$0:Lcom/layar/SearchLayersActivity;

    iget-object v1, v1, Lcom/layar/SearchLayersActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-static {p1, v0, v1}, Lcom/layar/data/layer/LayerHelper;->onClick(Landroid/view/View;ZLcom/layar/ActivityHelper;)Lcom/layar/data/layer/Layer20;

    .line 288
    return-void
.end method
