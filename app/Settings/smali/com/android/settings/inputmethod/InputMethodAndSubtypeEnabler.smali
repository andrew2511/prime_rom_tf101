.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
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

.field private mInputMethodId:Ljava/lang/String;

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

.field private final mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    return-object v0
.end method

.method private clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .locals 1
    .parameter "targetImiId"

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 291
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 25

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 193
    .local v18, root:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    const/16 v23, 0x0

    move/from16 v4, v23

    .line 195
    .local v4, N:I
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v4, :cond_8

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 197
    .local v9, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v20

    .line 198
    .local v20, subtypeCount:I
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    .line 195
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 193
    .end local v4           #N:I
    .end local v8           #i:I
    .end local v9           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v20           #subtypeCount:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v4, v23

    goto :goto_0

    .line 199
    .restart local v4       #N:I
    .restart local v8       #i:I
    .restart local v9       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v20       #subtypeCount:I
    :cond_2
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 205
    :cond_3
    new-instance v12, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 206
    .local v12, keyboardSettingsCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 208
    .local v17, pm:Landroid/content/pm/PackageManager;
    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 210
    .local v13, label:Ljava/lang/CharSequence;
    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v12, v10}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 213
    new-instance v6, Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 214
    .local v6, autoCB:Landroid/preference/CheckBoxPreference;
    const v23, 0x7f08040d

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v10

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v12, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 218
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 219
    .local v5, activeInputMethodsCategory:Landroid/preference/PreferenceCategory;
    const v23, 0x7f08040c

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 220
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v22, subtypePreferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    if-lez v20, :cond_0

    .line 224
    const/4 v11, 0x0

    .local v11, j:I
    :goto_3
    move v0, v11

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 225
    invoke-virtual {v9, v11}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v19

    .line 227
    .local v19, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v16

    .line 228
    .local v16, nameResId:I
    if-eqz v16, :cond_4

    .line 229
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v16

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 237
    .local v21, subtypeLabel:Ljava/lang/CharSequence;
    :goto_4
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 238
    .local v7, chkbxPref:Landroid/preference/CheckBoxPreference;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 239
    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 232
    .end local v7           #chkbxPref:Landroid/preference/CheckBoxPreference;
    .end local v21           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, mode:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    .line 234
    .local v14, language:Ljava/lang/CharSequence;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v15, :cond_5

    const-string v24, ""

    :goto_5
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez v14, :cond_6

    const-string v24, ""

    :goto_6
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .restart local v21       #subtypeLabel:Ljava/lang/CharSequence;
    goto :goto_4

    .end local v21           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v24, v15

    goto :goto_5

    :cond_6
    move-object/from16 v24, v14

    goto :goto_6

    .line 243
    .end local v14           #language:Ljava/lang/CharSequence;
    .end local v15           #mode:Ljava/lang/String;
    .end local v16           #nameResId:I
    .end local v19           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v10

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 246
    .end local v5           #activeInputMethodsCategory:Landroid/preference/PreferenceCategory;
    .end local v6           #autoCB:Landroid/preference/CheckBoxPreference;
    .end local v9           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v10           #imiId:Ljava/lang/String;
    .end local v11           #j:I
    .end local v12           #keyboardSettingsCategory:Landroid/preference/PreferenceCategory;
    .end local v13           #label:Ljava/lang/CharSequence;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #subtypeCount:I
    .end local v22           #subtypePreferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_8
    return-object v18
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .locals 5
    .parameter "imiId"

    .prologue
    .line 250
    const/4 v0, 0x1

    .line 251
    .local v0, allSubtypesOff:Z
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 252
    .local v3, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 253
    .local v2, subtypePref:Landroid/preference/Preference;
    instance-of v4, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .end local v2           #subtypePref:Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 259
    :cond_1
    return v0
.end method

.method private onCreateIMM()V
    .locals 2

    .prologue
    .line 182
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 186
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    .line 187
    return-void
.end method

.method private setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .locals 1
    .parameter "targetImiId"

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V

    .line 287
    return-void
.end method

