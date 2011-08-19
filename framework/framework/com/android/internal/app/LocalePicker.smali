.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 50
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .registers 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const v0, 0x109005b

    const v1, 0x10201d6

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .registers 14
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, resources:Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, locales:[Ljava/lang/String;
    const v1, 0x1070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, specialLocaleCodes:[Ljava/lang/String;
    const v1, 0x107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, specialLocaleNames:[Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 95
    array-length v6, v5

    .line 96
    .local v6, origSize:I
    new-array v7, v6, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 97
    .local v7, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v0, 0x0

    .line 98
    .local v0, finalSize:I
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v1

    .end local v1           #i:I
    .local v3, i:I
    move v2, v0

    .end local v0           #finalSize:I
    .local v2, finalSize:I
    :goto_28
    if-ge v3, v6, :cond_b4

    .line 99
    aget-object v8, v5, v3

    .line 100
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 101
    .local v0, len:I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_c9

    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v0           #len:I
    move-result-object v1

    .line 103
    .local v1, language:Ljava/lang/String;
    const/4 v0, 0x3

    const/4 v4, 0x5

    invoke-virtual {v8, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, country:Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v4, l:Ljava/util/Locale;
    if-nez v2, :cond_5c

    .line 110
    add-int/lit8 v0, v2, 0x1

    .end local v2           #finalSize:I
    .local v0, finalSize:I
    new-instance v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .end local v1           #language:Ljava/lang/String;
    invoke-virtual {v4, v4}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .end local v8           #s:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v7, v2

    .line 98
    .end local v4           #l:Ljava/util/Locale;
    :goto_57
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i:I
    .local v1, i:I
    move v3, v1

    .end local v1           #i:I
    .restart local v3       #i:I
    move v2, v0

    .end local v0           #finalSize:I
    .restart local v2       #finalSize:I
    goto :goto_28

    .line 117
    .local v0, country:Ljava/lang/String;
    .local v1, language:Ljava/lang/String;
    .restart local v4       #l:Ljava/util/Locale;
    .restart local v8       #s:Ljava/lang/String;
    :cond_5c
    const/4 v0, 0x1

    sub-int v0, v2, v0

    aget-object v0, v7, v0

    .end local v0           #country:Ljava/lang/String;
    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 125
    const/4 v0, 0x1

    sub-int v0, v2, v0

    aget-object v0, v7, v0

    const/4 v1, 0x1

    sub-int v1, v2, v1

    aget-object v1, v7, v1

    .end local v1           #language:Ljava/lang/String;
    iget-object v1, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-static {v1, v9, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 132
    add-int/lit8 v0, v2, 0x1

    .end local v2           #finalSize:I
    .local v0, finalSize:I
    new-instance v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-static {v4, v9, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .end local v8           #s:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v7, v2

    goto :goto_57

    .line 138
    .end local v0           #finalSize:I
    .restart local v1       #language:Ljava/lang/String;
    .restart local v2       #finalSize:I
    .restart local v8       #s:Ljava/lang/String;
    :cond_95
    const-string/jumbo v0, "zz_ZZ"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 139
    const-string v0, "Pseudo..."

    .line 146
    .local v0, displayName:Ljava/lang/String;
    :goto_a0
    add-int/lit8 v1, v2, 0x1

    .end local v2           #finalSize:I
    .local v1, finalSize:I
    new-instance v8, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .end local v8           #s:Ljava/lang/String;
    invoke-direct {v8, v0, v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v8, v7, v2

    move v0, v1

    .end local v1           #finalSize:I
    .local v0, finalSize:I
    goto :goto_57

    .line 141
    .end local v0           #finalSize:I
    .local v1, language:Ljava/lang/String;
    .restart local v2       #finalSize:I
    .restart local v8       #s:Ljava/lang/String;
    :cond_ab
    invoke-virtual {v4, v4}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, displayName:Ljava/lang/String;
    goto :goto_a0

    .line 152
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #language:Ljava/lang/String;
    .end local v4           #l:Ljava/util/Locale;
    .end local v8           #s:Ljava/lang/String;
    :cond_b4
    new-array v1, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 153
    .local v1, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v0, 0x0

    .end local v3           #i:I
    .local v0, i:I
    :goto_b7
    if-ge v0, v2, :cond_c0

    .line 154
    aget-object v3, v7, v0

    aput-object v3, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    .line 156
    :cond_c0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 157
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #i:I
    invoke-direct {v0, p0, p1, p2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-object v0

    .end local v1           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .local v0, len:I
    .restart local v3       #i:I
    .restart local v8       #s:Ljava/lang/String;
    :cond_c9
    move v0, v2

    .end local v2           #finalSize:I
    .local v0, finalSize:I
    goto :goto_57
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 173
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 174
    aget-object v2, p2, v1

    .line 178
    :goto_12
    return-object v2

    .line 172
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 178
    :cond_16
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p0

    .line 165
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .registers 4
    .parameter "locale"

    .prologue
    .line 218
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 219
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 221
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 224
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 226
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 228
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 232
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_15
    return-void

    .line 229
    :catch_16
    move-exception v2

    goto :goto_15
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 185
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_15

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 208
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 210
    .end local v0           #locale:Ljava/util/Locale;
    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 196
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 190
    return-void
.end method
