.class public Lcom/newspaperdirect/pressreader/android/Subscriptions;
.super Landroid/app/ListActivity;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;
    }
.end annotation


# static fields
.field private static final CHOICE_TYPE:I = 0x0

.field private static final ITEM_TYPE:I = 0x1

.field private static final PREF_AUTO_DELIVERY:Ljava/lang/String; = "auto_delivery"


# instance fields
.field public mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckboxClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 43
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 44
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->init()V

    .line 46
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->setContentView(I)V

    .line 47
    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v0, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$SubscriptionsListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions;)V

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/Subscription;

    .line 65
    .local v0, sub:Lcom/newspaperdirect/pressreader/android/core/Subscription;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 68
    const v2, 0x7f09006f

    new-instance v3, Lcom/newspaperdirect/pressreader/android/Subscriptions$1;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$1;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions;Lcom/newspaperdirect/pressreader/android/core/Subscription;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 79
    const v2, 0x7f09005c

    new-instance v3, Lcom/newspaperdirect/pressreader/android/Subscriptions$2;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/Subscriptions$2;-><init>(Lcom/newspaperdirect/pressreader/android/Subscriptions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Subscriptions;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 55
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 56
    return-void
.end method
