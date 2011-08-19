.class Lcom/amazon/kcp/periodicals/ui/ArticlesView$2;
.super Ljava/lang/Object;
.source "ArticlesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/ArticlesView;->addArticle(Lcom/amazon/kcp/reader/models/IArticleTOCItem;ILcom/amazon/kcp/reader/ui/color/AndroidColorMode;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

.field final synthetic val$artView:Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/ArticlesView;Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$2;->this$0:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$2;->val$artView:Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$2;->val$artView:Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->getItem()Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->gotoLocation()V

    .line 175
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$2;->this$0:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$2;->this$0:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
