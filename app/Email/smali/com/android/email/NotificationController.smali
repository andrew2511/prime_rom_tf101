.class public Lcom/android/email/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# static fields
.field private static sInstance:Lcom/android/email/NotificationController;

.field private static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mClock:Lcom/android/email/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mGenericSenderIcon:Landroid/graphics/Bitmap;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/email/NotificationController;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/email/Clock;)V
    .locals 2
    .parameter "context"
    .parameter "clock"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    .line 69
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 71
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/email/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    .line 74
    iput-object p2, p0, Lcom/android/email/NotificationController;->mClock:Lcom/android/email/Clock;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/NotificationController;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    const-class v0, Lcom/android/email/NotificationController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/android/email/NotificationController;

    sget-object v2, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-direct {v1, p0, v2}, Lcom/android/email/NotificationController;-><init>(Landroid/content/Context;Lcom/android/email/Clock;)V

    sput-object v1, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    .line 82
    :cond_0
    sget-object v1, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLoginFailedNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 347
    const/high16 v0, 0x2000

    long-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getNewMessageNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 149
    const-wide/32 v0, 0x10000000

    add-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 194
    .local v1, sender:Lcom/android/emailcommon/mail/Address;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 201
    :goto_0
    return-object v2

    .line 197
    :cond_0
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    .line 199
    goto :goto_0

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/email/activity/ContactStatusLoader;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static rewriteForPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "original"

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-object p0

    .line 216
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 217
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 218
    const-string v1, "email-dummy"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 219
    sget-object v1, Lcom/android/email/NotificationController;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 222
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public cancelLoginFailedNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 368
    return-void
.end method

