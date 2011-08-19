.class public Lcom/asus/emailwidget/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final ACCOUNT_URI:Landroid/net/Uri;

.field private final MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

.field private final MAILBOX_TYPE_SELECTION:Ljava/lang/String;

.field private final MAILBOX_URI:Landroid/net/Uri;

.field private final MESSAGE_URI:Landroid/net/Uri;

.field private final SYNCMESSAGE_URI:Landroid/net/Uri;

.field private final TYPE:Ljava/lang/String;

.field private final TYPE_INBOX:I

.field private final UNREAD_COUNT:Ljava/lang/String;

.field private mCmdlock:[I

.field private mContext:Landroid/content/Context;

.field private mFlag:Z

.field private mHandler:Landroid/os/Handler;

.field public mObserver:Landroid/database/ContentObserver;

.field private mUpdateTime:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/emailwidget/UpdateService;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    iput-boolean v2, p0, Lcom/asus/emailwidget/UpdateService;->mFlag:Z

    .line 24
    iput-object v4, p0, Lcom/asus/emailwidget/UpdateService;->mContext:Landroid/content/Context;

    .line 26
    const-string v0, "unreadCount"

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->UNREAD_COUNT:Ljava/lang/String;

    .line 27
    const-string v0, "type"

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->TYPE:Ljava/lang/String;

    .line 28
    iput v2, p0, Lcom/asus/emailwidget/UpdateService;->TYPE_INBOX:I

    .line 30
    const-string v0, "content://com.android.email.provider/mailbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->MAILBOX_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->MESSAGE_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.android.email.provider/syncedMessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->SYNCMESSAGE_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->ACCOUNT_URI:Landroid/net/Uri;

    .line 35
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sum(unreadCount)"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 36
    const-string v0, "type =?"

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->MAILBOX_TYPE_SELECTION:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object v4, p0, Lcom/asus/emailwidget/UpdateService;->mObserver:Landroid/database/ContentObserver;

    .line 39
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->mCmdlock:[I

    .line 41
    new-instance v0, Lcom/asus/emailwidget/UpdateService$1;

    invoke-direct {v0, p0}, Lcom/asus/emailwidget/UpdateService$1;-><init>(Lcom/asus/emailwidget/UpdateService;)V

    iput-object v0, p0, Lcom/asus/emailwidget/UpdateService;->mUpdateTime:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/emailwidget/UpdateService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asus/emailwidget/UpdateService;->mCmdlock:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/emailwidget/UpdateService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asus/emailwidget/UpdateService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/emailwidget/UpdateService;Landroid/content/Context;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/asus/emailwidget/UpdateService;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/asus/emailwidget/UpdateService;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/asus/emailwidget/UpdateService;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/asus/emailwidget/UpdateService;->updateWidget(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/asus/emailwidget/UpdateService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/asus/emailwidget/UpdateService;->mFlag:Z

    return v0
.end method

.method static synthetic access$502(Lcom/asus/emailwidget/UpdateService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/asus/emailwidget/UpdateService;->mFlag:Z

    return p1
.end method

.method static synthetic access$600(Lcom/asus/emailwidget/UpdateService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asus/emailwidget/UpdateService;->mUpdateTime:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/emailwidget/UpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asus/emailwidget/UpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getUnreadCountByMailboxType(Landroid/content/Context;I)I
    .locals 9
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v8, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    .local v7, count:I
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/emailwidget/UpdateService;->MAILBOX_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/asus/emailwidget/UpdateService;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 62
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 66
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    move v0, v7

    .line 70
    goto :goto_0

    .line 66
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateWidget(Landroid/content/Context;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f060003

    const/4 v7, 0x0

    .line 75
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 76
    const/16 v1, 0x3e7

    if-le p2, v1, :cond_1

    const-string v1, "999+"

    .line 77
    :goto_0
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x7f03

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/asus/emailwidget/EmailWidget;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const v4, 0x7f060002

    invoke-virtual {v2, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 82
    sget-boolean v4, Lcom/asus/emailwidget/UpdateService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberOfMails="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const/high16 v1, 0x7f05

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 92
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v4, "com.android.email"

    const-string v5, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {p1, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 97
    const/high16 v4, 0x7f06

    invoke-virtual {v2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 98
    invoke-virtual {v0, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 99
    return-void

    .line 76
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_2
    const v1, 0x7f050001

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 103
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    sget-boolean v1, Lcom/asus/emailwidget/UpdateService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "UpdateService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iput-object p0, p0, Lcom/asus/emailwidget/UpdateService;->mContext:Landroid/content/Context;

    .line 107
    iget-object v1, p0, Lcom/asus/emailwidget/UpdateService;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2

    .line 108
    sget-boolean v1, Lcom/asus/emailwidget/UpdateService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "UpdateService"

    const-string v2, "mObserver == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    new-instance v1, Lcom/asus/emailwidget/UpdateService$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/asus/emailwidget/UpdateService$2;-><init>(Lcom/asus/emailwidget/UpdateService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/asus/emailwidget/UpdateService;->mObserver:Landroid/database/ContentObserver;

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/asus/emailwidget/UpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/emailwidget/UpdateService;->SYNCMESSAGE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/asus/emailwidget/UpdateService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    invoke-virtual {p0}, Lcom/asus/emailwidget/UpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/emailwidget/UpdateService;->MESSAGE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/asus/emailwidget/UpdateService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    invoke-virtual {p0}, Lcom/asus/emailwidget/UpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/emailwidget/UpdateService;->ACCOUNT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/asus/emailwidget/UpdateService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    const/4 v1, 0x0

    invoke-direct {p0, p0, v1}, Lcom/asus/emailwidget/UpdateService;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    .line 136
    .local v0, unreadCount:I
    sget-boolean v1, Lcom/asus/emailwidget/UpdateService;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate - unreadCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_3
    invoke-direct {p0, p0, v0}, Lcom/asus/emailwidget/UpdateService;->updateWidget(Landroid/content/Context;I)V

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 151
    sget-boolean v0, Lcom/asus/emailwidget/UpdateService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "UpdateService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/asus/emailwidget/UpdateService;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/asus/emailwidget/UpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/emailwidget/UpdateService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    :cond_1
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 142
    sget-boolean v1, Lcom/asus/emailwidget/UpdateService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "UpdateService"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p0, v1}, Lcom/asus/emailwidget/UpdateService;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    .line 144
    .local v0, unreadCount:I
    sget-boolean v1, Lcom/asus/emailwidget/UpdateService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart - unreadCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    invoke-direct {p0, p0, v0}, Lcom/asus/emailwidget/UpdateService;->updateWidget(Landroid/content/Context;I)V

    .line 146
    return-void
.end method
