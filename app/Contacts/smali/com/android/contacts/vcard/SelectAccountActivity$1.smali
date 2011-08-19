.class Lcom/android/contacts/vcard/SelectAccountActivity$1;
.super Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
.source "SelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/vcard/SelectAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/SelectAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/SelectAccountActivity;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter "x2"

    .prologue
    .line 80
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    iput-object p1, p0, Lcom/android/contacts/vcard/SelectAccountActivity$1;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    iget-object v2, p0, Lcom/android/contacts/vcard/SelectAccountActivity$1;->mAccountList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 85
    .local v0, account:Landroid/accounts/Account;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account_name"

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v2, "account_type"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/android/contacts/vcard/SelectAccountActivity$1;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/contacts/vcard/SelectAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object v2, p0, Lcom/android/contacts/vcard/SelectAccountActivity$1;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-virtual {v2}, Lcom/android/contacts/vcard/SelectAccountActivity;->finish()V

    .line 90
    return-void
.end method
