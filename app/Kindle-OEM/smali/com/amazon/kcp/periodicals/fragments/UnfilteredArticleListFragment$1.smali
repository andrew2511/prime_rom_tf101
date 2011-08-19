.class Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment$1;
.super Ljava/lang/Object;
.source "UnfilteredArticleListFragment.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 3
    .parameter

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const-string v1, "filterSectionIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
