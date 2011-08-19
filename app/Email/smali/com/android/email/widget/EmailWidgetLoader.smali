.class Lcom/android/email/widget/EmailWidgetLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "EmailWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;
    }
.end annotation


# static fields
.field private static final WIDGET_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLoadingWidgetView:Lcom/android/email/widget/WidgetView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/widget/EmailWidgetLoader;->WIDGET_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 92
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/widget/EmailWidgetLoader;->WIDGET_PROJECTION:[Ljava/lang/String;

    const-string v6, "timeStamp DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method


# virtual methods
.method public getLoadingWidgetView()Lcom/android/email/widget/WidgetView;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mLoadingWidgetView:Lcom/android/email/widget/WidgetView;

    return-object v0
.end method

.method public load(Lcom/android/email/widget/WidgetView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 126
    iput-object p1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mLoadingWidgetView:Lcom/android/email/widget/WidgetView;

    .line 127
    invoke-virtual {p1}, Lcom/android/email/widget/WidgetView;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelection(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/android/email/widget/WidgetView;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->startLoading()V

    .line 130
    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    .line 102
    .local v2, messagesCursor:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    invoke-interface {v2, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 104
    iget-object v3, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 107
    .local v0, accountCount:I
    iget-object v3, p0, Lcom/android/email/widget/EmailWidgetLoader;->mLoadingWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v3}, Lcom/android/email/widget/WidgetView;->useUnreadCount()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/android/email/widget/EmailWidgetLoader;->mLoadingWidgetView:Lcom/android/email/widget/WidgetView;

    iget-object v4, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/email/widget/WidgetView;->getUnreadCount(Landroid/content/Context;)I

    move-result v1

    .line 114
    .local v1, messageCount:I
    :goto_0
    new-instance v3, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;-><init>(Landroid/database/Cursor;II)V

    return-object v3

    .line 111
    .end local v1           #messageCount:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .restart local v1       #messageCount:I
    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
