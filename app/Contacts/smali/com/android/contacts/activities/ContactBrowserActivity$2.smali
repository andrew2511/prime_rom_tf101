.class Lcom/android/contacts/activities/ContactBrowserActivity$2;
.super Ljava/lang/Object;
.source "ContactBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactBrowserActivity;->createNewContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

.field final synthetic val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactBrowserActivity;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$2;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactBrowserActivity$2;->val$popup:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/android/contacts/activities/ContactBrowserActivity$2;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$2;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 806
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.extra.ACCOUNT"

    iget-object v2, p0, Lcom/android/contacts/activities/ContactBrowserActivity$2;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 807
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$2;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 808
    return-void
.end method
