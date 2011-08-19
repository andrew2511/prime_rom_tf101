.class Lcom/amazon/kcp/periodicals/ArticleListActivity$6;
.super Ljava/lang/Object;
.source "ArticleListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ArticleListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 430
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity$6;->this$0:Lcom/amazon/kcp/periodicals/ArticleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity$6;->this$0:Lcom/amazon/kcp/periodicals/ArticleListActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->finish()V

    .line 435
    return-void
.end method
