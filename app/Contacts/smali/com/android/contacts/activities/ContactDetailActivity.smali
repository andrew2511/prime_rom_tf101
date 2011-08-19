.class public Lcom/android/contacts/activities/ContactDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactDetailActivity.java"


# instance fields
.field private mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private final mFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$1;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 51
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    .line 52
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->loadUri(Landroid/net/Uri;)V

    .line 54
    const-string v0, "ContactDetailActivity"

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->handleKeyDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 60
    if-eqz p4, :cond_0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ContactsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
