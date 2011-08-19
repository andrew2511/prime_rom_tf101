.class Lcom/android/contacts/activities/ContactDetailActivity$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactDetailFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$1;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$1;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    .line 79
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
    .line 103
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$1;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const v1, 0x7f0c0186

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$1;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const-class v1, Lcom/android/contacts/activities/ContactDetailActivity;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/contacts/ContactSaveService;->createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Landroid/accounts/Account;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$1;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$1;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 98
    return-void
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactLookupUri"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$1;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public onItemClicked(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$1;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1, p1}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "ContactDetailActivity"

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
