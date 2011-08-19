.class public Lcom/newspaperdirect/pressreader/android/Accounts;
.super Landroid/app/ListActivity;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 30
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Accounts;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/newspaperdirect/pressreader/android/core/Service;

    if-eqz v2, :cond_2

    .line 41
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 42
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 43
    .local v1, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->isImplicitlyActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    .end local v0           #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    .end local v1           #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v0       #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    .restart local v1       #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Accounts;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 47
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 48
    const v3, 0x7f09007f

    new-instance v4, Lcom/newspaperdirect/pressreader/android/Accounts$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/newspaperdirect/pressreader/android/Accounts$1;-><init>(Lcom/newspaperdirect/pressreader/android/Accounts;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Lcom/newspaperdirect/pressreader/android/core/Service;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 82
    const v3, 0x7f09005c

    new-instance v4, Lcom/newspaperdirect/pressreader/android/Accounts$2;

    invoke-direct {v4, p0, v0}, Lcom/newspaperdirect/pressreader/android/Accounts$2;-><init>(Lcom/newspaperdirect/pressreader/android/Accounts;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 91
    .end local v0           #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    .end local v1           #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :cond_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne p3, v2, :cond_4

    .line 93
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Accounts;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "toLocalStore"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Accounts;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 35
    new-instance v0, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/Accounts$AccountsAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/Accounts;)V

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Accounts;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    return-void
.end method
