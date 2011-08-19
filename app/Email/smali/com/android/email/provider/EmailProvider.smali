.class public Lcom/android/email/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/EmailProvider$DatabaseHelper;,
        Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

.field private static final CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

.field public static final INTEGRITY_CHECK_URI:Landroid/net/Uri;

.field private static final ORPHANS_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final sCacheAccount:Lcom/android/email/provider/ContentCache;

.field private static final sCacheHostAuth:Lcom/android/email/provider/ContentCache;

.field static final sCacheMailbox:Lcom/android/email/provider/ContentCache;

.field private static final sCacheMessage:Lcom/android/email/provider/ContentCache;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    const-string v0, "content://com.android.email.provider/integrityCheck"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    .line 80
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mailboxKey"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v8}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheAccount:Lcom/android/email/provider/ContentCache;

    .line 90
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    .line 92
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Mailbox"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    .line 94
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Message"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v7}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    .line 170
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Account"

    aput-object v1, v0, v4

    const-string v1, "Mailbox"

    aput-object v1, v0, v5

    const-string v1, "Message"

    aput-object v1, v0, v6

    const-string v1, "Attachment"

    aput-object v1, v0, v7

    const-string v1, "HostAuth"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "Message_Updates"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Message_Deletes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 182
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/email/provider/ContentCache;

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheAccount:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v6

    const/4 v1, 0x0

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    .line 192
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 236
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 239
    const-string v1, "com.android.email.provider"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    const-string v1, "com.android.email.provider"

    const-string v2, "account/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount/#"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox"

    const/16 v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox/#"

    const/16 v3, 0x1001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    const-string v1, "com.android.email.provider"

    const-string v2, "message"

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    const-string v1, "com.android.email.provider"

    const-string v2, "message/#"

    const/16 v3, 0x2001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment"

    const/16 v3, 0x3000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/#"

    const/16 v3, 0x3001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/message/#"

    const/16 v3, 0x3002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    const-string v1, "com.android.email.provider"

    const-string v2, "body"

    const/16 v3, 0x7000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    const-string v1, "com.android.email.provider"

    const-string v2, "body/#"

    const/16 v3, 0x7001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth"

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth/#"

    const/16 v3, 0x4001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxIdAddToField/#"

    const/16 v3, 0x1002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    const-string v1, "com.android.email.provider"

    const-string v2, "accountIdAddToField/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    const-string v1, "com.android.email.provider"

    const-string v2, "syncedMessage/#"

    const/16 v3, 0x2002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage"

    const/16 v3, 0x6000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage/#"

    const/16 v3, 0x6001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage"

    const/16 v3, 0x5000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage/#"

    const/16 v3, 0x5001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    .line 311
    sget-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    const-string v1, "newMessageCount"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 766
    return-void
.end method

