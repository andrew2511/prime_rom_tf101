.class Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;
.super Ljava/lang/Object;
.source "ContactBrowserActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactsUnavailableActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsUnavailableFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactBrowserActivity;Lcom/android/contacts/activities/ContactBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/ContactBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onAddAccountAction()V
    .locals 5

    .prologue
    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 564
    const-string v1, "authorities"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.contacts"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 567
    return-void
.end method

.method public onCreateNewContactAction()V
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 558
    return-void
.end method

.method public onFreeInternalStorageAction()V
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 577
    return-void
.end method

.method public onImportContactsFromFileAction()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$ContactsUnavailableFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 572
    return-void
.end method
