.class public Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;
.super Lcom/amazon/kcp/periodicals/ArticleListActivity;
.source "FilteredArticleListActivity.java"


# static fields
.field public static final FILTER_SECTION_INDEX:Ljava/lang/String; = "filterSectionIndex"

.field public static final NO_SECTION_INDEX_FILTER:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;-><init>()V

    return-void
.end method

.method private gotoUnfilteredList()V
    .locals 2

    .prologue
    .line 112
    invoke-static {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->createIntentForPeriodicalLaunch(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->finish()V

    .line 117
    return-void
.end method


# virtual methods
.method protected getFragments()[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;
    .locals 4

    .prologue
    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0011

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    aput-object p0, v0, v1

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized request code in onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    if-lt p2, v1, :cond_0

    .line 53
    sub-int v0, p2, v1

    sub-int/2addr v0, v1

    .line 57
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v2, "filterSectionIndex"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->finish()V

    goto :goto_0

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->gotoUnfilteredList()V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 34
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 41
    invoke-super {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 37
    :pswitch_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "FilteredArticleListActivity"

    const-string v2, "FrontPageViaArticlesListMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->gotoUnfilteredList()V

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x7f0c00f4
        :pswitch_0
    .end packed-switch
.end method

.method protected setup(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 83
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filterSectionIndex"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 84
    if-ne v0, v2, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->gotoUnfilteredList()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    if-nez p1, :cond_0

    .line 95
    new-instance v1, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;

    invoke-direct {v1}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;-><init>()V

    .line 96
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 101
    :cond_2
    const-string v3, "filterSectionIndex"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0c0011

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