.method public cancelNewMessageNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 158
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/email/NotificationController$1;

    iget-object v1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/email/NotificationController$1;-><init>(Lcom/android/email/NotificationController;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/NotificationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public cancelNotification(I)V
    .locals 1
    .parameter "notificationId"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 142
    return-void
.end method

.method createNewMessageNotification(JI)Landroid/app/Notification;
    .locals 12
    .parameter "accountId"
    .parameter "unseenMessageCount"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 233
    iget-object v8, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 234
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    move-object v8, v11

    .line 269
    :goto_0
    return-object v8

    .line 238
    :cond_0
    iget-object v8, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->getLatestIncomingMessage(Landroid/content/Context;Ljava/lang/Long;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 239
    .local v3, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v3, :cond_1

    move-object v8, v11

    .line 240
    goto :goto_0

    .line 243
    :cond_1
    iget-object v8, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, senderName:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 245
    const-string v5, ""

    .line 247
    :cond_2
    iget-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 248
    .local v7, subject:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/email/NotificationController;->getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 251
    .local v6, senderPhoto:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v9}, Lcom/android/email/NotificationController;->rewriteForPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v10, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 255
    .local v2, contentIntent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f02008e

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/NotificationController;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v9}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    if-eqz v6, :cond_4

    move-object v9, v6

    :goto_1
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/android/email/NotificationController;->getNotificationTitle(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 262
    .local v1, builder:Landroid/app/Notification$Builder;
    const/4 v8, 0x1

    if-le p3, v8, :cond_3

    .line 263
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 266
    :cond_3
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 268
    .local v4, notification:Landroid/app/Notification;
    invoke-virtual {p0, v4, v0}, Lcom/android/email/NotificationController;->setupNotificationSoundAndVibrationFromAccount(Landroid/app/Notification;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    move-object v8, v4

    .line 269
    goto :goto_0

    .line 255
    .end local v1           #builder:Landroid/app/Notification$Builder;
    .end local v4           #notification:Landroid/app/Notification;
    :cond_4
    iget-object v9, p0, Lcom/android/email/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method getNotificationTitle(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 8
    .parameter "sender"
    .parameter "receiverDisplayName"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 280
    iget-object v4, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 281
    .local v0, numAccounts:I
    if-ne v0, v6, :cond_0

    .line 282
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 296
    :goto_0
    return-object v4

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004b

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, toAcccount:Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 292
    .local v2, senderToAccount:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0007

    invoke-direct {v1, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 294
    .local v1, secondarySpan:Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v4, v2

    .line 296
    goto :goto_0
.end method

.method getRingerMode()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/email/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method isRingerModeSilent()Z
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/email/NotificationController;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 16
    .parameter "account"
    .parameter "ticker"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "intent"
    .parameter "notificationId"

    .prologue
    .line 100
    const/4 v8, 0x0

    .line 101
    .local v8, pending:Landroid/app/PendingIntent;
    if-eqz p5, :cond_0

    .line 102
    invoke-static/range {p5 .. p5}, Lcom/android/email/NotificationController;->rewriteForPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p5

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-object v13, v0

    const/4 v14, 0x0

    const/high16 v15, 0x800

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p5

    move v3, v15

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 108
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, ringtoneString:Ljava/lang/String;
    if-nez v10, :cond_3

    const/4 v13, 0x0

    move-object v9, v13

    .line 110
    .local v9, ringTone:Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    move v13, v0

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    move v11, v13

    .line 111
    .local v11, vibrate:Z
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    move v13, v0

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    move v12, v13

    .line 114
    .local v12, vibrateWhenSilent:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    const/4 v13, 0x1

    move v7, v13

    .line 117
    .local v7, nowSilent:Z
    :goto_3
    const/4 v4, 0x4

    .line 118
    .local v4, defaults:I
    if-nez v11, :cond_1

    if-eqz v12, :cond_2

    if-eqz v7, :cond_2

    .line 119
    :cond_1
    or-int/lit8 v4, v4, 0x2

    .line 123
    :cond_2
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-direct {v5, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v5, nb:Landroid/app/Notification$Builder;
    const v13, 0x7f02008e

    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 125
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 126
    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 127
    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 128
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 129
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 130
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 131
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 133
    .local v6, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p6

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 134
    return-void

    .line 109
    .end local v4           #defaults:I
    .end local v5           #nb:Landroid/app/Notification$Builder;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #nowSilent:Z
    .end local v9           #ringTone:Landroid/net/Uri;
    .end local v11           #vibrate:Z
    .end local v12           #vibrateWhenSilent:Z
    :cond_3
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object v9, v13

    goto :goto_0

    .line 110
    .restart local v9       #ringTone:Landroid/net/Uri;
    :cond_4
    const/4 v13, 0x0

    move v11, v13

    goto :goto_1

    .line 111
    .restart local v11       #vibrate:Z
    :cond_5
    const/4 v13, 0x0

    move v12, v13

    goto :goto_2

    .line 114
    .restart local v12       #vibrateWhenSilent:Z
    :cond_6
    const/4 v13, 0x0

    move v7, v13

    goto :goto_3
.end method

.method setupNotificationSoundAndVibrationFromAccount(Landroid/app/Notification;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7
    .parameter "notification"
    .parameter "account"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 311
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 312
    .local v0, flags:I
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 313
    .local v1, ringtoneUri:Ljava/lang/String;
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_2

    move v2, v6

    .line 314
    .local v2, vibrate:Z
    :goto_0
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_3

    move v3, v6

    .line 316
    .local v3, vibrateWhenSilent:Z
    :goto_1
    if-nez v1, :cond_4

    const/4 v4, 0x0

    :goto_2
    iput-object v4, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 318
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/email/NotificationController;->isRingerModeSilent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    :cond_0
    iget v4, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Landroid/app/Notification;->defaults:I

    .line 323
    :cond_1
    iget v4, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/app/Notification;->flags:I

    .line 324
    iget v4, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p1, Landroid/app/Notification;->defaults:I

    .line 325
    return-void

    .end local v2           #vibrate:Z
    .end local v3           #vibrateWhenSilent:Z
    :cond_2
    move v2, v5

    .line 313
    goto :goto_0

    .restart local v2       #vibrate:Z
    :cond_3
    move v3, v5

    .line 314
    goto :goto_1

    .line 316
    .restart local v3       #vibrateWhenSilent:Z
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2
.end method

.method public showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 7
    .parameter "attachment"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 334
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800ad

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ae

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showLoginFailedNotification(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 356
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800af

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800b0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v0, p1, p2, v5}, Lcom/android/email/activity/setup/AccountSettingsXL;->createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showNewMessageNotification(JII)V
    .locals 1
    .parameter "accountId"
    .parameter "unseenMessageCount"
    .parameter "justFetchedCount"

    .prologue
    .line 175
    new-instance v0, Lcom/android/email/NotificationController$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/NotificationController$2;-><init>(Lcom/android/email/NotificationController;JI)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method
