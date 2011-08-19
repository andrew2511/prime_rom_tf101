.class Lcom/android/settings/inputmethod/InputMethodConfig$3;
.super Ljava/lang/Object;
.source "InputMethodConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodConfig;->addInputMethodPreference(Landroid/preference/PreferenceScreen;Landroid/view/inputmethod/InputMethodInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodConfig;

.field final synthetic val$imiId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodConfig;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodConfig$3;->this$0:Lcom/android/settings/inputmethod/InputMethodConfig;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodConfig$3;->val$imiId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter

    .prologue
    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    const-string v1, "input_method_id"

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodConfig$3;->val$imiId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodConfig$3;->this$0:Lcom/android/settings/inputmethod/InputMethodConfig;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodConfig$3;->this$0:Lcom/android/settings/inputmethod/InputMethodConfig;

    const-class v3, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/settings/inputmethod/InputMethodConfig;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 228
    const/4 v0, 0x1

    return v0
.end method
