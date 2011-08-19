.class public Lcom/google/android/talk/util/ChatSwitcher;
.super Ljava/lang/Object;
.source "ChatSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;,
        Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field public mAccountIdColumn:I

.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field public mAvatarDataColumn:I

.field public mAvatarHashColumn:I

.field public mCapabilitiesColumn:I

.field public mGroupChatColumn:I

.field public mLastChatColumn:I

.field public mLastUnreadMessageColumn:I

.field public mNicknameColumn:I

.field public mPresenceStatusColumn:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mQueryOnResume:Z

.field public mShortcutColumn:I

.field private mSuspendQueries:Z

.field public mSwitcherAdapter:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

.field public mUsernameColumn:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLandroid/view/View;Landroid/os/Handler;Lcom/google/android/talk/TalkApp;Landroid/view/LayoutInflater;Ljava/lang/Runnable;Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;)V
    .locals 2
    .parameter "a"
    .parameter "accountId"
    .parameter "rootView"
    .parameter "handler"
    .parameter "app"
    .parameter "inflater"
    .parameter "onClose"
    .parameter "onQueryCompleteCallback"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/google/android/talk/util/ChatSwitcher;->mActivity:Landroid/app/Activity;

    .line 194
    iput-wide p2, p0, Lcom/google/android/talk/util/ChatSwitcher;->mAccountId:J

    .line 195
    iput-object p6, p0, Lcom/google/android/talk/util/ChatSwitcher;->mApp:Lcom/google/android/talk/TalkApp;

    .line 197
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mApp:Lcom/google/android/talk/TalkApp;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "talk"

    const-string v1, "mApp is null, bailing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 259
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;-><init>(Lcom/google/android/talk/util/ChatSwitcher;Landroid/database/Cursor;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mSwitcherAdapter:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    .line 205
    new-instance v0, Lcom/google/android/talk/util/ChatSwitcher$2;

    iget-object v1, p0, Lcom/google/android/talk/util/ChatSwitcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1, p9}, Lcom/google/android/talk/util/ChatSwitcher$2;-><init>(Lcom/google/android/talk/util/ChatSwitcher;Landroid/content/ContentResolver;Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;)V

    iput-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 255
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "constructor: start query (TODO: only do this when necessary)"

    invoke-direct {p0, v0}, Lcom/google/android/talk/util/ChatSwitcher;->log(Ljava/lang/String;)V

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/util/ChatSwitcher;->startQuery()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/talk/util/ChatSwitcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/talk/util/ChatSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/util/ChatSwitcher;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/talk/util/ChatSwitcher;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/talk/util/ChatSwitcher;->mActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/talk/util/ChatSwitcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mSuspendQueries:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/util/ChatSwitcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/talk/util/ChatSwitcher;->update()V

    return-void
.end method

.method private cancelPreviousQuery()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 78
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 327
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatSwitcher] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public static makeChatIntent(Landroid/content/ContentResolver;JLjava/lang/String;JI)Landroid/content/Intent;
    .locals 3
    .parameter "resolver"
    .parameter "account"
    .parameter "contact"
    .parameter "contactId"
    .parameter "groupChat"

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    .local v0, i:Landroid/content/Intent;
    const-string v1, "from"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 268
    if-eqz p6, :cond_0

    .line 269
    const-string v1, "groupChat"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    :cond_0
    return-object v0
.end method

.method private startQuery()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/talk/util/ChatSwitcher$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/util/ChatSwitcher$1;-><init>(Lcom/google/android/talk/util/ChatSwitcher;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/util/ChatSwitcher;->startQuery(Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;)V

    .line 86
    return-void
.end method

.method private startQuery(Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;)V
    .locals 9
    .parameter "runnable"

    .prologue
    const/4 v1, 0x1

    .line 97
    const-string v0, "talk"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "startQuery"

    invoke-direct {p0, v0}, Lcom/google/android/talk/util/ChatSwitcher;->log(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/util/ChatSwitcher;->cancelPreviousQuery()V

    .line 102
    iget-boolean v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mSuspendQueries:Z

    if-eqz v0, :cond_2

    .line 103
    iput-boolean v1, p0, Lcom/google/android/talk/util/ChatSwitcher;->mQueryOnResume:Z

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-wide v2, p0, Lcom/google/android/talk/util/ChatSwitcher;->mAccountId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "chats.contact_id in (select _id from contacts where account=?)"

    new-array v6, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v7, p0, Lcom/google/android/talk/util/ChatSwitcher;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "chats._id DESC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private update()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mSwitcherAdapter:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->notifyDataSetChanged()V

    .line 304
    return-void
.end method


# virtual methods
.method public changeAccount(J)Z
    .locals 2
    .parameter "accountId"

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mAccountId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 294
    iput-wide p1, p0, Lcom/google/android/talk/util/ChatSwitcher;->mAccountId:J

    .line 295
    invoke-virtual {p0}, Lcom/google/android/talk/util/ChatSwitcher;->requery()V

    .line 296
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeCursor()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mSwitcherAdapter:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 290
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 11
    .parameter "position"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mSwitcherAdapter:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 309
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    const-string v0, "talk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select: moved to pos="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " on cursor="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mSwitcherAdapter:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->getItemId(I)J

    move-result-wide v4

    .line 316
    .local v4, contactId:J
    iget v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mUsernameColumn:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, contact:Ljava/lang/String;
    iget v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mAccountIdColumn:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 318
    .local v1, accountId:J
    iget v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mGroupChatColumn:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 319
    .local v6, groupChat:I
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static/range {v0 .. v6}, Lcom/google/android/talk/util/ChatSwitcher;->makeChatIntent(Landroid/content/ContentResolver;JLjava/lang/String;JI)Landroid/content/Intent;

    move-result-object v8

    .local v8, intent:Landroid/content/Intent;
    move-object v0, v8

    .line 323
    goto :goto_0
.end method

.method public requery()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "requery"

    invoke-direct {p0, v0}, Lcom/google/android/talk/util/ChatSwitcher;->log(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/util/ChatSwitcher;->cancelPreviousQuery()V

    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/util/ChatSwitcher;->startQuery()V

    .line 94
    return-void
.end method

.method public resumeRequery()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mSuspendQueries:Z

    .line 282
    iget-boolean v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mQueryOnResume:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/google/android/talk/util/ChatSwitcher;->requery()V

    .line 285
    :cond_0
    return-void
.end method

.method public suspendRequery()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mSuspendQueries:Z

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/util/ChatSwitcher;->mQueryOnResume:Z

    .line 278
    return-void
.end method
