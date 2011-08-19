.class public Lcom/google/android/voicesearch/Shortcuts;
.super Landroid/app/Activity;
.source "Shortcuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/Shortcuts$1;,
        Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final EXTRA_SHORTCUT_SOURCE:Ljava/lang/String; = "shortcut_source"

.field private static final META_SHORTCUTS_PROVIDER:Ljava/lang/String; = "android.app.search.shortcut.provider"

.field private static final SHORTCUTS_PERMISSION:Ljava/lang/String; = "com.google.android.voicesearch.SHORTCUTS_ACCESS"

.field private static final TAG:Ljava/lang/String; = "Shortcuts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 195
    return-void
.end method

.method public static addShortcut(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->shouldAddShortcut()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {p0}, Lcom/google/android/voicesearch/Shortcuts;->getShortcutProviderUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/voicesearch/Shortcuts;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-static {p0, p1, v1}, Lcom/google/android/voicesearch/Shortcuts;->makeShortcut(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v1

    .line 104
    const-string v2, "Shortcuts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "Shortcuts"

    const-string v2, "Failed to add shortcut"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static findGlobalSearchActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 174
    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    move v2, v3

    .line 177
    :goto_0
    if-ge v3, v2, :cond_2

    .line 178
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 179
    const-string v5, "com.google.android.voicesearch.SHORTCUTS_ACCESS"

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 181
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_1
    return-object v0

    .line 176
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 183
    :cond_1
    const-string v5, "Shortcuts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " wants to handle GLOBAL_SEARCH, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "but does not have permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "com.google.android.voicesearch.SHORTCUTS_ACCESS"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_2
    const-string v0, "Shortcuts"

    const-string v1, "No global search activity found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getShortcutProviderUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    invoke-static {p0}, Lcom/google/android/voicesearch/Shortcuts;->findGlobalSearchActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 115
    if-nez v1, :cond_0

    move-object v0, v4

    .line 132
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 121
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 122
    if-nez v0, :cond_1

    move-object v0, v4

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    const-string v2, "android.app.search.shortcut.provider"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_2

    move-object v0, v4

    .line 127
    goto :goto_0

    .line 129
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v0, "Shortcuts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Global search activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 132
    goto :goto_0
.end method

.method private static makeShortcut(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;Landroid/content/ComponentName;)Landroid/content/ContentValues;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 139
    const-string v1, "shortcut_source"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "user_query"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "suggest_format"

    const-string v2, "html"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "suggest_text_1"

    invoke-virtual {p1, p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutTitleHtml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "suggest_text_2"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutSubtitleHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "suggest_intent_action"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutIntentAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntentData(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 147
    if-nez v1, :cond_0

    move-object v1, v3

    .line 148
    :goto_0
    const-string v2, "suggest_intent_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_0
    const-string v1, "suggest_intent_extra_data"

    new-instance v2, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutIntentComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, p0, v4}, Lcom/google/android/voicesearch/actions/VoiceAction;->getShortcutExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;-><init>(Landroid/content/ComponentName;Landroid/os/Bundle;Lcom/google/android/voicesearch/Shortcuts$1;)V

    invoke-virtual {v2}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->convertToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    invoke-virtual {p1, p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQsbIconUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    const-string v2, "suggest_icon_1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "suggest_intent_query"

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v0

    .line 147
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    const-string v2, "Shortcuts"

    const-string v3, "Conversion to shortcut failed for some variables"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/voicesearch/Shortcuts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 69
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :cond_0
    :try_start_0
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->bundleFromString(Ljava/lang/String;)Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/voicesearch/Shortcuts$ShortcutsExtra;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/Shortcuts;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/Shortcuts;->finish()V

    .line 90
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "Shortcuts"

    const-string v2, "Conversion from a string to BundleConverter failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {p0}, Lcom/google/android/voicesearch/Shortcuts;->finish()V

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    const-string v0, "Shortcuts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found to handle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
