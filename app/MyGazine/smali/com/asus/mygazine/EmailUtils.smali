.class public Lcom/asus/mygazine/EmailUtils;
.super Ljava/lang/Object;
.source "EmailUtils.java"


# static fields
.field public static sEmailUitls:Lcom/asus/mygazine/EmailUtils;


# instance fields
.field private final ACCOUNT_URI:Landroid/net/Uri;

.field private final MESSAGE_URI:Landroid/net/Uri;

.field private final SYNCMESSAGE_URI:Landroid/net/Uri;

.field private mEmailObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/EmailUtils;->MESSAGE_URI:Landroid/net/Uri;

    .line 17
    const-string v0, "content://com.android.email.provider/syncedMessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/EmailUtils;->SYNCMESSAGE_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/EmailUtils;->ACCOUNT_URI:Landroid/net/Uri;

    .line 30
    new-instance v0, Lcom/asus/mygazine/EmailUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/asus/mygazine/EmailUtils$1;-><init>(Lcom/asus/mygazine/EmailUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/mygazine/EmailUtils;->mEmailObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static getInstance()Lcom/asus/mygazine/EmailUtils;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/asus/mygazine/EmailUtils;->sEmailUitls:Lcom/asus/mygazine/EmailUtils;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/asus/mygazine/EmailUtils;

    invoke-direct {v0}, Lcom/asus/mygazine/EmailUtils;-><init>()V

    sput-object v0, Lcom/asus/mygazine/EmailUtils;->sEmailUitls:Lcom/asus/mygazine/EmailUtils;

    .line 26
    :cond_0
    sget-object v0, Lcom/asus/mygazine/EmailUtils;->sEmailUitls:Lcom/asus/mygazine/EmailUtils;

    return-object v0
.end method

.method public static getUnreadCountByMailboxType(Landroid/content/Context;I)I
    .locals 11
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 55
    const/4 v9, 0x0

    .line 57
    .local v9, count:I
    const-string v7, "unreadCount"

    .line 58
    .local v7, UNREAD_COUNT:Ljava/lang/String;
    const-string v6, "type"

    .line 59
    .local v6, TYPE:Ljava/lang/String;
    const-string v0, "content://com.android.email.provider/mailbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 61
    .local v1, MAILBOX_URI:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sum("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    .line 62
    .local v2, MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " =?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, MAILBOX_TYPE_SELECTION:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 70
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 73
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 77
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 81
    .end local v8           #c:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 77
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v8           #c:Landroid/database/Cursor;
    :cond_1
    move v0, v9

    .line 81
    goto :goto_0

    .line 77
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public registerCallback(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    const/4 v2, 0x1

    .line 41
    iget-object v0, p0, Lcom/asus/mygazine/EmailUtils;->SYNCMESSAGE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/asus/mygazine/EmailUtils;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    iget-object v0, p0, Lcom/asus/mygazine/EmailUtils;->MESSAGE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/asus/mygazine/EmailUtils;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    iget-object v0, p0, Lcom/asus/mygazine/EmailUtils;->ACCOUNT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/asus/mygazine/EmailUtils;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 44
    return-void
.end method

.method public unregisterCallback(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resolver"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/asus/mygazine/EmailUtils;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/mygazine/EmailUtils;->sEmailUitls:Lcom/asus/mygazine/EmailUtils;

    .line 51
    return-void
.end method