.method private setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "imiId"
    .parameter "autoSelectionEnabled"

    .prologue
    const/4 v5, 0x0

    .line 263
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 264
    .local v0, autoSelectionCB:Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 266
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 267
    .local v3, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 268
    .local v2, subtypePref:Landroid/preference/Preference;
    instance-of v4, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    .line 272
    if-nez p2, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 273
    if-eqz p2, :cond_2

    .line 274
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .end local v2           #subtypePref:Landroid/preference/Preference;
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .restart local v2       #subtypePref:Landroid/preference/Preference;
    :cond_3
    move v4, v5

    .line 272
    goto :goto_2

    .line 278
    .end local v2           #subtypePref:Landroid/preference/Preference;
    :cond_4
    if-eqz p2, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v4, v5, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 281
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAutoSelectionCB()V
    .locals 3

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    .local v1, imiId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 328
    .end local v1           #imiId:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setCheckedImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;Z)V
    .locals 16
    .parameter "targetImiId"
    .parameter "check"

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 296
    .local v7, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, imiId:Ljava/lang/String;
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 301
    .local v2, autoCB:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 303
    .local v13, subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v7, v15}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v10

    .line 305
    .local v10, implicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v13, :cond_0

    if-eqz v10, :cond_0

    .line 306
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/preference/Preference;

    .line 307
    .local v12, subtypePref:Landroid/preference/Preference;
    instance-of v14, v12, Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_2

    .line 308
    move-object v0, v12

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    .line 309
    .local v3, cb:Landroid/preference/CheckBoxPreference;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 310
    if-eqz p2, :cond_2

    .line 311
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodSubtype;

    .line 312
    .local v11, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, implicitlyEnabledSubtypePrefKey:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 314
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 322
    .end local v2           #autoCB:Landroid/preference/CheckBoxPreference;
    .end local v3           #cb:Landroid/preference/CheckBoxPreference;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v8           #imiId:Ljava/lang/String;
    .end local v9           #implicitlyEnabledSubtypePrefKey:Ljava/lang/String;
    .end local v10           #implicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v11           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v12           #subtypePref:Landroid/preference/Preference;
    .end local v13           #subtypePrefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 57
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "input_method_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "input_method_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, inputMethodId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 69
    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 73
    .end local v1           #inputMethodId:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->onCreateIMM()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 75
    return-void

    .line 57
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 179
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->clearImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 92
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 19
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 98
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    move v12, v0

    if-eqz v12, :cond_6

    .line 99
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v5, v0

    .line 101
    .local v5, chkPref:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 102
    .local v10, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mSubtypeAutoSelectionCBMap:Ljava/util/HashMap;

    move-object v12, v0

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v5, :cond_0

    .line 106
    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setSubtypeAutoSelectionEnabled(Ljava/lang/String;Z)V

    .line 107
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v12

    .line 169
    .end local v5           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #imiId:Ljava/lang/String;
    :goto_0
    return v12

    .line 111
    .restart local v5       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, id:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 113
    const/4 v11, 0x0

    .line 114
    .local v11, selImi:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object v12, v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 115
    .local v4, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object v12, v0

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 117
    .local v9, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 118
    move-object v11, v9

    .line 119
    invoke-static {v9}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object v12, v0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v8

    move v3, v13

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 123
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v12

    goto :goto_0

    .line 115
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 128
    .end local v9           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    if-nez v11, :cond_4

    .line 129
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v12

    goto :goto_0

    .line 131
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    move-object v12, v0

    if-nez v12, :cond_7

    .line 133
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x1040014

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x1080027

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x104000a

    new-instance v14, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$2;-><init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const/high16 v13, 0x104

    new-instance v14, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    .line 159
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    move-object v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0803e8

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 169
    .end local v4           #N:I
    .end local v5           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #id:Ljava/lang/String;
    .end local v11           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    :goto_3
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v12

    goto/16 :goto_0

    .line 155
    .restart local v4       #N:I
    .restart local v5       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v6       #i:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #id:Ljava/lang/String;
    .restart local v11       #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mDialog:Landroid/app/AlertDialog;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_2

    .line 164
    .end local v4           #N:I
    .end local v6           #i:I
    .end local v11           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    move-object v12, v0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v8

    move v3, v13

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodProperties:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateAutoSelectionCB()V

    .line 83
    return-void
.end method

.method public updateInputMethodList(Ljava/lang/String;)V
    .locals 1
    .parameter "ImiId"

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mInputMethodId:Ljava/lang/String;

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->onCreateIMM()V

    .line 337
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 338
    return-void
.end method