.method static createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 488
    const-string v0, " (_id integer primary key autoincrement, displayName text, emailAddress text, syncKey text, syncLookback integer, syncInterval text, hostAuthKeyRecv integer, hostAuthKeySend integer, flags integer, isDefault integer, compatibilityUuid text, senderName text, ringtoneUri text, protocolVersion text, newMessageCount integer, securityFlags integer, securitySyncKey text, signature text );"

    .line 507
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 509
    const-string v1, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method static createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 587
    const-string v0, " (_id integer primary key autoincrement, fileName text, mimeType text, size integer, contentId text, contentUri text, messageKey integer, location text, encoding text, content text, flags integer, content_bytes blob, accountKey integer);"

    .line 601
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Attachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    const-string v1, "Attachment"

    const-string v2, "messageKey"

    invoke-static {v1, v2}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method static createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 614
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, htmlContent text, textContent text, htmlReply text, textReply text, sourceMessageKey text, introText text);"

    .line 623
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    const-string v1, "Body"

    const-string v2, "messageKey"

    invoke-static {v1, v2}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method static createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 528
    const-string v0, " (_id integer primary key autoincrement, protocol text, address text, port integer, flags integer, login text, password text, domain text, accountKey integer);"

    .line 538
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table HostAuth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method static createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"
    .parameter "columnName"

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 550
    const-string v0, " (_id integer primary key autoincrement, displayName text, serverId text, parentServerId text, parentKey integer, accountKey integer, type integer, delimiter integer, syncKey text, syncLookback integer, syncInterval integer, syncTime integer, unreadCount integer, flagVisible integer, flags integer, visibleLimit integer, syncStatus text, messageCount integer not null default 0);"

    .line 569
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 570
    const-string v1, "create index mailbox_serverId on Mailbox (serverId)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 572
    const-string v1, "create index mailbox_accountKey on Mailbox (accountKey)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 575
    const-string v1, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method static createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    .line 343
    const-string v7, "displayName text, timeStamp integer, subject text, flagRead integer, flagLoaded integer, flagFavorite integer, flagAttachment integer, flags integer, clientId integer, messageId text, mailboxKey integer, accountKey integer, fromList text, toList text, ccList text, bccList text, replyToList text, meetingInfo text, snippet text);"

    .line 366
    .local v7, messageColumns:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, createString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (_id integer unique, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, altCreateString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create table Message"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create table Message_Updates"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create table Message_Deletes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 384
    const/4 v8, 0x5

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "timeStamp"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "flagRead"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "flagLoaded"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "mailboxKey"

    aput-object v9, v5, v8

    const/4 v8, 0x4

    const-string v9, "syncServerId"

    aput-object v9, v5, v8

    .line 392
    .local v5, indexColumns:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v1, v4

    .line 393
    .local v2, columnName:Ljava/lang/String;
    const-string v8, "Message"

    invoke-static {v8, v2}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 392
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    .end local v2           #columnName:Ljava/lang/String;
    :cond_0
    const-string v8, "create trigger message_delete before delete on Message begin delete from Attachment  where messageKey=old._id; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    const-string v8, "create trigger unread_message_insert before insert on Message when NEW.flagRead=0 begin update Mailbox set unreadCount=unreadCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 418
    const-string v8, "create trigger unread_message_delete before delete on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 426
    const-string v8, "create trigger unread_message_move before update of mailboxKey on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; update Mailbox set unreadCount=unreadCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 438
    const-string v8, "create trigger unread_message_read before update of flagRead on Message when OLD.flagRead!=NEW.flagRead begin update Mailbox set unreadCount=unreadCount+ case OLD.flagRead when 0 then -1 else 1 end  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    const-string v8, "create trigger message_count_message_insert after insert on Message begin update Mailbox set messageCount=messageCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 458
    const-string v8, "create trigger message_count_message_delete after delete on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 466
    const-string v8, "create trigger message_count_message_move after update of mailboxKey on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; update Mailbox set messageCount=messageCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method static deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 22
    .parameter "database"
    .parameter "tableName"

    .prologue
    .line 698
    if-eqz p0, :cond_0

    .line 700
    sget-object v8, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 703
    .local v16, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 740
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 743
    .end local v16           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 704
    .restart local v16       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v18, foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v21, notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v17, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/String;

    .line 708
    .local v12, bindArray:[Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 711
    const/4 v8, 0x1

    move-object/from16 v0, v16

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 713
    .local v19, mailboxId:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 714
    const/4 v8, 0x0

    move-object/from16 v0, v16

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 740
    .end local v12           #bindArray:[Ljava/lang/String;
    .end local v17           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18           #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19           #mailboxId:J
    .end local v21           #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local p0
    :catchall_0
    move-exception p0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw p0

    .line 716
    .restart local v12       #bindArray:[Ljava/lang/String;
    .restart local v17       #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v18       #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19       #mailboxId:J
    .restart local v21       #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p0
    :cond_3
    :try_start_2
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 717
    const/4 v8, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v8

    .line 718
    const-string v9, "Mailbox"

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v11, "_id=?"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 722
    .local v8, boxCursor:Landroid/database/Cursor;
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 723
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 730
    :goto_2
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 726
    :cond_4
    :try_start_5
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    const/4 v9, 0x0

    move-object/from16 v0, v16

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 730
    :catchall_1
    move-exception p0

    .end local p0
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw p0

    .line 735
    .end local v8           #boxCursor:Landroid/database/Cursor;
    .end local v19           #mailboxId:J
    .restart local p0
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 736
    .local v9, messageId:J
    const/4 v11, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .end local v9           #messageId:J
    aput-object v9, v12, v11

    .line 737
    const-string v9, "_id=?"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 740
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "methodName"

    .prologue
    .line 321
    sget-object v1, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 322
    .local v0, match:I
    if-gez v0, :cond_0

    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_0
    return v0
.end method

.method static getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .parameter "context"

    .prologue
    .line 680
    new-instance v0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    new-instance v1, Lcom/android/email/provider/EmailProvider;

    invoke-direct {v1}, Lcom/android/email/provider/EmailProvider;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "EmailProvider.db"

    invoke-direct {v0, v1, p0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    .line 681
    .local v0, helper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;
    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method static recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1608
    const-string v0, "update Mailbox set messageCount= (select count(*) from Message where mailboxKey = Mailbox._id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1612
    return-void
.end method

.method static resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 521
    :try_start_0
    const-string v0, "drop table Account"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 525
    return-void

    .line 522
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 607
    :try_start_0
    const-string v0, "drop table Attachment"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 611
    return-void

    .line 608
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 543
    :try_start_0
    const-string v0, "drop table HostAuth"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 547
    return-void

    .line 544
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 580
    :try_start_0
    const-string v0, "drop table Mailbox"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 584
    return-void

    .line 581
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 479
    :try_start_0
    const-string v0, "drop table Message"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 480
    const-string v0, "drop table Message_Updates"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    const-string v0, "drop table Message_Deletes"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 485
    return-void

    .line 482
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static upgradeBodyTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v1, 0x5

    .line 628
    if-ge p1, v1, :cond_1

    .line 630
    :try_start_0
    const-string v1, "drop table Body"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 631
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    if-ne p1, v1, :cond_0

    .line 636
    :try_start_1
    const-string v1, "alter table Body add introText text"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    :goto_1
    const/4 p1, 0x6

    goto :goto_0

    .line 638
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 640
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProviderBody.db from v5 to v6"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 632
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "where"
    .parameter "selection"

    .prologue
    .line 1406
    if-nez p2, :cond_0

    move-object v1, p1

    .line 1414
    :goto_0
    return-object v1

    .line 1409
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "selection"

    .prologue
    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1385
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    if-eqz p2, :cond_0

    .line 1388
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1392
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1592
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1593
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1594
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1596
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 1597
    .local v2, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v2

    .end local v2           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public checkDatabases()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1247
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 1248
    iput-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1250
    :cond_0
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 1251
    iput-object v3, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1254
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EmailProvider.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1255
    .local v1, databaseFile:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EmailProviderBody.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1258
    .local v0, bodyFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1259
    const-string v2, "EmailProvider"

    const-string v3, "Deleting orphaned EmailProvider database..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1265
    :cond_2
    :goto_0
    return-void

    .line 1261
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1262
    const-string v2, "EmailProvider"

    const-string v3, "Deleting orphaned EmailProviderBody database..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 956
    const-string v15, "delete"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v9

    .line 957
    .local v9, match:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 962
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 963
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v13, v9, 0xc

    .line 964
    .local v13, table:I
    const-string v8, "0"

    .line 965
    .local v8, id:Ljava/lang/String;
    const/4 v10, 0x0

    .line 966
    .local v10, messageDeletion:Z
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 968
    .local v11, resolver:Landroid/content/ContentResolver;
    sget-object v15, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v4, v15, v13

    .line 969
    .local v4, cache:Lcom/android/email/provider/ContentCache;
    sget-object v15, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v14, v15, v13

    .line 970
    .local v14, tableName:Ljava/lang/String;
    const/4 v12, -0x1

    .line 973
    .local v12, result:I
    sparse-switch v9, :sswitch_data_0

    .line 995
    :goto_0
    sparse-switch v9, :sswitch_data_1

    .line 1076
    :try_start_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown URI "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    .end local v13           #table:I
    :catch_0
    move-exception v15

    move-object v7, v15

    .line 1089
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1090
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1092
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v15

    if-eqz v10, :cond_0

    .line 1093
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    throw v15

    .line 990
    .restart local v13       #table:I
    :sswitch_0
    const/4 v10, 0x1

    .line 991
    :try_start_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 992
    sget-object v15, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1005
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #table:I
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 1006
    const/16 v15, 0x2002

    if-ne v9, v15, :cond_1

    .line 1010
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "insert or replace into Message_Deletes select * from Message where _id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1011
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete from Message_Updates where _id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1013
    :cond_1
    if-eqz v4, :cond_2

    .line 1014
    invoke-virtual {v4, v8}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1017
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v6

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v12

    .line 1018
    if-eqz v4, :cond_3

    .line 1019
    sparse-switch v9, :sswitch_data_2

    .line 1038
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 1039
    :try_start_4
    invoke-virtual {v4, v8}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    .line 1078
    :cond_4
    :goto_2
    if-eqz v10, :cond_5

    .line 1079
    const/16 v15, 0x2001

    if-ne v9, v15, :cond_8

    .line 1081
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete from Body where messageKey="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1086
    :goto_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1092
    :cond_5
    if-eqz v10, :cond_6

    .line 1093
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1098
    :cond_6
    sget-object v15, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1099
    return v12

    .line 1023
    :sswitch_2
    :try_start_5
    sget-object v15, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v16, "Delete"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1024
    sget-object v15, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v16, "Delete"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1028
    :sswitch_3
    sget-object v15, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v16, "Delete"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1033
    :sswitch_4
    const-string v15, "Delete"

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 1038
    :catchall_1
    move-exception v15

    if-eqz v4, :cond_7

    .line 1039
    :try_start_6
    invoke-virtual {v4, v8}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    :cond_7
    throw v15

    .line 1045
    .restart local v13       #table:I
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #table:I
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 1046
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "messageKey="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v6

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1048
    goto/16 :goto_2

    .line 1058
    .restart local v13       #table:I
    :sswitch_6
    sparse-switch v9, :sswitch_data_3

    .line 1072
    :goto_4
    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1073
    goto/16 :goto_2

    .line 1061
    :sswitch_7
    sget-object v15, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v16, "Delete"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1062
    sget-object v15, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v16, "Delete"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1065
    :sswitch_8
    sget-object v15, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v16, "Delete"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1069
    :sswitch_9
    const-string v15, "Delete"

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_4

    .line 1084
    .end local v13           #table:I
    :cond_8
    const-string v15, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 973
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_0
    .end sparse-switch

    .line 995
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_1
        0x1000 -> :sswitch_6
        0x1001 -> :sswitch_1
        0x2000 -> :sswitch_6
        0x2001 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x3000 -> :sswitch_6
        0x3001 -> :sswitch_1
        0x3002 -> :sswitch_5
        0x4000 -> :sswitch_6
        0x4001 -> :sswitch_1
        0x5000 -> :sswitch_6
        0x5001 -> :sswitch_1
        0x6000 -> :sswitch_6
        0x6001 -> :sswitch_1
        0x7000 -> :sswitch_6
        0x7001 -> :sswitch_1
    .end sparse-switch

    .line 1019
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_2
        0x1001 -> :sswitch_3
        0x2001 -> :sswitch_4
        0x2002 -> :sswitch_4
        0x4001 -> :sswitch_4
    .end sparse-switch

    .line 1058
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_7
        0x1000 -> :sswitch_8
        0x2000 -> :sswitch_9
        0x4000 -> :sswitch_9
    .end sparse-switch
.end method

.method public declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6
    .parameter "context"

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 652
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :goto_0
    monitor-exit p0

    return-object v3

    .line 657
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 659
    new-instance v2, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    const-string v3, "EmailProvider.db"

    invoke-direct {v2, p0, p1, v3}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    .local v2, helper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;
    invoke-virtual {v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 661
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 662
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 663
    new-instance v1, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    const-string v3, "EmailProviderBody.db"

    invoke-direct {v1, p0, p1, v3}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    .line 664
    .local v1, bodyHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    invoke-virtual {v1}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 665
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 666
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 667
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, bodyFileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" as BodyDatabase"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 673
    .end local v0           #bodyFileName:Ljava/lang/String;
    .end local v1           #bodyHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    :cond_1
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Message_Updates"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 674
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Message_Deletes"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 676
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 651
    .end local v2           #helper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "uri"

    .prologue
    .line 1105
    const-string v3, "getType"

    invoke-static {p1, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 1106
    .local v1, match:I
    sparse-switch v1, :sswitch_data_0

    .line 1145
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1108
    :sswitch_0
    const-string v3, "vnd.android.cursor.item/email-body"

    .line 1143
    :goto_0
    return-object v3

    .line 1110
    :sswitch_1
    const-string v3, "vnd.android.cursor.dir/email-body"

    goto :goto_0

    .line 1118
    :sswitch_2
    const-string v2, "vnd.android.cursor.item/email-message"

    .line 1119
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "mailboxId"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, mailboxId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v3, v2

    .line 1123
    goto :goto_0

    .line 1126
    .end local v0           #mailboxId:Ljava/lang/String;
    .end local v2           #mimeType:Ljava/lang/String;
    :sswitch_3
    const-string v3, "vnd.android.cursor.dir/email-message"

    goto :goto_0

    .line 1128
    :sswitch_4
    const-string v3, "vnd.android.cursor.dir/email-mailbox"

    goto :goto_0

    .line 1130
    :sswitch_5
    const-string v3, "vnd.android.cursor.item/email-mailbox"

    goto :goto_0

    .line 1132
    :sswitch_6
    const-string v3, "vnd.android.cursor.dir/email-account"

    goto :goto_0

    .line 1134
    :sswitch_7
    const-string v3, "vnd.android.cursor.item/email-account"

    goto :goto_0

    .line 1137
    :sswitch_8
    const-string v3, "vnd.android.cursor.dir/email-attachment"

    goto :goto_0

    .line 1139
    :sswitch_9
    const-string v3, "vnd.android.cursor.item/email-attachment"

    goto :goto_0

    .line 1141
    :sswitch_a
    const-string v3, "vnd.android.cursor.dir/email-hostauth"

    goto :goto_0

    .line 1143
    :sswitch_b
    const-string v3, "vnd.android.cursor.item/email-hostauth"

    goto :goto_0

    .line 1106
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_7
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_5
        0x2000 -> :sswitch_3
        0x2001 -> :sswitch_2
        0x3000 -> :sswitch_8
        0x3001 -> :sswitch_9
        0x3002 -> :sswitch_8
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x5000 -> :sswitch_3
        0x5001 -> :sswitch_2
        0x7000 -> :sswitch_1
        0x7001 -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1151
    const-string v10, "insert"

    invoke-static {p1, v10}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v6

    .line 1152
    .local v6, match:I
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1153
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1156
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1157
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v9, v6, 0xc

    .line 1162
    .local v9, table:I
    const/16 v10, 0x1001

    if-eq v6, v10, :cond_0

    const/16 v10, 0x1000

    if-ne v6, v10, :cond_1

    .line 1163
    :cond_0
    const-string v10, "unreadCount"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1164
    const-string v10, "messageCount"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    :cond_1
    const/4 v8, 0x0

    .line 1170
    .local v8, resultUri:Landroid/net/Uri;
    sparse-switch v6, :sswitch_data_0

    .line 1221
    :try_start_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown URL "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .end local p1
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 1224
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1225
    throw v2

    .line 1172
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    .restart local p1
    :sswitch_0
    :try_start_1
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1181
    :sswitch_1
    sget-object v10, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v9

    const-string v11, "foo"

    invoke-virtual {v1, v10, v11, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1182
    .local v4, id:J
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1187
    const/16 v10, 0x5000

    if-eq v6, v10, :cond_2

    const/16 v10, 0x6000

    if-ne v6, v10, :cond_3

    .line 1188
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown URL "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1190
    :cond_3
    const/16 v10, 0x3000

    if-ne v6, v10, :cond_5

    .line 1191
    const/4 v3, 0x0

    .line 1192
    .local v3, flags:I
    const-string v10, "flags"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1193
    const-string v10, "flags"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1196
    :cond_4
    invoke-static {v4, v5, v3}, Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(JI)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1229
    .end local v3           #flags:I
    :cond_5
    :goto_0
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v10, v8

    .line 1230
    .end local p1
    :goto_1
    return-object v10

    .line 1203
    .end local v4           #id:J
    .restart local p1
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1204
    .restart local v4       #id:J
    const-string v10, "mailboxKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1205
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v10, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    .line 1208
    .end local v4           #id:J
    .restart local p1
    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1209
    .restart local v4       #id:J
    const-string v10, "messageKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1210
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v10, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    .line 1213
    .end local v4           #id:J
    .restart local p1
    :sswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1214
    .restart local v4       #id:J
    const-string v10, "accountKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1215
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v10, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    .line 1217
    .end local v4           #id:J
    .restart local p1
    :sswitch_5
    sget-object v10, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v9

    const-string v11, "foo"

    invoke-virtual {v1, v10, v11, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1218
    .restart local v4       #id:J
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 1219
    goto :goto_0

    .line 1170
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x1000 -> :sswitch_1
        0x1001 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_3
        0x3000 -> :sswitch_1
        0x3002 -> :sswitch_5
        0x4000 -> :sswitch_1
        0x5000 -> :sswitch_1
        0x6000 -> :sswitch_1
        0x7000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 1235
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1236
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 34
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1270
    const-wide/16 v30, 0x0

    .line 1271
    .local v30, time:J
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1272
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 1274
    :cond_0
    const/16 v23, 0x0

    .line 1277
    .local v23, c:Landroid/database/Cursor;
    :try_start_0
    const-string v7, "query"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v28

    .line 1299
    .local v28, match:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v25

    .line 1301
    .local v25, context:Landroid/content/Context;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1302
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v29, v28, 0xc

    .line 1303
    .local v29, table:I
    const-string v7, "limit"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1307
    .local v13, limit:Ljava/lang/String;
    const/16 v24, 0x0

    .line 1308
    .local v24, cache:Lcom/android/email/provider/ContentCache;
    sget-object v7, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v7, v29

    .line 1310
    .local v6, tableName:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 1311
    sget-object v7, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v24, v7, v29

    .line 1313
    :cond_1
    if-nez v24, :cond_2

    .line 1314
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/email/provider/ContentCache;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1318
    :cond_2
    sparse-switch v28, :sswitch_data_0

    .line 1362
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1364
    :catch_0
    move-exception v7

    move-object/from16 v26, v7

    .line 1365
    .local v26, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1366
    throw v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1372
    .end local v26           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v7

    if-eqz v24, :cond_3

    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 1373
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v8, v8, v30

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    :cond_3
    throw v7

    .line 1278
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #tableName:Ljava/lang/String;
    .end local v13           #limit:Ljava/lang/String;
    .end local v24           #cache:Lcom/android/email/provider/ContentCache;
    .end local v25           #context:Landroid/content/Context;
    .end local v28           #match:I
    .end local v29           #table:I
    :catch_1
    move-exception v7

    move-object/from16 v26, v7

    .line 1279
    .local v26, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1282
    .local v33, uriString:Ljava/lang/String;
    if-eqz v33, :cond_4

    const-string v7, "/-1"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    move-object/from16 v0, v33

    move v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1284
    const-string v7, "query"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v28

    .line 1285
    .restart local v28       #match:I
    sparse-switch v28, :sswitch_data_1

    .line 1297
    .end local v28           #match:I
    :cond_4
    throw v26

    .line 1294
    .restart local v28       #match:I
    :sswitch_0
    new-instance v7, Landroid/database/MatrixCursor;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p2

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1380
    .end local v26           #e:Ljava/lang/IllegalArgumentException;
    .end local v33           #uriString:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1327
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6       #tableName:Ljava/lang/String;
    .restart local v13       #limit:Ljava/lang/String;
    .restart local v24       #cache:Lcom/android/email/provider/ContentCache;
    .restart local v25       #context:Landroid/content/Context;
    .restart local v29       #table:I
    :sswitch_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    :try_start_3
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v23

    .line 1372
    :cond_5
    :goto_1
    if-eqz v24, :cond_6

    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 1373
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, v7, v30

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    .line 1377
    :cond_6
    if-eqz v23, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->isTemporary()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, v23

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_7
    move-object/from16 v7, v23

    .line 1380
    goto :goto_0

    .line 1338
    :sswitch_2
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1339
    .local v27, id:Ljava/lang/String;
    if-eqz v24, :cond_8

    .line 1340
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1342
    :cond_8
    if-nez v23, :cond_5

    .line 1343
    const/16 v32, 0x0

    .line 1344
    .local v32, token:Lcom/android/email/provider/ContentCache$CacheToken;
    if-eqz v24, :cond_9

    .line 1345
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/email/provider/ContentCache;->getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCache$CacheToken;

    move-result-object v32

    .line 1347
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1349
    if-eqz v24, :cond_5

    .line 1350
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/provider/ContentCache;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCache$CacheToken;)Landroid/database/Cursor;

    move-result-object v23

    goto :goto_1

    .line 1356
    .end local v27           #id:Ljava/lang/String;
    .end local v32           #token:Lcom/android/email/provider/ContentCache$CacheToken;
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1357
    .restart local v27       #id:Ljava/lang/String;
    const-string v15, "Attachment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "messageKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v5

    move-object/from16 v16, p2

    move-object/from16 v18, p4

    move-object/from16 v21, p5

    move-object/from16 v22, v13

    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v23

    .line 1360
    goto/16 :goto_1

    .line 1367
    .end local v27           #id:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object/from16 v26, v7

    .line 1368
    .local v26, e:Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1369
    invoke-virtual/range {v26 .. v26}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1370
    throw v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1318
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x1001 -> :sswitch_2
        0x2000 -> :sswitch_1
        0x2001 -> :sswitch_2
        0x3000 -> :sswitch_1
        0x3001 -> :sswitch_2
        0x3002 -> :sswitch_3
        0x4000 -> :sswitch_1
        0x4001 -> :sswitch_2
        0x5000 -> :sswitch_1
        0x5001 -> :sswitch_2
        0x6000 -> :sswitch_1
        0x6001 -> :sswitch_2
        0x7000 -> :sswitch_1
        0x7001 -> :sswitch_2
    .end sparse-switch

    .line 1285
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x3001 -> :sswitch_0
        0x4001 -> :sswitch_0
        0x5001 -> :sswitch_0
        0x6001 -> :sswitch_0
        0x7001 -> :sswitch_0
    .end sparse-switch
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 689
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 693
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 695
    :cond_1
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 30
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1420
    sget-object v7, Lcom/android/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object v1, v7

    if-ne v0, v1, :cond_0

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1422
    const/4 v7, 0x0

    .line 1583
    :goto_0
    return v7

    .line 1426
    :cond_0
    sget-object v24, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 1428
    .local v24, notificationUri:Landroid/net/Uri;
    const-string v7, "update"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v23

    .line 1429
    .local v23, match:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 1430
    .local v18, context:Landroid/content/Context;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 1432
    .local v25, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1433
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v27, v23, 0xc

    .line 1438
    .local v27, table:I
    const/16 v7, 0x1001

    move/from16 v0, v23

    move v1, v7

    if-eq v0, v1, :cond_1

    const/16 v7, 0x1000

    move/from16 v0, v23

    move v1, v7

    if-ne v0, v1, :cond_2

    .line 1439
    :cond_1
    const-string v7, "unreadCount"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1440
    const-string v7, "messageCount"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1443
    :cond_2
    sget-object v7, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v17, v7, v27

    .line 1444
    .local v17, cache:Lcom/android/email/provider/ContentCache;
    sget-object v7, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v7, v27

    .line 1448
    .local v6, tableName:Ljava/lang/String;
    sparse-switch v23, :sswitch_data_0

    .line 1575
    :try_start_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :catch_0
    move-exception v7

    move-object/from16 v19, v7

    .line 1578
    .local v19, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1579
    throw v19

    .line 1451
    .end local v19           #e:Landroid/database/sqlite/SQLiteException;
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1452
    .local v22, id:Ljava/lang/String;
    const-string v7, "field"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1453
    .local v20, field:Ljava/lang/String;
    const-string v7, "add"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 1454
    .local v14, add:Ljava/lang/Long;
    if-eqz v20, :cond_3

    if-nez v14, :cond_4

    .line 1455
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No field/add specified "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1457
    :cond_4
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1458
    .local v13, actualValues:Landroid/content/ContentValues;
    if-eqz v17, :cond_5

    .line 1459
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1462
    :cond_5
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1464
    const/4 v7, 0x2

    :try_start_3
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v20, v7, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v16

    .line 1469
    .local v16, c:Landroid/database/Cursor;
    const/16 v26, 0x0

    .line 1470
    .local v26, result:I
    const/4 v7, 0x1

    :try_start_4
    new-array v15, v7, [Ljava/lang/String;

    .line 1471
    .local v15, bind:[Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1472
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v7

    .line 1473
    const/4 v7, 0x1

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long v28, v7, v9

    .line 1474
    .local v28, value:J
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v13

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1475
    const-string v7, "_id=?"

    invoke-virtual {v5, v6, v13, v7, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 1477
    .end local v28           #value:J
    :cond_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1479
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1482
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1485
    if-eqz v17, :cond_7

    .line 1486
    :try_start_7
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1582
    .end local v13           #actualValues:Landroid/content/ContentValues;
    .end local v14           #add:Ljava/lang/Long;
    .end local v15           #bind:[Ljava/lang/String;
    .end local v16           #c:Landroid/database/Cursor;
    .end local v20           #field:Ljava/lang/String;
    .end local v22           #id:Ljava/lang/String;
    :cond_7
    :goto_1
    const/4 v7, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v7, v26

    .line 1583
    goto/16 :goto_0

    .line 1479
    .restart local v13       #actualValues:Landroid/content/ContentValues;
    .restart local v14       #add:Ljava/lang/Long;
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v20       #field:Ljava/lang/String;
    .restart local v22       #id:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1482
    .end local v16           #c:Landroid/database/Cursor;
    .end local v26           #result:I
    :catchall_1
    move-exception v7

    :try_start_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1485
    :catchall_2
    move-exception v7

    if-eqz v17, :cond_8

    .line 1486
    :try_start_a
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_8
    throw v7

    .line 1491
    .end local v13           #actualValues:Landroid/content/ContentValues;
    .end local v14           #add:Ljava/lang/Long;
    .end local v20           #field:Ljava/lang/String;
    .end local v22           #id:Ljava/lang/String;
    :sswitch_1
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1500
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1501
    .restart local v22       #id:Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 1502
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0

    .line 1505
    :cond_9
    const/16 v7, 0x2002

    move/from16 v0, v23

    move v1, v7

    if-ne v0, v1, :cond_c

    .line 1510
    :try_start_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert or ignore into Message_Updates select * from Message where _id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1514
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1

    move-result v26

    .line 1521
    .restart local v26       #result:I
    if-eqz v17, :cond_b

    .line 1522
    :try_start_c
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1525
    :cond_b
    const/16 v7, 0x3001

    move/from16 v0, v23

    move v1, v7

    if-ne v0, v1, :cond_7

    .line 1526
    const-string v7, "flags"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1527
    const-string v7, "flags"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1528
    .local v21, flags:I
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    move-wide v0, v7

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(JI)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    .line 1511
    .end local v21           #flags:I
    .end local v26           #result:I
    :cond_c
    const/16 v7, 0x2001

    move/from16 v0, v23

    move v1, v7

    if-ne v0, v1, :cond_a

    .line 1512
    :try_start_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete from Message_Updates where _id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_2

    .line 1516
    :catch_1
    move-exception v7

    move-object/from16 v19, v7

    .line 1518
    .restart local v19       #e:Landroid/database/sqlite/SQLiteException;
    const/16 p2, 0x0

    .line 1519
    :try_start_e
    throw v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1521
    .end local v19           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_3
    move-exception v7

    if-eqz v17, :cond_d

    .line 1522
    :try_start_f
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_d
    throw v7

    .line 1540
    .end local v22           #id:Ljava/lang/String;
    :sswitch_3
    sparse-switch v23, :sswitch_data_1

    .line 1550
    :goto_3
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 1551
    .restart local v26       #result:I
    goto/16 :goto_1

    .line 1547
    .end local v26           #result:I
    :sswitch_4
    const-string v7, "Update"

    move-object/from16 v0, v17

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3

    .line 1553
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1554
    .restart local v22       #id:Ljava/lang/String;
    if-eqz v17, :cond_e

    .line 1555
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0

    .line 1558
    :cond_e
    :try_start_10
    sget-object v7, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-result v26

    .line 1561
    .restart local v26       #result:I
    if-eqz v17, :cond_f

    .line 1562
    :try_start_11
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1565
    :cond_f
    sget-object v24, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 1566
    goto/16 :goto_1

    .line 1561
    .end local v26           #result:I
    :catchall_4
    move-exception v7

    if-eqz v17, :cond_10

    .line 1562
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_10
    throw v7

    .line 1568
    .end local v22           #id:Ljava/lang/String;
    :sswitch_6
    sget-object v7, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 1571
    .restart local v26       #result:I
    const-string v7, "Reset all new counts"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v17

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1572
    sget-object v24, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1573
    goto/16 :goto_1

    .line 1448
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x1000 -> :sswitch_3
        0x1001 -> :sswitch_2
        0x1002 -> :sswitch_0
        0x2000 -> :sswitch_3
        0x2001 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x3000 -> :sswitch_3
        0x3001 -> :sswitch_2
        0x4000 -> :sswitch_3
        0x4001 -> :sswitch_2
        0x5000 -> :sswitch_3
        0x5001 -> :sswitch_2
        0x7000 -> :sswitch_3
        0x7001 -> :sswitch_2
    .end sparse-switch

    .line 1540
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_4
        0x4000 -> :sswitch_4
    .end sparse-switch
.end method
