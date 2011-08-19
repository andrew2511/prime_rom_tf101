.class public Lcom/android/exchange/CalendarSyncEnabler;
.super Ljava/lang/Object;
.source "CalendarSyncEnabler.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/exchange/CalendarSyncEnabler;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private createLaunchCalendarIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "content://com.android.calendar/time"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method final enableEasCalendarSyncInternalForTest()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v3, emailAddresses:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/exchange/CalendarSyncEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.android.exchange"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 71
    .local v4, exchangeAccounts:[Landroid/accounts/Account;
    move-object v1, v4

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 72
    .local v0, account:Landroid/accounts/Account;
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 73
    .local v2, emailAddress:Ljava/lang/String;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enabling Exchange calendar sync for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v7, "com.android.calendar"

    invoke-static {v0, v7, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 76
    const-string v7, "com.android.calendar"

    invoke-static {v0, v7, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 80
    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 84
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #emailAddress:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method showNotificationForTest(Ljava/lang/String;)V
    .locals 7
    .parameter "emailAddresses"

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v4, p0, Lcom/android/exchange/CalendarSyncEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/exchange/CalendarSyncEnabler;->createLaunchCalendarIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 102
    .local v0, launchCalendarPendingIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/exchange/CalendarSyncEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f05000a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, tickerText:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    const/high16 v4, 0x7f02

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v4, v3, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 105
    .local v1, n:Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/exchange/CalendarSyncEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v3, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 106
    const/16 v4, 0x10

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 108
    iget-object v4, p0, Lcom/android/exchange/CalendarSyncEnabler;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 110
    .local v2, nm:Landroid/app/NotificationManager;
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 111
    return-void
.end method
