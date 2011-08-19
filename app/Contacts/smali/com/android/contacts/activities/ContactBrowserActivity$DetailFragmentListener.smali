.class Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;
.super Ljava/lang/Object;
.source "ContactBrowserActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactDetailFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactBrowserActivity;Lcom/android/contacts/activities/ContactBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;-><init>(Lcom/android/contacts/activities/ContactBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public onCreateRawContactRequested(Ljava/util/ArrayList;Landroid/accounts/Account;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    const v1, 0x7f0c0186

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    const-class v1, Lcom/android/contacts/activities/ContactBrowserActivity;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/contacts/ContactSaveService;->createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Landroid/accounts/Account;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 549
    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 539
    return-void
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactLookupUri"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 525
    return-void
.end method

.method public onItemClicked(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactBrowserActivity$DetailFragmentListener;->this$0:Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-virtual {v1, p1}, Lcom/android/contacts/activities/ContactBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 532
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "ContactBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
