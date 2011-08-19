.class public Lcom/amazon/kcp/periodicals/SectionListActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "SectionListActivity.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/fragments/SectionListListener;


# static fields
.field private static final METRICS_NAME:Ljava/lang/String; = "SectionListActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/SectionListActivity;->setContentView(I)V

    .line 34
    if-nez p1, :cond_1

    .line 36
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/SectionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/SectionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 42
    :cond_0
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/SectionListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 45
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/SectionListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 59
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSectionSelected(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 50
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SectionListActivity"

    const-string v2, "FilteredListViaArticleListMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/SectionListActivity;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/SectionListActivity;->finish()V

    .line 53
    return-void
.end method
