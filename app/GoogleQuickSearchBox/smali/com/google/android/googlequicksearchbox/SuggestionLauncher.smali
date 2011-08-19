.class public Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
.super Ljava/lang/Object;
.source "SuggestionLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;,
        Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;,
        Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Applications;
    }
.end annotation


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->removeFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->removeFromHistoryDone(Z)V

    return-void
.end method

.method private createIntent(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, data:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, query:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, extraData:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    if-eqz v1, :cond_0

    .line 120
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 122
    :cond_0
    const-string v5, "user_query"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    if-eqz v4, :cond_1

    .line 124
    const-string v5, "query"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_1
    if-eqz v2, :cond_2

    .line 127
    const-string v5, "intent_extra_data_key"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    :cond_2
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 130
    const-string v5, "app_data"

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 133
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    return-object v3
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private removeFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 3
    .parameter "suggestion"

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;->removeFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, query:Ljava/lang/String;
    new-instance v1, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$RemoveFromWebHistoryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    .end local v0           #query:Ljava/lang/String;
    :goto_0
    return-void

    .line 264
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->removeFromHistoryDone(Z)V

    goto :goto_0
.end method

.method private removeFromHistoryDone(Z)V
    .locals 3
    .parameter "ok"

    .prologue
    .line 269
    const-string v0, "QSB.SuggestionLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed query from history, success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->updateSuggestionsBuffered()V

    .line 271
    if-nez p1, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a000e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    :cond_0
    return-void
.end method

.method private updateSuggestionsBuffered()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;->updateSuggestions()V

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method public clickedRefineSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 4
    .parameter "suggestion"

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, query:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, queryWithSpace:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;

    invoke-interface {v2, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;->changedQuery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clickedRemoveFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 5
    .parameter "suggestion"

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v1

    .line 235
    .local v1, title:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0037

    new-instance v4, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$1;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionLauncher;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0038

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 246
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 247
    return-void
.end method

.method public clickedSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 4
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;->reportClick(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    .line 91
    .local v1, source:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->logClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->showResultsInBrowser(Ljava/lang/String;)V

    .line 104
    .end local v1           #source:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getAppIntent(Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, appIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->createIntent(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method getAppIntent(Lcom/google/android/googlequicksearchbox/Suggestion;)Landroid/content/Intent;
    .locals 8
    .parameter "suggestion"

    .prologue
    const/4 v7, 0x0

    .line 144
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v7

    .line 163
    :goto_0
    return-object v5

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v4

    .line 148
    .local v4, source:Lcom/google/android/googlequicksearchbox/Source;
    if-nez v4, :cond_1

    move-object v5, v7

    goto :goto_0

    .line 149
    :cond_1
    const-string v5, "applications"

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/Source;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v7

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, dataString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v7

    goto :goto_0

    .line 154
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, data:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Applications;->uriToComponentName(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object v0

    .line 156
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_4

    move-object v5, v7

    goto :goto_0

    .line 159
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x1020

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v5, v3

    .line 163
    goto :goto_0
.end method

.method public launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.SuggestionLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openUrlInBrowser(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "appSearchData"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mAppSearchData:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public setListener(Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mListener:Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;

    .line 64
    return-void
.end method

.method public showResultsInBrowser(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/googlequicksearchbox/google/GoogleSearch;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    const-string v1, "user_query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "app_data"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 218
    const-string v1, "from_self"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/content/Intent;)V

    .line 220
    return-void
.end method
