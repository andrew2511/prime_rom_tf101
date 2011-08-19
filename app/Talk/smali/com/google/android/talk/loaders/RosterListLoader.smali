.class public Lcom/google/android/talk/loaders/RosterListLoader;
.super Landroid/content/CursorLoader;
.source "RosterListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/loaders/RosterListLoader$2;,
        Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field static final PROJECTION_NOAVATAR:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mConstraint:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentObserverRegistered:Z

.field private mFilterMode:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

.field protected mLogLevel:I

.field private mOnFinishedLoading:Ljava/lang/Runnable;

.field private mProjection:[Ljava/lang/String;

.field private mTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "username"

    aput-object v1, v0, v4

    const-string v1, "nickname"

    aput-object v1, v0, v5

    const-string v1, "account"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "subscriptionStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subscriptionType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "qc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "client_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "groupchat"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "last_unread_message"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "last_message_date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "avatars_hash"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "avatars_data"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cap"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "chats._id as ChatsTableId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader;->PROJECTION:[Ljava/lang/String;

    .line 64
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "username"

    aput-object v1, v0, v4

    const-string v1, "nickname"

    aput-object v1, v0, v5

    const-string v1, "account"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "subscriptionStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subscriptionType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "qc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "client_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "groupchat"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "last_unread_message"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "last_message_date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "avatars_hash"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "cap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "chats._id as ChatsTableId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader;->PROJECTION_NOAVATAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 128
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/talk/loaders/RosterListLoader;->PROJECTION:[Ljava/lang/String;

    const-string v6, "subscriptionType DESC, (chats._id != 0) DESC, chats._id DESC, mode DESC, nickname COLLATE UNICODE ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mLogLevel:I

    .line 30
    new-instance v0, Lcom/google/android/talk/loaders/RosterListLoader$1;

    invoke-direct {v0, p0, v4}, Lcom/google/android/talk/loaders/RosterListLoader$1;-><init>(Lcom/google/android/talk/loaders/RosterListLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mContentObserver:Landroid/database/ContentObserver;

    .line 135
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mProjection:[Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mTablet:Z

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/google/android/talk/loaders/RosterListLoader$FilterMode;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "mode"
    .parameter "onFinishedLoading"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/talk/loaders/RosterListLoader;-><init>(Landroid/content/Context;)V

    .line 143
    iput-wide p2, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mAccountId:J

    .line 144
    iput-object p4, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mFilterMode:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    .line 145
    iput-object p5, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mOnFinishedLoading:Ljava/lang/Runnable;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/loaders/RosterListLoader;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/talk/loaders/RosterListLoader;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private computeSelectionString(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .parameter "mode"
    .parameter "queryConstraint"
    .parameter "accountId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, selection:Ljava/lang/String;
    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    invoke-virtual {p1}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 177
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    const-string v1, "%s AND (%s LIKE \'%%%s%%\' OR %s LIKE \'%%%s%%\')"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v3, "username"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    const-string v4, "nickname"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    return-object v0

    .line 153
    :pswitch_0
    iget-boolean v1, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mTablet:Z

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "account=%s AND type!=3 AND subscriptionType>=4 AND (qc=1 OR last_message_date NOTNULL OR subscriptionType=5)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    const-string v1, "account=%s AND type!=3 AND subscriptionType>=4 AND (qc=1 OR last_message_date!=0 OR subscriptionType=5)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    goto :goto_0

    .line 162
    :pswitch_1
    iget-boolean v1, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mTablet:Z

    if-eqz v1, :cond_2

    .line 163
    const-string v1, "account=%s AND type!=3 AND subscriptionType>=4 AND (type!=4 OR last_message_date NOTNULL)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_2
    const-string v1, "account=%s AND type!=3 AND subscriptionType>=4 AND (type!=4 OR last_message_date!=0)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    goto :goto_0

    .line 172
    :pswitch_2
    const-string v1, "account=%s AND type!=3 AND subscriptionType>=4"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 295
    const/4 v0, 0x3

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RosterListLoader] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 299
    const/4 v0, 0x2

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RosterListLoader] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 268
    const-string v0, "onLoadComplete"

    invoke-direct {p0, v0}, Lcom/google/android/talk/loaders/RosterListLoader;->logv(Ljava/lang/String;)V

    .line 277
    if-nez p1, :cond_0

    .line 278
    const-string v0, "talk"

    const-string v1, "Query failed. Try again without the avatar column."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader;->PROJECTION_NOAVATAR:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/loaders/RosterListLoader;->setProjection([Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->forceLoad()V

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mOnFinishedLoading:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mOnFinishedLoading:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 287
    :cond_1
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/loaders/RosterListLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 213
    const-string v0, "forceLoad"

    invoke-direct {p0, v0}, Lcom/google/android/talk/loaders/RosterListLoader;->logd(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->prepareSelectionClause()V

    .line 215
    invoke-super {p0}, Landroid/content/CursorLoader;->onForceLoad()V

    .line 216
    return-void
.end method

.method protected onStartLoading()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 225
    iget-boolean v1, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mContentObserverRegistered:Z

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### startLoading: register content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/loaders/RosterListLoader;->logd(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    iput-boolean v4, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mContentObserverRegistered:Z

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->prepareSelectionClause()V

    .line 236
    iget v1, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mLogLevel:I

    if-lt v1, v4, :cond_1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "startQuery(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "projection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mProjection:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader;->PROJECTION:[Ljava/lang/String;

    if-ne v1, v2, :cond_2

    const-string v1, "full"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, "selection: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/loaders/RosterListLoader;->logd(Ljava/lang/String;)V

    .line 249
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->cancelLoad()Z

    .line 250
    invoke-super {p0}, Landroid/content/CursorLoader;->onStartLoading()V

    .line 251
    return-void

    .line 240
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v1, "no avatar"

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Landroid/content/CursorLoader;->onStopLoading()V

    .line 257
    iget-boolean v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mContentObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##### stopLoading: unregister content observer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/loaders/RosterListLoader;->logd(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mContentObserverRegistered:Z

    .line 263
    :cond_0
    return-void
.end method

.method protected prepareSelectionClause()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mFilterMode:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    iget-object v1, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mConstraint:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mAccountId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/talk/loaders/RosterListLoader;->computeSelectionString(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/loaders/RosterListLoader;->setSelection(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public resetProjection()V
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/loaders/RosterListLoader;->setProjection([Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/talk/loaders/RosterListLoader;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->forceLoad()V

    .line 190
    return-void
.end method

.method public setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Ljava/lang/String;)V
    .locals 1
    .parameter "mode"
    .parameter "constraint"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mConstraint:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mFilterMode:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    if-eq v0, p1, :cond_1

    .line 194
    :cond_0
    iput-object p2, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mConstraint:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mFilterMode:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    .line 196
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->forceLoad()V

    .line 198
    :cond_1
    return-void
.end method

.method public switchAccounts(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mAccountId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 206
    iput-wide p1, p0, Lcom/google/android/talk/loaders/RosterListLoader;->mAccountId:J

    .line 207
    invoke-virtual {p0}, Lcom/google/android/talk/loaders/RosterListLoader;->forceLoad()V

    .line 209
    :cond_0
    return-void
.end method
