.class Lcom/android/settings/inputmethod/InputMethodConfig$2;
.super Ljava/lang/Object;
.source "InputMethodConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodConfig;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodConfig;

.field final synthetic val$chkPref:Landroid/preference/CheckBoxPreference;

.field final synthetic val$imiId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodConfig;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodConfig$2;->this$0:Lcom/android/settings/inputmethod/InputMethodConfig;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodConfig$2;->val$chkPref:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodConfig$2;->val$imiId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 117
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodConfig$2;->val$chkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodConfig$2;->this$0:Lcom/android/settings/inputmethod/InputMethodConfig;

    invoke-static {v2}, Lcom/android/settings/inputmethod/InputMethodConfig;->access$000(Lcom/android/settings/inputmethod/InputMethodConfig;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig$2;->val$imiId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 119
    .local v1, pref:Landroid/preference/Preference;
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 121
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_0
    return-void
.end method
