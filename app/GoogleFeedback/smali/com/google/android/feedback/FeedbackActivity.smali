.class public Lcom/google/android/feedback/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/feedback/SystemLogFetcher$Listener;


# static fields
.field private static final mHandler:Landroid/os/Handler;

.field private static mSessionStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/feedback/FeedbackSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/google/android/feedback/FeedbackActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    return-void
.end method

.method public static getReport()Lcom/google/android/feedback/ExtendedErrorReport;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackSession;->getReport()Lcom/google/android/feedback/ExtendedErrorReport;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContentView()V
    .locals 4

    .prologue
    .line 111
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->setContentView(I)V

    .line 113
    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 114
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 117
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const/high16 v2, 0x7f07

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 120
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v2, 0x7f07000a

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, privacyPolicy:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v2, 0x7f070001

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public static isCurrentSession(Lcom/google/android/feedback/FeedbackSession;)Z
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x0

    .line 283
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 286
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showPrivacyPolicy()V
    .locals 6

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v3

    .line 296
    .local v3, rules:Lcom/google/android/common/http/UrlRules;
    const-string v4, "https://tools.google.com/userfeedback/external/android/privacy-policy.html"

    invoke-virtual {v3, v4}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v2

    .line 297
    .local v2, rule:Lcom/google/android/common/http/UrlRules$Rule;
    const-string v4, "https://tools.google.com/userfeedback/external/android/privacy-policy.html"

    invoke-virtual {v2, v4}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, rewritten:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/feedback/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showTosOnFirstRun()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tos_accepted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/feedback/ShowTosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/feedback/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 321
    if-ne p2, v2, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/feedback/FeedbackActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tos_accepted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07000a

    if-ne v0, v1, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackActivity;->showPrivacyPolicy()V

    .line 246
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local p0
    :cond_1
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {p0, p1}, Lcom/google/android/feedback/FeedbackSession;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/feedback/FeedbackActivity;->requestWindowFeature(I)Z

    .line 89
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    .line 90
    invoke-static {p0}, Lcom/google/android/feedback/SystemLogFetcher;->setListener(Lcom/google/android/feedback/SystemLogFetcher$Listener;)V

    .line 92
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackActivity;->initContentView()V

    .line 94
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackActivity;->showTosOnFirstRun()V

    .line 96
    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/feedback/FeedbackActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/feedback/SystemLogFetcher;->setListener(Lcom/google/android/feedback/SystemLogFetcher$Listener;)V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    return-void
.end method

.method public onGotSystemLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "systemLog"
    .parameter "eventLog"

    .prologue
    .line 267
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/FeedbackSession;

    .line 268
    .local v1, session:Lcom/google/android/feedback/FeedbackSession;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/feedback/FeedbackSession;->onGotSystemLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v1           #session:Lcom/google/android/feedback/FeedbackSession;
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 254
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->popSession()V

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 135
    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationErrorReport;

    .line 136
    .local v0, report:Landroid/app/ApplicationErrorReport;
    invoke-virtual {p0, v0}, Lcom/google/android/feedback/FeedbackActivity;->pushSession(Landroid/app/ApplicationErrorReport;)V

    .line 137
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, cnt:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feedback.SESSION_BUNDLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    sget-object v3, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackSession;->onStart()V

    .line 235
    :cond_0
    return-void

    .line 227
    .restart local p0
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 228
    .local v2, stateBundle:Landroid/os/Bundle;
    sget-object v3, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/feedback/FeedbackSession;

    invoke-direct {v4, p0, v2}, Lcom/google/android/feedback/FeedbackSession;-><init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 230
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, cnt:I
    sget-object v5, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/feedback/FeedbackSession;

    .line 206
    .local v3, session:Lcom/google/android/feedback/FeedbackSession;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v4, stateBundle:Landroid/os/Bundle;
    invoke-virtual {v3, v4}, Lcom/google/android/feedback/FeedbackSession;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "feedback.SESSION_BUNDLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    goto :goto_0

    .line 212
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #session:Lcom/google/android/feedback/FeedbackSession;
    .end local v4           #stateBundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 192
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackSession;->onStart()V

    .line 195
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 183
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackSession;->onStop()V

    .line 186
    :cond_0
    return-void
.end method

.method public popSession()V
    .locals 3

    .prologue
    .line 162
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/FeedbackSession;

    .line 164
    .local v0, oldTop:Lcom/google/android/feedback/FeedbackSession;
    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackSession;->onStop()V

    .line 169
    .end local v0           #oldTop:Lcom/google/android/feedback/FeedbackSession;
    :cond_0
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->finish()V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/FeedbackSession;

    .line 173
    .local v1, top:Lcom/google/android/feedback/FeedbackSession;
    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v1}, Lcom/google/android/feedback/FeedbackSession;->onStart()V

    goto :goto_0
.end method

.method public pushSession(Landroid/app/ApplicationErrorReport;)V
    .locals 3
    .parameter "report"

    .prologue
    .line 143
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/FeedbackSession;

    .line 145
    .local v1, top:Lcom/google/android/feedback/FeedbackSession;
    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v1}, Lcom/google/android/feedback/FeedbackSession;->onStop()V

    .line 150
    .end local v1           #top:Lcom/google/android/feedback/FeedbackSession;
    :cond_0
    new-instance v0, Lcom/google/android/feedback/FeedbackSession;

    invoke-direct {v0, p0, p1}, Lcom/google/android/feedback/FeedbackSession;-><init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/app/ApplicationErrorReport;)V

    .line 151
    .local v0, newSession:Lcom/google/android/feedback/FeedbackSession;
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackSession;->onStart()V

    .line 155
    :cond_1
    return-void
.end method

.method public runSendService()V
    .locals 2

    .prologue
    .line 336
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/feedback/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/feedback/FeedbackActivity$1;-><init>(Lcom/google/android/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method

.method sendErrorReport(Lcom/google/android/feedback/ExtendedErrorReport;)V
    .locals 1
    .parameter "report"

    .prologue
    .line 310
    new-instance v0, Lcom/google/android/feedback/SaveReportThread;

    invoke-direct {v0, p0, p1}, Lcom/google/android/feedback/SaveReportThread;-><init>(Lcom/google/android/feedback/FeedbackActivity;Lcom/google/android/feedback/ExtendedErrorReport;)V

    invoke-virtual {v0}, Lcom/google/android/feedback/SaveReportThread;->start()V

    .line 311
    return-void
.end method

.method public setProgressBarVisible(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 361
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 362
    .local v2, viewChooser:Landroid/widget/FrameLayout;
    const v3, 0x7f07000c

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, progressBar:Landroid/view/View;
    const v3, 0x7f070007

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, feedbackView:Landroid/view/View;
    if-eqz p1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    if-eqz p1, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 367
    return-void

    :cond_0
    move v3, v5

    .line 365
    goto :goto_0

    :cond_1
    move v3, v4

    .line 366
    goto :goto_1
.end method

.method public showToast(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 353
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/feedback/FeedbackActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/feedback/FeedbackActivity$2;-><init>(Lcom/google/android/feedback/FeedbackActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method
