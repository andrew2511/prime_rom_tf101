.class public Lcom/amazon/kcp/periodicals/UnFilteredArticleListActivity;
.super Lcom/amazon/kcp/periodicals/ArticleListActivity;
.source "UnFilteredArticleListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/ArticleListActivity;-><init>()V

    return-void
.end method

.method private launchFilteredList(I)V
    .locals 2
    .parameter

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v1, "filterSectionIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/UnFilteredArticleListActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected getFragments()[Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/UnFilteredArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

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
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 34
    packed-switch p1, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized request code in onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 37
    :pswitch_0
    if-lt p2, v1, :cond_0

    .line 39
    sub-int v0, p2, v1

    sub-int/2addr v0, v1

    .line 43
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 45
    invoke-direct {p0, v0}, Lcom/amazon/kcp/periodicals/UnFilteredArticleListActivity;->launchFilteredList(I)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 26
    const v1, 0x7f0c00f4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 28
    return v0
.end method

.method protected setup(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 63
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/UnFilteredArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/UnFilteredArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 69
    :cond_0
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/UnFilteredArticleListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 72
    :cond_1
    return-void
.end method
