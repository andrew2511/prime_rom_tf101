.class Lcom/amazon/kcp/periodicals/ArticleListActivity$5;
.super Ljava/lang/Object;
.source "ArticleListActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ArticleListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ArticleListActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ArticleListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity$5;->this$0:Lcom/amazon/kcp/periodicals/ArticleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity$5;->this$0:Lcom/amazon/kcp/periodicals/ArticleListActivity;

    invoke-static {v0, v1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->access$102(Lcom/amazon/kcp/periodicals/ArticleListActivity;Z)Z

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity$5;->this$0:Lcom/amazon/kcp/periodicals/ArticleListActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 211
    return-void
.end method
