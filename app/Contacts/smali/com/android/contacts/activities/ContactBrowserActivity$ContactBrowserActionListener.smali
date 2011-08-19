.class final Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;
.super Ljava/lang/Object;
.source "ContactBrowserActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactBrowserActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactBrowserActivity;Lcom/android/contacts/activities/ContactBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/ContactBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onAddToFavoritesAction(Landroid/net/Uri;)V
    .locals 4
    .parameter "contactUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 467
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 468
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "starred"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method public onCallContactAction(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$600(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/interactions/PhoneNumberInteraction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;)V

    .line 482
    return-void
.end method

.method public onDeleteContactAction(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 492
    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 4
    .parameter "contactLookupUri"

    .prologue
    .line 457
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 458
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ContactBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 459
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 463
    return-void
.end method

.method public onInvalidSelection()V
    .locals 4

    .prologue
    const/4 v3, -0x6

    .line 502
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$400(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/list/ContactBrowseListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 503
    .local v0, currentFilter:Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v2, v3, :cond_0

    .line 505
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 506
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$400(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/list/ContactBrowseListFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 511
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$800(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 512
    return-void

    .line 508
    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v1, v3}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 509
    .restart local v1       #filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$400(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/list/ContactBrowseListFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public onRemoveFromFavoritesAction(Landroid/net/Uri;)V
    .locals 4
    .parameter "contactUri"

    .prologue
    const/4 v3, 0x0

    .line 474
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 475
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "starred"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method public onSelectionChange()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$300(Lcom/android/contacts/activities/ContactBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$400(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/list/ContactBrowseListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$500(Lcom/android/contacts/activities/ContactBrowserActivity;Landroid/net/Uri;)V

    .line 434
    :cond_0
    return-void
.end method

.method public onSmsContactAction(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$700(Lcom/android/contacts/activities/ContactBrowserActivity;)Lcom/android/contacts/interactions/PhoneNumberInteraction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;)V

    .line 487
    return-void
.end method

.method public onViewContactAction(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactLookupUri"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$300(Lcom/android/contacts/activities/ContactBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/activities/ContactBrowserActivity;->access$500(Lcom/android/contacts/activities/ContactBrowserActivity;Landroid/net/Uri;)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
