.class public Lcom/android/settings/inputmethod/InputMethodConfig;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodConfig.java"


# static fields
.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private final mActiveInputMethodsPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/AlertDialog;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private mHaveHardKeyboard:Z

.field private final mInputMethodPrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodConfig;->sSystemSettingNames:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodConfig;->sHardKeyboardKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodPrefsMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mActiveInputMethodsPrefMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodConfig;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodPrefsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private addInputMethodPreference(Landroid/preference/PreferenceScreen;Landroid/view/inputmethod/InputMethodInfo;I)V
    .locals 11
    .parameter "root"
    .parameter "imi"
    .parameter "imiSize"

    .prologue
    .line 195
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 196
    .local v4, keyboardSettingsCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, imiId:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodPrefsMap:Ljava/util/HashMap;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 201
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p2, v6}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 202
    .local v5, label:Ljava/lang/CharSequence;
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    invoke-static {p2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    .line 206
    .local v3, isSystemIME:Z
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, chkbxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    const/4 v9, 0x1

    if-le p3, v9, :cond_0

    if-eqz v3, :cond_1

    .line 212
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 217
    :cond_1
    new-instance v7, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    .local v7, prefScreen:Landroid/preference/PreferenceScreen;
    const v9, 0x7f080400

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 219
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 220
    new-instance v9, Lcom/android/settings/inputmethod/InputMethodConfig$3;

    invoke-direct {v9, p0, v1}, Lcom/android/settings/inputmethod/InputMethodConfig$3;-><init>(Lcom/android/settings/inputmethod/InputMethodConfig;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 231
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 232
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mActiveInputMethodsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v9, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_2
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, settingsActivity:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 239
    new-instance v7, Landroid/preference/PreferenceScreen;

    .end local v7           #prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 240
    .restart local v7       #prefScreen:Landroid/preference/PreferenceScreen;
    const v9, 0x7f0803ff

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 241
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 245
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 250
    const v3, 0x7f050011

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodConfig;->addPreferencesFromResource(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 253
    .local v2, root:Landroid/preference/PreferenceScreen;
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mHaveHardKeyboard:Z

    if-eqz v3, :cond_0

    .line 254
    const-string v3, "hard_keyboard"

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 259
    :goto_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodProperties:Ljava/util/List;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v0, v3

    .line 260
    .local v0, N:I
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 261
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/inputmethod/InputMethodConfig;->addInputMethodPreference(Landroid/preference/PreferenceScreen;Landroid/view/inputmethod/InputMethodInfo;I)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 256
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    goto :goto_1

    .line 263
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_2
    return-object v2
.end method

.method private getInputMethodInfoFromImiId(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 4
    .parameter "imiId"

    .prologue
    .line 135
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 138
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 142
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return-object v3

    .line 136
    .restart local v2       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 7
    .parameter "imi"
    .parameter "chkPref"
    .parameter "imiId"

    .prologue
    const/4 v3, 0x1

    .line 107
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 110
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodConfig$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/settings/inputmethod/InputMethodConfig$2;-><init>(Lcom/android/settings/inputmethod/InputMethodConfig;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodConfig$1;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/InputMethodConfig$1;-><init>(Lcom/android/settings/inputmethod/InputMethodConfig;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    .line 129
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803dc

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    return-void
.end method

.method private updateActiveInputMethodsSummary()V
    .locals 13

    .prologue
    .line 267
    const-string v10, "input_method"

    invoke-virtual {p0, v10}, Lcom/android/settings/inputmethod/InputMethodConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 269
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 270
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mActiveInputMethodsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 271
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mActiveInputMethodsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    .line 272
    .local v5, pref:Landroid/preference/Preference;
    const/4 v10, 0x1

    invoke-virtual {v3, v2, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 273
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v9, summary:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 275
    .local v7, subtypeAdded:Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 276
    .local v6, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v7, :cond_0

    .line 277
    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_0
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v10, v11, v12}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 281
    const/4 v7, 0x1

    goto :goto_1

    .line 283
    .end local v6           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v7           #subtypeAdded:Z
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9           #summary:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 71
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mHaveHardKeyboard:Z

    .line 72
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 76
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodProperties:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodConfig;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 78
    return-void

    .line 71
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mDialog:Landroid/app/AlertDialog;

    .line 191
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 103
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 149
    instance-of v7, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_5

    .line 150
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 152
    .local v1, chkPref:Landroid/preference/CheckBoxPreference;
    iget-boolean v7, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mHaveHardKeyboard:Z

    if-eqz v7, :cond_2

    .line 153
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v7, Lcom/android/settings/inputmethod/InputMethodConfig;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 154
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v8, Lcom/android/settings/inputmethod/InputMethodConfig;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-ne v1, v7, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/settings/inputmethod/InputMethodConfig;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v11

    :goto_1
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v7, v11

    .line 181
    .end local v1           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    :goto_2
    return v7

    .restart local v1       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #i:I
    :cond_0
    move v9, v10

    .line 155
    goto :goto_1

    .line 153
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2           #i:I
    :cond_2
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, imiId:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 164
    invoke-direct {p0, v4}, Lcom/android/settings/inputmethod/InputMethodConfig;->getInputMethodInfoFromImiId(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v6

    .line 165
    .local v6, selImi:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v6, :cond_3

    .line 166
    invoke-static {v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 168
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_2

    .line 171
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_2

    .line 173
    :cond_4
    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    invoke-direct {p0, v6, v1, v4}, Lcom/android/settings/inputmethod/InputMethodConfig;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 181
    .end local v1           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v4           #imiId:Ljava/lang/String;
    .end local v6           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_2

    .line 176
    .restart local v1       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v4       #imiId:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    .line 177
    .local v5, pref:Landroid/preference/Preference;
    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 82
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 85
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mHaveHardKeyboard:Z

    if-eqz v3, :cond_1

    .line 86
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/settings/inputmethod/InputMethodConfig;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v4, Lcom/android/settings/inputmethod/InputMethodConfig;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 89
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    sget-object v3, Lcom/android/settings/inputmethod/InputMethodConfig;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    move v3, v5

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 93
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v1           #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodProperties:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodConfig;->mInputMethodPrefsMap:Ljava/util/HashMap;

    invoke-static {p0, v2, v3, v4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodConfig;->updateActiveInputMethodsSummary()V

    .line 96
    return-void
.end method
