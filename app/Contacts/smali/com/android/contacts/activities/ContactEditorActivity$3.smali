.class Lcom/android/contacts/activities/ContactEditorActivity$3;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountSelectorAborted()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 193
    return-void
.end method

.method public onContactNotFound()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 199
    return-void
.end method

.method public onContactSplit(Landroid/net/Uri;)V
    .locals 1
    .parameter "newLookupUri"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 188
    return-void
.end method

.method public onCustomCreateContactActivityRequested(Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 5
    .parameter "account"
    .parameter "intentExtras"

    .prologue
    .line 230
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 232
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 234
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    if-eqz p2, :cond_0

    .line 240
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 242
    :cond_0
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const/high16 v3, 0x280

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 248
    return-void
.end method

.method public onCustomEditContactActivityRequested(Landroid/accounts/Account;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 5
    .parameter "account"
    .parameter "rawContactUri"
    .parameter "intentExtras"
    .parameter "redirect"

    .prologue
    .line 253
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 255
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 257
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 262
    if-eqz p3, :cond_0

    .line 263
    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 266
    :cond_0
    if-eqz p4, :cond_1

    .line 267
    const/high16 v3, 0x280

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 209
    return-void
.end method

.method public onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "contactLookupUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x280

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    const-string v1, "addToDefaultDirectory"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 226
    return-void
.end method

.method public onReverted()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 171
    return-void
.end method

.method public onSaveFinished(ILandroid/content/Intent;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    if-eqz p3, :cond_0

    .line 177
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const-class v2, Lcom/android/contacts/activities/ContactBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 183
    return-void
.end method

.method public setTitleTo(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->setTitle(I)V

    .line 204
    return-void
.end method
