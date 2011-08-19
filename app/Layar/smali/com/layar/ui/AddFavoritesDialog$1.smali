.class Lcom/layar/ui/AddFavoritesDialog$1;
.super Ljava/lang/Object;
.source "AddFavoritesDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/AddFavoritesDialog;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/AddFavoritesDialog;


# direct methods
.method constructor <init>(Lcom/layar/ui/AddFavoritesDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/AddFavoritesDialog$1;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog$1;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    invoke-virtual {v0}, Lcom/layar/ui/AddFavoritesDialog;->cancel()V

    .line 76
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog$1;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    invoke-static {v0}, Lcom/layar/ui/AddFavoritesDialog;->access$1(Lcom/layar/ui/AddFavoritesDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog$1;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    invoke-static {v0}, Lcom/layar/ui/AddFavoritesDialog;->access$2(Lcom/layar/ui/AddFavoritesDialog;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/AddFavoritesDialog$1;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    invoke-static {v1}, Lcom/layar/ui/AddFavoritesDialog;->access$0(Lcom/layar/ui/AddFavoritesDialog;)Lcom/layar/data/layer/Layer20;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->removeBookmark(Lcom/layar/data/layer/Layer20;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/AddFavoritesDialog$1;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    invoke-static {v0}, Lcom/layar/ui/AddFavoritesDialog;->access$2(Lcom/layar/ui/AddFavoritesDialog;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/AddFavoritesDialog$1;->this$0:Lcom/layar/ui/AddFavoritesDialog;

    invoke-static {v1}, Lcom/layar/ui/AddFavoritesDialog;->access$0(Lcom/layar/ui/AddFavoritesDialog;)Lcom/layar/data/layer/Layer20;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->addBookmark(Lcom/layar/data/layer/Layer20;)V

    goto :goto_0
.end method
