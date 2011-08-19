.class public Lcom/google/android/gm/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/Utils$AddrSpec;,
        Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;
    }
.end annotation


# static fields
.field private static final GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final GOOGLE_MAIL_CONVERSATION_LIST_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final HEX_DIGITS:[C

.field private static mActiveNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sActiveSendErrorNotificationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sDefaultNotifIcon:Landroid/graphics/Bitmap;

.field private static sDraftPluralString:Ljava/lang/CharSequence;

.field private static sDraftSingularString:Ljava/lang/CharSequence;

.field private static sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sMeString:Ljava/lang/CharSequence;

.field private static sReadStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sSendFailedString:Ljava/lang/CharSequence;

.field private static sSendingString:Ljava/lang/CharSequence;

.field private static sUnreadStyleSpan:Landroid/text/style/CharacterStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.CreateLabelShortcutActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/Utils;->GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 126
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.CreateLabelShortcutActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 129
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.ConversationListActivityGoogleMail"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_CONVERSATION_LIST_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 251
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gm/Utils;->HEX_DIGITS:[C

    .line 414
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    .line 880
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 1614
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    return-void

    .line 251
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1720
    return-void
.end method

.method public static cacheGoogleAccountList(Landroid/content/Context;Z[Landroid/accounts/Account;)V
    .locals 3
    .parameter "context"
    .parameter "synced"
    .parameter "accounts"

    .prologue
    .line 1477
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1478
    .local v0, accountNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1479
    aget-object v2, p2, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1481
    :cond_0
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v0}, Lcom/google/android/gm/Persistence;->cacheConfiguredGoogleAccounts(Landroid/content/Context;ZLjava/lang/Iterable;)V

    .line 1483
    return-void
.end method

.method public static cancelAllNotifications(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 454
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 456
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 457
    sget-object v1, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 458
    sget-object v1, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 460
    :cond_0
    return-void
.end method

.method public static cancelAndResendNotifications(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 467
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 469
    .local v9, nm:Landroid/app/NotificationManager;
    invoke-virtual {v9}, Landroid/app/NotificationManager;->cancelAll()V

    .line 471
    sget-object v0, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 473
    .local v6, activeAccounts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, acct:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v7, fakedIntent:Landroid/content/Intent;
    const-string v1, "count"

    sget-object v0, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 477
    const-string v0, "account"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x1

    invoke-static {p0, v2}, Lcom/google/android/gm/Utils;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/Utils;->validateNotifications(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 481
    .end local v2           #acct:Ljava/lang/String;
    .end local v7           #fakedIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 421
    sget-object v0, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v1

    move v5, v3

    .line 425
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/Utils;->validateNotifications(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 427
    return-void
.end method

.method public static changeAccount(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1
    .parameter "activity"
    .parameter "account"
    .parameter "finishActivity"

    .prologue
    .line 1170
    if-eqz p2, :cond_0

    .line 1171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1173
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1174
    return-void
.end method

.method public static clearAccountSendErrorNotifications(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1674
    sget-object v4, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1675
    .local v0, activeNotifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 1676
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1678
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1679
    .local v3, notificationId:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1681
    .end local v3           #notificationId:Ljava/lang/Integer;
    :cond_0
    sget-object v4, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method

.method public static clearAllNotfications()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const-string v0, "Gmail"

    const-string v1, "Clearing all notifications."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    sget-object v0, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 495
    return-void
.end method

.method private static configureLatestEventInfoFromConversation(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/google/android/gm/provider/Gmail$ConversationCursor;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 8
    .parameter "context"
    .parameter "notification"
    .parameter "conversationCursor"
    .parameter "clickIntent"
    .parameter "notificationAccount"
    .parameter "unreadCount"

    .prologue
    const/4 v7, 0x1

    .line 731
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 732
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p5, p4, v0}, Lcom/google/android/gm/Utils;->getStyledNotificationSubtitle(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 734
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v2

    .line 735
    .local v2, gmail:Lcom/google/android/gm/provider/Gmail;
    const/4 v3, 0x0

    .line 736
    .local v3, message:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    const/4 v1, 0x0

    .line 738
    .local v1, from:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gm/provider/Gmail;->getDetachedMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v3

    .line 744
    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/Utils;->getDisplayableSender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 746
    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/Utils;->getSenderAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/android/gm/Utils;->getContactIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 754
    invoke-static {p0, p4, v1}, Lcom/google/android/gm/Utils;->getNotificationTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 755
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 757
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Showing notification with unreadCount of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-le p5, v7, :cond_1

    .line 759
    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 761
    :cond_1
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 762
    return-void

    .line 751
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    throw v4
.end method

.method public static containsAccount(Landroid/accounts/Account;[Landroid/accounts/Account;)Z
    .locals 5
    .parameter "account"
    .parameter "accounts"

    .prologue
    .line 1177
    move-object v0, p1

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1178
    .local v1, candidateAccount:Landroid/accounts/Account;
    invoke-virtual {p0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1179
    const/4 v4, 0x1

    .line 1182
    .end local v1           #candidateAccount:Landroid/accounts/Account;
    :goto_1
    return v4

    .line 1177
    .restart local v1       #candidateAccount:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1182
    .end local v1           #candidateAccount:Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static createErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f02008b

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1622
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getGmailAccountCount(Landroid/content/Context;)I

    move-result v0

    .line 1623
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 1624
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1625
    if-le v0, v4, :cond_0

    .line 1630
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v0, p5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    new-instance v3, Landroid/text/SpannableString;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1634
    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1635
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f100018

    invoke-direct {v5, p0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1637
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v3, v5, v4, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1639
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1643
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1644
    :goto_1
    add-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1645
    int-to-long v4, p3

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gm/Utils;->createViewSendErrorIntent(Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v4

    .line 1647
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1649
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1651
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1652
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1654
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1655
    const/4 v1, -0x1

    invoke-static {p0, v1, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1656
    invoke-static {p1, v3}, Lcom/google/android/gm/Utils;->updateSendErrorNotificationMap(Ljava/lang/String;I)V

    .line 1657
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1658
    return-void

    .line 1641
    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_1
    move v0, v7

    .line 1643
    goto :goto_1
.end method

.method private static createNotificationString(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, accountMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 394
    .local v2, i:I
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 395
    .local v1, accountsToRemove:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, account:Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 397
    .local v5, unread:Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    .line 398
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_1
    if-lez v2, :cond_2

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v0           #account:Ljava/lang/String;
    .end local v5           #unread:Ljava/lang/Integer;
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    .restart local v0       #account:Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 410
    .end local v0           #account:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static createViewConversationIntent(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1248
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1249
    const-string v2, "gmail-ls"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1252
    if-nez p1, :cond_0

    .line 1253
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/gmail-ls"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    :goto_0
    return-object v0

    .line 1255
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v2

    .line 1256
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getMaxServerMessageId()J

    move-result-wide v4

    .line 1257
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gm/provider/LabelManager;->serialize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 1259
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conversationId/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxServerMessageId/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1261
    const-string v2, "labels"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1262
    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1263
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/gmail-ls"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createViewLabelIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1227
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1228
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1229
    const-string v2, "gmail-ls"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1232
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/gmail-ls"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    if-eqz p2, :cond_0

    .line 1236
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1238
    :cond_0
    return-object v0
.end method

.method public static createViewSendErrorIntent(Ljava/lang/String;JI)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1591
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1592
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1593
    const-string v2, "gmail-ls"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "^f"

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1596
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/gmail-ls"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1597
    return-object v0
.end method

.method public static ellipsize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 971
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 972
    if-ge v0, p1, :cond_0

    move-object v0, p0

    .line 986
    :goto_0
    return-object v0

    .line 974
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 976
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 977
    const-string v3, "\u2026"

    .line 978
    if-ltz v2, :cond_2

    .line 980
    sub-int/2addr v0, v2

    const/4 v4, 0x5

    if-gt v0, v4, :cond_2

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 985
    if-gez v1, :cond_1

    move v1, v5

    .line 986
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method

.method public static enableLabelShortcutActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1409
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    .line 1411
    .local v1, persistence:Lcom/google/android/gm/Persistence;
    invoke-static {p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1412
    .local v0, overrideAppName:Z
    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->enableLabelShortcutActivity(Landroid/content/Context;Z)V

    .line 1413
    return-void
.end method

.method public static enableLabelShortcutActivity(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "useGoogleMail"

    .prologue
    const/4 v4, 0x1

    .line 1417
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1420
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_0

    sget-object v3, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    move-object v1, v3

    .line 1422
    .local v1, enabledLabelShortcutComponent:Landroid/content/ComponentName;
    :goto_0
    if-eqz p1, :cond_1

    sget-object v3, Lcom/google/android/gm/Utils;->GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    move-object v0, v3

    .line 1424
    .local v0, disabledLabelShortcutComponent:Landroid/content/ComponentName;
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1427
    invoke-virtual {v2, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1430
    return-void

    .line 1420
    .end local v0           #disabledLabelShortcutComponent:Landroid/content/ComponentName;
    .end local v1           #enabledLabelShortcutComponent:Landroid/content/ComponentName;
    :cond_0
    sget-object v3, Lcom/google/android/gm/Utils;->GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    move-object v1, v3

    goto :goto_0

    .line 1422
    .restart local v1       #enabledLabelShortcutComponent:Landroid/content/ComponentName;
    :cond_1
    sget-object v3, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    move-object v0, v3

    goto :goto_1
.end method

.method public static enableShortcutIntentFilter(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 1372
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v6

    .line 1373
    .local v6, persistence:Lcom/google/android/gm/Persistence;
    invoke-virtual {v6, p0}, Lcom/google/android/gm/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1374
    .local v3, currentAccount:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.google"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1379
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v7, v1

    if-lez v7, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/Utils;->shortcutActivityEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1380
    aget-object v7, v1, v9

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/google/android/gm/Utils;->startShortcutEnablerService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1383
    :cond_0
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v2, v4

    .line 1384
    .local v0, account:Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1391
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    :goto_1
    return-void

    .line 1383
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1388
    .end local v0           #account:Landroid/accounts/Account;
    :cond_3
    array-length v7, v1

    if-lez v7, :cond_1

    .line 1389
    aget-object v7, v1, v9

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, p0, v7}, Lcom/google/android/gm/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static escapeHtmlParamForJsUri(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "html"

    .prologue
    const/16 v2, 0x20

    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findContacts(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 658
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v9, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v10, whereBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .line 662
    .local v8, questionMarks:[Ljava/lang/String;
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 663
    const-string v1, "?"

    invoke-static {v8, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    const-string v1, "data1 IN ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 669
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 673
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v7, contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v6, :cond_0

    .line 684
    :goto_0
    return-object v7

    .line 678
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 682
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "formatString"
    .parameter "args"

    .prologue
    .line 1010
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1011
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-static {v0, p0, p1}, Lcom/google/android/gm/Utils;->format(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs format(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "result"
    .parameter "formatString"
    .parameter "args"

    .prologue
    .line 1016
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1020
    .local v4, length:I
    const/4 v2, 0x0

    .line 1022
    .local v2, current:I
    const/4 v0, 0x0

    .line 1023
    .local v0, argIndex:I
    move v3, v2

    .local v3, i:I
    move v1, v0

    .end local v0           #argIndex:I
    .local v1, argIndex:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1024
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-eq v5, v6, :cond_0

    move v0, v1

    .line 1023
    .end local v1           #argIndex:I
    .restart local v0       #argIndex:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0           #argIndex:I
    .restart local v1       #argIndex:I
    goto :goto_0

    .line 1025
    :cond_0
    const/4 v5, 0x1

    sub-int v5, v4, v5

    if-ge v3, v5, :cond_4

    .line 1026
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_1

    move v0, v1

    .end local v1           #argIndex:I
    .restart local v0       #argIndex:I
    goto :goto_1

    .line 1028
    .end local v0           #argIndex:I
    .restart local v1       #argIndex:I
    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1029
    add-int/lit8 v0, v1, 0x1

    .end local v1           #argIndex:I
    .restart local v0       #argIndex:I
    aget-object v5, p2, v1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1031
    add-int/lit8 v2, v3, 0x2

    .line 1033
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1037
    .end local v0           #argIndex:I
    .restart local v1       #argIndex:I
    :cond_2
    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1038
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .end local v1           #argIndex:I
    .restart local v0       #argIndex:I
    goto :goto_1
.end method

.method public static formatLabelWithUnreadCount(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1045
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getDisplayNoConversationCount()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getDisplayTotalConversationCount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1047
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getNumUnreadConversations()I

    move-result v0

    .line 1048
    if-gez v0, :cond_0

    .line 1051
    :cond_0
    const v0, 0x7f0d0159

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getNumUnreadConversations()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatPlural(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "resource"
    .parameter "count"

    .prologue
    .line 1098
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1099
    .local v0, formatString:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 433
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    .line 434
    .local v1, persistance:Lcom/google/android/gm/Persistence;
    invoke-virtual {v1, p0, p1}, Lcom/google/android/gm/Persistence;->getPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 436
    .local v0, defaultPriorityInbox:Z
    if-eqz v0, :cond_0

    const-string v2, "^iim"

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "^i"

    goto :goto_0
.end method

.method private static getContactIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "context"
    .parameter "senderAddress"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 688
    if-nez p1, :cond_0

    move-object v0, v3

    .line 717
    :goto_0
    return-object v0

    .line 691
    :cond_0
    const/4 v10, 0x0

    .line 692
    .local v10, icon:Landroid/graphics/Bitmap;
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->findContacts(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v6

    .line 696
    .local v6, contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 697
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 698
    .local v11, id:J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 699
    .local v7, contactUri:Landroid/net/Uri;
    const-string v0, "photo"

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 700
    .local v1, photoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data15"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 703
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 705
    .local v9, data:[B
    if-eqz v9, :cond_1

    .line 706
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 710
    .end local v9           #data:[B
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 713
    .end local v1           #photoUri:Landroid/net/Uri;
    .end local v7           #contactUri:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #id:J
    :cond_2
    if-nez v10, :cond_3

    .line 715
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getDefaultNotificationIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_3
    move-object v0, v10

    .line 717
    goto :goto_0

    .line 710
    .restart local v1       #photoUri:Landroid/net/Uri;
    .restart local v7       #contactUri:Landroid/net/Uri;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #id:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getDefaultNotificationIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"

    .prologue
    .line 721
    sget-object v0, Lcom/google/android/gm/Utils;->sDefaultNotifIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 722
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020030

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/Utils;->sDefaultNotifIcon:Landroid/graphics/Bitmap;

    .line 725
    :cond_0
    sget-object v0, Lcom/google/android/gm/Utils;->sDefaultNotifIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected static getDisplayableSender(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sender"

    .prologue
    const/4 v3, 0x0

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, tokenizedSender:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gm/Utils;->tokenize(Ljava/lang/String;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 773
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 775
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 783
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 784
    move-object v0, p0

    .line 786
    :cond_1
    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, extension:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 998
    .local v1, index:I
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 999
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1001
    :cond_0
    return-object v0
.end method

.method public static getGmailAccountCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 854
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gm/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 857
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static getNotificationId(Ljava/lang/String;)I
    .locals 1
    .parameter "account"

    .prologue
    .line 484
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static getNotificationTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 10
    .parameter "context"
    .parameter "notificationAccount"
    .parameter "sender"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 817
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getGmailAccountCount(Landroid/content/Context;)I

    move-result v3

    .line 818
    .local v3, size:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f001f

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, notificationTitle:Ljava/lang/String;
    if-le v3, v8, :cond_0

    .line 825
    new-instance v4, Landroid/text/SpannableString;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v7

    aput-object p1, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 828
    .local v4, titleString:Landroid/text/SpannableString;
    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 829
    .local v0, accountInfoOffset:I
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f100018

    invoke-direct {v1, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 831
    .local v1, notificationAccountSpan:Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v1, v0, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v4

    .line 835
    .end local v0           #accountInfoOffset:I
    .end local v1           #notificationAccountSpan:Landroid/text/style/TextAppearanceSpan;
    .end local v4           #titleString:Landroid/text/SpannableString;
    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v7

    aput-object p1, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static getPriorityInboxServerEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "account"

    .prologue
    .line 445
    invoke-static {p0}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 447
    .local v0, engine:Lcom/google/android/gm/provider/MailEngine;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->getServerPriorityInboxEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getSenderAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sender"

    .prologue
    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, tokenizedAddress:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gm/Utils;->tokenize(Ljava/lang/String;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 796
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 798
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 802
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    move-object v0, p0

    .line 805
    :cond_1
    return-object v0
.end method

.method public static getStyledNotificationSubtitle(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 926
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d0116

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 930
    return-void
.end method

.method public static getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZ)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 894
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 895
    sget-object v1, Lcom/google/android/gm/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    if-nez v1, :cond_0

    .line 896
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v1, Lcom/google/android/gm/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 897
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v1, Lcom/google/android/gm/Utils;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 898
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, 0x7f0b0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/google/android/gm/Utils;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    .line 900
    const v1, 0x7f0d0076

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/Utils;->sMeString:Ljava/lang/CharSequence;

    .line 901
    const v1, 0x7f0f0003

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/Utils;->sDraftSingularString:Ljava/lang/CharSequence;

    .line 902
    const v1, 0x7f0f0003

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/Utils;->sDraftPluralString:Ljava/lang/CharSequence;

    .line 903
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0d007d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 904
    sget-object v1, Lcom/google/android/gm/Utils;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    invoke-static {v1}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 906
    sput-object v0, Lcom/google/android/gm/Utils;->sSendingString:Ljava/lang/CharSequence;

    .line 907
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    sput-object p0, Lcom/google/android/gm/Utils;->sSendFailedString:Ljava/lang/CharSequence;

    .line 910
    :cond_0
    sget-object v4, Lcom/google/android/gm/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    sget-object v5, Lcom/google/android/gm/Utils;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    sget-object v6, Lcom/google/android/gm/Utils;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    sget-object v7, Lcom/google/android/gm/Utils;->sMeString:Ljava/lang/CharSequence;

    sget-object v8, Lcom/google/android/gm/Utils;->sDraftSingularString:Ljava/lang/CharSequence;

    sget-object v9, Lcom/google/android/gm/Utils;->sDraftPluralString:Ljava/lang/CharSequence;

    sget-object v10, Lcom/google/android/gm/Utils;->sSendingString:Ljava/lang/CharSequence;

    sget-object v11, Lcom/google/android/gm/Utils;->sSendFailedString:Ljava/lang/CharSequence;

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-static/range {v0 .. v13}, Lcom/google/android/gm/provider/Gmail;->getSenderSnippet(Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;ILandroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 919
    return-void
.end method

.method public static getTimeString(Landroid/content/Context;JZLandroid/text/TextPaint;F)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "millis"
    .parameter "shouldEllipsize"
    .parameter "paint"
    .parameter "width"

    .prologue
    .line 1550
    invoke-static {p0, p1, p2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, result:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1552
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, p4, p5, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1554
    :cond_0
    return-object v0
.end method

.method public static getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1903
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1904
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1905
    if-le p1, v1, :cond_0

    .line 1906
    const v2, 0x7f0d0151

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1913
    :goto_0
    return-object v0

    .line 1908
    :cond_0
    if-gtz p1, :cond_1

    .line 1909
    const-string v0, ""

    goto :goto_0

    .line 1911
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1490
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1494
    :goto_0
    return-object v1

    .line 1493
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1494
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static handleAccountNotSynchronized(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1147
    return-void
.end method

.method public static haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 1452
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1453
    .local v0, pm:Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_CONVERSATION_LIST_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConversationBeingRemoved(Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)Z
    .locals 5
    .parameter "labelOperations"
    .parameter "displayedLabel"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplyTrash()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplySpam()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplyMute()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v4

    .line 1087
    .local v0, hasAddedRemovableLabel:Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelOperations;->hasRemoveOperation(Ljava/lang/String;)Z

    move-result v1

    .line 1089
    .local v1, hasRemovedCurrentLabel:Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    move v2, v4

    :goto_1
    return v2

    .end local v0           #hasAddedRemovableLabel:Z
    .end local v1           #hasRemovedCurrentLabel:Z
    :cond_2
    move v0, v3

    .line 1083
    goto :goto_0

    .restart local v0       #hasAddedRemovableLabel:Z
    .restart local v1       #hasRemovedCurrentLabel:Z
    :cond_3
    move v2, v3

    .line 1089
    goto :goto_1
.end method

.method public static isConversationBeingRemoved(Lcom/google/android/gm/provider/Label;ZLjava/lang/String;)Z
    .locals 2
    .parameter "label"
    .parameter "add"
    .parameter "displayedLabel"

    .prologue
    .line 1076
    new-instance v0, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 1077
    .local v0, operation:Lcom/google/android/gm/LabelOperations;
    invoke-static {v0, p2}, Lcom/google/android/gm/Utils;->isConversationBeingRemoved(Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isLandscape(Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 1511
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStringEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "test"

    .prologue
    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1708
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 1709
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1710
    new-instance v0, Lcom/google/android/gm/Utils$AddrSpec;

    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gm/Utils$AddrSpec;-><init>(Ljava/lang/String;)V

    .line 1711
    .local v0, addr:Lcom/google/android/gm/Utils$AddrSpec;
    array-length v2, v1

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/Utils$AddrSpec;->validateLocalPart()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/Utils$AddrSpec;->validateDomain()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 1714
    .end local v0           #addr:Lcom/google/android/gm/Utils$AddrSpec;
    :goto_0
    return v2

    .restart local v0       #addr:Lcom/google/android/gm/Utils$AddrSpec;
    :cond_0
    move v2, v3

    .line 1711
    goto :goto_0

    .end local v0           #addr:Lcom/google/android/gm/Utils$AddrSpec;
    :cond_1
    move v2, v3

    .line 1714
    goto :goto_0
.end method

.method public static isValidGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 1194
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1197
    .local v0, accounts:[Landroid/accounts/Account;
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/google/android/gm/Utils;->containsAccount(Landroid/accounts/Account;[Landroid/accounts/Account;)Z

    move-result v1

    return v1
.end method

.method public static final jsEscape(Ljava/lang/CharSequence;Ljava/lang/Appendable;)V
    .locals 5
    .parameter "s"
    .parameter "out"

    .prologue
    .line 281
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .local v3, length:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 282
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 283
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 321
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 281
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :sswitch_0
    const-string v4, "\\x27"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 325
    .end local v0           #c:C
    .end local v3           #length:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 327
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 288
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #c:C
    .restart local v3       #length:I
    :sswitch_1
    :try_start_1
    const-string v4, "\\x22"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 291
    :sswitch_2
    const-string v4, "\\x3c"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 294
    :sswitch_3
    const-string v4, "\\x3d"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 297
    :sswitch_4
    const-string v4, "\\x3e"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 300
    :sswitch_5
    const-string v4, "\\x26"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 303
    :sswitch_6
    const-string v4, "\\b"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 306
    :sswitch_7
    const-string v4, "\\t"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 309
    :sswitch_8
    const-string v4, "\\n"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 312
    :sswitch_9
    const-string v4, "\\f"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 315
    :sswitch_a
    const-string v4, "\\r"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 318
    :sswitch_b
    const-string v4, "\\\\"

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 329
    .end local v0           #c:C
    :cond_0
    return-void

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0x22 -> :sswitch_1
        0x26 -> :sswitch_5
        0x27 -> :sswitch_0
        0x3c -> :sswitch_2
        0x3d -> :sswitch_3
        0x3e -> :sswitch_4
        0x5c -> :sswitch_b
    .end sparse-switch
.end method

.method public static mailSearchQueryForIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 156
    const-string v1, "query"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, query:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static makeQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "query"
    .parameter "label"

    .prologue
    .line 1461
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 1467
    :goto_0
    return-object v0

    .line 1464
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1467
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static markConversationsVisible(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V
    .locals 3
    .parameter "cursor"
    .parameter "hasFocus"

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v0

    .line 1532
    .local v0, status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->COMPLETE:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v0, v1, :cond_1

    .line 1533
    :cond_0
    new-instance v1, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;-><init>(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1535
    :cond_1
    return-void
.end method

.method private static openUrl(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    :cond_0
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid url in Utils.openUrl(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :goto_0
    return-void

    .line 1298
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1299
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static replaceLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1279
    const-string v0, "%locale%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1282
    const-string v1, "%locale%"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static restrictWebView(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "webView"

    .prologue
    const/4 v2, 0x0

    .line 1127
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1128
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1129
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 1130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1131
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1132
    return-void
.end method

.method public static setNewEmailIndicator(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 501
    const-string v0, "count"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 502
    .local v6, unseenCount:I
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, account:Ljava/lang/String;
    const/4 v5, 0x0

    .line 506
    .local v5, ignoreUnobtrusiveSetting:Z
    const/4 v3, 0x0

    .line 507
    .local v3, getAttention:Z
    if-nez v6, :cond_1

    .line 508
    sget-object v0, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :goto_0
    const-string v0, "tagLabel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, tagLabel:Ljava/lang/String;
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New email:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-static {v7}, Lcom/google/android/gm/Utils;->createNotificationString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " mapSize:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " getAttention:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 529
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/Utils;->validateNotifications(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 531
    return-void

    .line 510
    .end local v4           #tagLabel:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 514
    const/4 v5, 0x1

    .line 516
    :cond_2
    sget-object v0, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v0, "getAttention"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public static setTitleWithAccount(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1157
    if-eqz p1, :cond_0

    .line 1158
    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1159
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    :cond_0
    if-eqz p2, :cond_1

    .line 1162
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1163
    const v0, -0x9090a

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1164
    const v0, 0x3dcccccd

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, -0x100

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1165
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    :cond_1
    return-void
.end method

.method public static shortcutActivityEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 1437
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1440
    .local v0, pm:Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/google/android/gm/Utils;->GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showFeedback(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 1354
    const-string v0, "http://www.google.com/m/survey/mail_ca?hl=%locale%"

    invoke-static {v0}, Lcom/google/android/gm/Utils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1356
    return-void
.end method

.method public static showHelp(Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)V
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 1345
    invoke-interface {p1}, Lcom/google/android/gm/MenuHandler$HelpCallback;->getHelpContext()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1346
    return-void
.end method

.method public static showHelp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_context_sensitive_help_url"

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    if-nez v0, :cond_0

    .line 1315
    const-string v0, "http://www.google.com/support/mobile/?hl=%locale%"

    .line 1317
    :cond_0
    invoke-static {v0}, Lcom/google/android/gm/Utils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1320
    if-eqz p1, :cond_1

    .line 1321
    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1326
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1327
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1329
    const-string v2, "version"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1336
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1337
    return-void

    .line 1331
    :catch_0
    move-exception v1

    .line 1332
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error finding package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showSettings(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1364
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/GmailPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1365
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1366
    return-void
.end method

.method private static startShortcutEnablerService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1400
    const-class v1, Lcom/google/android/gm/ShortcutEnablerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1401
    const-string v1, "account-name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1402
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1403
    return-void
.end method

.method public static startSync(Ljava/lang/String;)V
    .locals 3
    .parameter "accountName"

    .prologue
    const/4 v2, 0x1

    .line 867
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 868
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 872
    const-string v1, "do_not_retry"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 873
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 875
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gmail-ls"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 878
    return-void
.end method

.method private static tokenize(Ljava/lang/String;)[Landroid/text/util/Rfc822Token;
    .locals 1
    .parameter "address"

    .prologue
    .line 809
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    return-object v0
.end method

.method private static updateSendErrorNotificationMap(Ljava/lang/String;I)V
    .locals 2
    .parameter "account"
    .parameter "notificationId"

    .prologue
    .line 1661
    sget-object v1, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1662
    .local v0, activeNotifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 1663
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #activeNotifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    .restart local v0       #activeNotifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    sget-object v1, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    return-void
.end method

.method public static useTabletUI(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 1502
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateNotifications(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 9
    .parameter "context"
    .parameter "intent"
    .parameter "notificationAccount"
    .parameter "getAttention"
    .parameter "tagLabel"
    .parameter "ignoreUnobtrusiveSetting"

    .prologue
    .line 540
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 543
    .local v6, nm:Landroid/app/NotificationManager;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v7

    .line 545
    .local v7, persistence:Lcom/google/android/gm/Persistence;
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validating Notification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/android/gm/Utils;->createNotificationString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mapSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tagLabel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_2

    .end local p4
    :goto_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, " getAttention:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    sget-object p4, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    sget-object p4, Lcom/google/android/gm/Utils;->mActiveNotificationMap:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    move v5, p4

    .line 558
    .local v5, unseenCount:I
    :goto_1
    if-nez v5, :cond_4

    .line 559
    invoke-static {p2}, Lcom/google/android/gm/Utils;->getNotificationId(Ljava/lang/String;)I

    move-result p0

    .end local p0
    invoke-virtual {v6, p0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 655
    .end local p2
    .end local p3
    .end local p5
    :cond_1
    :goto_2
    return-void

    .line 546
    .end local v5           #unseenCount:I
    .restart local p0
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_2
    const-string p4, "null label"

    goto :goto_0

    .line 554
    .end local p4
    :cond_3
    const/4 p4, 0x0

    move v5, p4

    goto :goto_1

    .line 563
    .restart local v5       #unseenCount:I
    :cond_4
    const/4 v0, 0x0

    .line 564
    .local v0, gmail:Lcom/google/android/gm/provider/Gmail;
    const/4 v2, 0x0

    .line 568
    .local v2, conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    const/high16 p4, 0x400

    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 573
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    .local v1, notification:Landroid/app/Notification$Builder;
    const p4, 0x7f0200a0

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 575
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 580
    const/4 p4, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gm.intent.CLEAR_ALL_NEW_MAIL_NOTIFICATIONS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p0, p4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 582
    if-nez p5, :cond_5

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object p4

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gm/Persistence;->getUnobtrusive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 588
    const/4 p4, 0x1

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 590
    :cond_5
    const/4 p4, 0x0

    .line 591
    .local p4, eventInfoConfigured:Z
    const-string p5, "notificationLabel"

    .end local p5
    invoke-virtual {p1, p5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 592
    .local p5, label:Ljava/lang/String;
    if-nez p5, :cond_11

    .line 593
    invoke-static {p0, p2}, Lcom/google/android/gm/Utils;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    move-object v3, p5

    .line 595
    .end local p5           #label:Ljava/lang/String;
    .local v3, label:Ljava/lang/String;
    :goto_3
    if-lez v5, :cond_10

    .line 597
    const/4 p5, 0x0

    :try_start_0
    invoke-static {p2, p5}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object p1

    .line 599
    const-string p5, "from-notification"

    const/4 v4, 0x1

    invoke-virtual {p1, p5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    invoke-static {p5}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p5

    .line 601
    .end local v0           #gmail:Lcom/google/android/gm/provider/Gmail;
    .local p5, gmail:Lcom/google/android/gm/provider/Gmail;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;->NO:Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;

    .end local v3           #label:Ljava/lang/String;
    invoke-virtual {p5, p2, v0, v3}, Lcom/google/android/gm/provider/Gmail;->getDetachedConversationCursorForQuery(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v2

    .line 605
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 606
    invoke-static {p2, v2}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object p1

    .line 607
    const/4 p4, -0x1

    const/4 v0, 0x0

    invoke-static {p0, p4, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .end local p4           #eventInfoConfigured:Z
    move-result-object v3

    .local v3, clickIntent:Landroid/app/PendingIntent;
    move-object v0, p0

    move-object v4, p2

    .line 608
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/Utils;->configureLatestEventInfoFromConversation(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/google/android/gm/provider/Gmail$ConversationCursor;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 610
    const/4 p4, 0x1

    .line 613
    .end local v3           #clickIntent:Landroid/app/PendingIntent;
    .restart local p4       #eventInfoConfigured:Z
    :cond_6
    if-eqz v2, :cond_f

    .line 614
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->close()V

    move v8, p4

    .end local p4           #eventInfoConfigured:Z
    .local v8, eventInfoConfigured:Z
    move-object p4, p5

    .end local p5           #gmail:Lcom/google/android/gm/provider/Gmail;
    .local p4, gmail:Lcom/google/android/gm/provider/Gmail;
    move p5, v8

    .line 618
    .end local v8           #eventInfoConfigured:Z
    .local p5, eventInfoConfigured:Z
    :goto_4
    const-string p4, "Gmail"

    .end local p4           #gmail:Lcom/google/android/gm/provider/Gmail;
    const/4 v0, 0x3

    invoke-static {p4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_7

    if-eqz p2, :cond_7

    .line 619
    const-string p4, "Gmail"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account:"

    .end local v2           #conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vibrateWhen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, p0, p2}, Lcom/google/android/gm/Persistence;->getVibrateWhen(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_7
    const/4 p4, 0x0

    .line 626
    .local p4, defaults:I
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    .line 627
    invoke-virtual {v7, p0, p2}, Lcom/google/android/gm/Persistence;->getEnableNotifications(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    .end local p3
    if-eqz p3, :cond_e

    .line 628
    invoke-virtual {v7, p0, p2}, Lcom/google/android/gm/Persistence;->getVibrateWhen(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, vibrateWhen:Ljava/lang/String;
    const-string p3, "always"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 630
    .local v0, vibrateAlways:Z
    const-string p3, "silent"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 631
    .local v2, vibrateSilent:Z
    const-string p3, "audio"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    .line 633
    .local p3, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p3

    .end local p3           #audioManager:Landroid/media/AudioManager;
    const/4 v4, 0x1

    if-ne p3, v4, :cond_b

    const/4 p3, 0x1

    .line 636
    .local p3, nowSilent:Z
    :goto_5
    if-nez v0, :cond_8

    if-eqz v2, :cond_d

    if-eqz p3, :cond_d

    .line 637
    :cond_8
    or-int/lit8 p3, p4, 0x2

    .line 639
    .end local p4           #defaults:I
    .local p3, defaults:I
    :goto_6
    invoke-virtual {v7, p0, p2}, Lcom/google/android/gm/Persistence;->getRingtone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 640
    .local p0, ringtoneUri:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_c

    const/4 p4, 0x0

    :goto_7
    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 642
    const-string p4, "Gmail"

    const/4 v0, 0x3

    invoke-static {p4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v0           #vibrateAlways:Z
    move-result p4

    if-eqz p4, :cond_9

    .line 643
    const-string p4, "Gmail"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New email in "

    .end local v2           #vibrateSilent:Z
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vibrateWhen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", playing notification: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ringtoneUri:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move p0, p3

    .line 650
    .end local v3           #vibrateWhen:Ljava/lang/String;
    .end local p3           #defaults:I
    .local p0, defaults:I
    :goto_8
    if-lez v5, :cond_1

    if-eqz p5, :cond_1

    .line 651
    or-int/lit8 p0, p0, 0x4

    .line 652
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 653
    invoke-static {p2}, Lcom/google/android/gm/Utils;->getNotificationId(Ljava/lang/String;)I

    move-result p2

    .end local p2
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {v6, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_2

    .line 613
    .end local p5           #eventInfoConfigured:Z
    .local v0, gmail:Lcom/google/android/gm/provider/Gmail;
    .local v2, conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .local v3, label:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p2
    .local p3, getAttention:Z
    .local p4, eventInfoConfigured:Z
    :catchall_0
    move-exception p0

    move-object p2, p0

    move-object p0, v0

    .end local v0           #gmail:Lcom/google/android/gm/provider/Gmail;
    .end local v3           #label:Ljava/lang/String;
    .end local p2
    .end local p4           #eventInfoConfigured:Z
    .local p0, gmail:Lcom/google/android/gm/provider/Gmail;
    :goto_9
    if-eqz v2, :cond_a

    .line 614
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->close()V

    :cond_a
    throw p2

    .line 633
    .end local p3           #getAttention:Z
    .local v0, vibrateAlways:Z
    .local v2, vibrateSilent:Z
    .local v3, vibrateWhen:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p2
    .local p4, defaults:I
    .restart local p5       #eventInfoConfigured:Z
    :cond_b
    const/4 p3, 0x0

    goto :goto_5

    .line 640
    .end local p4           #defaults:I
    .local p0, ringtoneUri:Ljava/lang/String;
    .local p3, defaults:I
    :cond_c
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    goto :goto_7

    .line 613
    .end local v0           #vibrateAlways:Z
    .end local v3           #vibrateWhen:Ljava/lang/String;
    .local v2, conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .local p0, context:Landroid/content/Context;
    .local p3, getAttention:Z
    .local p5, gmail:Lcom/google/android/gm/provider/Gmail;
    :catchall_1
    move-exception p0

    move-object p2, p0

    move-object p0, p5

    .end local p5           #gmail:Lcom/google/android/gm/provider/Gmail;
    .local p0, gmail:Lcom/google/android/gm/provider/Gmail;
    goto :goto_9

    .restart local v0       #vibrateAlways:Z
    .local v2, vibrateSilent:Z
    .restart local v3       #vibrateWhen:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p3, nowSilent:Z
    .restart local p4       #defaults:I
    .local p5, eventInfoConfigured:Z
    :cond_d
    move p3, p4

    .end local p4           #defaults:I
    .local p3, defaults:I
    goto :goto_6

    .end local v0           #vibrateAlways:Z
    .end local v2           #vibrateSilent:Z
    .end local v3           #vibrateWhen:Ljava/lang/String;
    .end local p3           #defaults:I
    .restart local p4       #defaults:I
    :cond_e
    move p0, p4

    .end local p4           #defaults:I
    .local p0, defaults:I
    goto :goto_8

    .local v2, conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .local p0, context:Landroid/content/Context;
    .local p3, getAttention:Z
    .local p4, eventInfoConfigured:Z
    .local p5, gmail:Lcom/google/android/gm/provider/Gmail;
    :cond_f
    move v8, p4

    .end local p4           #eventInfoConfigured:Z
    .restart local v8       #eventInfoConfigured:Z
    move-object p4, p5

    .end local p5           #gmail:Lcom/google/android/gm/provider/Gmail;
    .local p4, gmail:Lcom/google/android/gm/provider/Gmail;
    move p5, v8

    .end local v8           #eventInfoConfigured:Z
    .local p5, eventInfoConfigured:Z
    goto/16 :goto_4

    .end local p5           #eventInfoConfigured:Z
    .local v0, gmail:Lcom/google/android/gm/provider/Gmail;
    .local v3, label:Ljava/lang/String;
    .local p4, eventInfoConfigured:Z
    :cond_10
    move p5, p4

    .end local p4           #eventInfoConfigured:Z
    .restart local p5       #eventInfoConfigured:Z
    move-object p4, v0

    .end local v0           #gmail:Lcom/google/android/gm/provider/Gmail;
    .local p4, gmail:Lcom/google/android/gm/provider/Gmail;
    goto/16 :goto_4

    .end local v3           #label:Ljava/lang/String;
    .restart local v0       #gmail:Lcom/google/android/gm/provider/Gmail;
    .local p4, eventInfoConfigured:Z
    .local p5, label:Ljava/lang/String;
    :cond_11
    move-object v3, p5

    .end local p5           #label:Ljava/lang/String;
    .restart local v3       #label:Ljava/lang/String;
    goto/16 :goto_3
.end method
