.class public Lcom/asus/setupwizard/DataConnectSetupWizard;
.super Landroid/app/ListActivity;
.source "DataConnectSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mlistView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 30
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/asus/setupwizard/DataConnectSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/asus/setupwizard/DataConnectSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, choiceTitle:[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030001

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/asus/setupwizard/DataConnectSetupWizard;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    invoke-virtual {p0}, Lcom/asus/setupwizard/DataConnectSetupWizard;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/setupwizard/DataConnectSetupWizard;->mlistView:Landroid/widget/ListView;

    .line 39
    iget-object v1, p0, Lcom/asus/setupwizard/DataConnectSetupWizard;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 40
    iget-object v1, p0, Lcom/asus/setupwizard/DataConnectSetupWizard;->mlistView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 41
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 46
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/asus/setupwizard/DataConnectSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/asus/setupwizard/DataConnectSetupWizard;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 53
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/asus/setupwizard/DataConnectSetupWizard;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lcom/asus/setupwizard/DataConnectSetupWizard;->finish()V

    .line 55
    return-void

    .line 51
    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/setupwizard/DataConnectSetupWizard;->requestWindowFeature(I)Z

    .line 24
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/asus/setupwizard/DataConnectSetupWizard;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/asus/setupwizard/DataConnectSetupWizard;->initUi()V

    .line 27
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 60
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
