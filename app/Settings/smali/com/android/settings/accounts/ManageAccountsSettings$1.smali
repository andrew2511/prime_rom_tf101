.class Lcom/android/settings/accounts/ManageAccountsSettings$1;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

.field final synthetic val$pref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    iput-object p2, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->val$pref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-static {v0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings/accounts/ManageAccountsSettings;Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->val$pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 196
    return-void
.end method
