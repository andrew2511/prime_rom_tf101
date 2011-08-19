.class public Lcom/google/android/gm/provider/MessageCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MessageCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MessageCursorLoader$ReloadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mStopped:Z

.field private final mUri:Landroid/net/Uri;

.field private mUseCache:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "uri"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/google/android/gm/provider/MessageCursorLoader$ReloadContentObserver;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MessageCursorLoader$ReloadContentObserver;-><init>(Lcom/google/android/gm/provider/MessageCursorLoader;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mObserver:Landroid/database/ContentObserver;

    .line 61
    iput-object p3, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUri:Landroid/net/Uri;

    .line 62
    iput-object p2, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mAccount:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUseCache:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/provider/MessageCursorLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->reloadFromCache()V

    return-void
.end method

.method private closeMessageCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 1
    .parameter "messageCursor"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 167
    return-void
.end method

.method private reloadFromCache()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUseCache:Z

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->forceLoad()V

    .line 131
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 2
    .parameter "messageCursor"

    .prologue
    .line 94
    iget-boolean v1, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mStopped:Z

    if-eqz v1, :cond_1

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MessageCursorLoader;->closeMessageCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 99
    .local v0, oldCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    iput-object p1, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 101
    if-eqz p1, :cond_2

    .line 102
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 106
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 107
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MessageCursorLoader;->closeMessageCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MessageCursorLoader;->deliverResult(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    return-void
.end method

.method public loadInBackground()Lcom/google/android/gm/provider/Gmail$MessageCursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v2, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "useCache"

    iget-boolean v5, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUseCache:Z

    if-eqz v5, :cond_0

    const-string v5, "1"

    :goto_0
    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 74
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    move-object v2, v3

    .line 88
    :goto_1
    return-object v2

    .line 71
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v5, "0"

    goto :goto_0

    .line 83
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 85
    new-instance v7, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iget-object v2, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mAccount:Ljava/lang/String;

    invoke-direct {v7, v2, v0, v3, v6}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 87
    .local v7, result:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    iget-object v2, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    move-object v2, v7

    .line 88
    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->loadInBackground()Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 0
    .parameter "messageCursor"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MessageCursorLoader;->closeMessageCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 148
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MessageCursorLoader;->onCanceled(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->onStopLoading()V

    .line 157
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MessageCursorLoader;->closeMessageCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 161
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iput-boolean v1, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mStopped:Z

    .line 115
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MessageCursorLoader;->deliverResult(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUseCache:Z

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->forceLoad()V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->cancelLoad()Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mStopped:Z

    .line 141
    return-void
.end method
