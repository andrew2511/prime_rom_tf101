.class public Lcom/android/contacts/ContactSaveService;
.super Landroid/app/IntentService;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactSaveService$JoinContactQuery;,
        Lcom/android/contacts/ContactSaveService$Listener;
    }
.end annotation


# static fields
.field private static final ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ContactSaveService$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data15"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    .line 121
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "ContactSaveService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactSaveService;->setIntentRedelivery(Z)V

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method private buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .parameter
    .parameter "rawContactId1"
    .parameter "rawContactId2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 689
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 690
    const-string v1, "raw_contact_id1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 691
    const-string v1, "raw_contact_id2"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 692
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    return-void
.end method

.method private clearPrimary(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 515
    const-string v3, "dataId"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 516
    .local v0, dataId:J
    cmp-long v3, v0, v7

    if-nez v3, :cond_0

    .line 517
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for clearPrimary request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_0
    return-void

    .line 522
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 523
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 508
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    const-string v1, "clearPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 511
    return-object v0
.end method

.method public static createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 534
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 537
    return-object v0
.end method

.method private createGroup(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 380
    const-string v6, "accountType"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, accountType:Ljava/lang/String;
    const-string v6, "accountName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, accountName:Ljava/lang/String;
    const-string v6, "groupLabel"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, label:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "account_type"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v6, "account_name"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v6, "title"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 390
    .local v3, groupUri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 402
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 395
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v6, "data1"

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    const-string v6, "callbackIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 399
    .local v2, callbackIntent:Landroid/content/Intent;
    const-string v6, "data"

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/content/ContentValues;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v7}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 401
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 434
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    const-string v1, "deleteGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 437
    return-object v0
.end method

.method public static createGroupRenameIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    const-string v1, "renameGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 411
    const-string v1, "groupLabel"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    return-object v0
.end method

.method public static createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJZ",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    const-string v1, "joinContacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v1, "contactId1"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 559
    const-string v1, "contactId2"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 560
    const-string v1, "contactWritable"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 564
    invoke-virtual {v1, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 567
    return-object v0
.end method

.method public static createNewGroupIntent(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    const-string v1, "createGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "accountType"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v1, "accountName"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v1, "groupLabel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 376
    return-object v0
.end method

.method public static createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Landroid/accounts/Account;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string v1, "newRawContact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    if-eqz p2, :cond_0

    .line 194
    const-string v1, "accountName"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "accountType"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_0
    const-string v1, "contentValues"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 203
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    return-object v0
.end method

.method private createRawContact(Landroid/content/Intent;)V
    .locals 17
    .parameter "intent"

    .prologue
    .line 210
    const-string v14, "accountName"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, accountName:Ljava/lang/String;
    const-string v14, "accountType"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, accountType:Ljava/lang/String;
    const-string v14, "contentValues"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 213
    .local v12, valueList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v14, "callbackIntent"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 215
    .local v4, callbackIntent:Landroid/content/Intent;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v7, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_name"

    invoke-virtual {v14, v15, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 222
    .local v11, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 223
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 224
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v14

    sget-object v15, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    invoke-interface {v14, v15}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 225
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 231
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 234
    .local v9, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v14, "com.android.contacts"

    invoke-virtual {v9, v14, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 239
    .local v10, results:[Landroid/content/ContentProviderResult;
    const/4 v14, 0x0

    aget-object v14, v10, v14

    iget-object v8, v14, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 240
    .local v8, rawContactUri:Landroid/net/Uri;
    invoke-static {v9, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 242
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 243
    return-void

    .line 235
    .end local v8           #rawContactUri:Landroid/net/Uri;
    .end local v10           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 236
    .local v5, e:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to store new contact"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/EntityDeltaList;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    const-string v1, "saveContact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    invoke-virtual {v1, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    return-object v0
.end method

.method public static createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    const-string v1, "setStarred"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 458
    const-string v1, "starred"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    return-object v0
.end method

.method public static createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 480
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    const-string v1, "setSuperPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 483
    return-object v0
.end method

.method private deleteContact(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 541
    const-string v1, "contactUri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 542
    .local v0, contactUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 543
    const-string v1, "ContactSaveService"

    const-string v2, "Invalid arguments for deleteContact request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteGroup(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 441
    const-string v2, "groupId"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 442
    .local v0, groupId:J
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    .line 443
    const-string v2, "ContactSaveService"

    const-string v3, "Invalid arguments for deleteGroup request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deliverCallback(Landroid/content/Intent;)V
    .locals 2
    .parameter "callbackIntent"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$2;-><init>(Lcom/android/contacts/ContactSaveService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 716
    return-void
.end method

.method private getRawContactId(Lcom/android/contacts/model/EntityDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 9
    .parameter "state"
    .parameter
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDeltaList;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .local p2, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v7, -0x1

    .line 341
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v3

    .line 342
    .local v3, rawContactId:J
    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    move-wide v5, v3

    .line 355
    :goto_0
    return-wide v5

    .line 346
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 347
    .local v0, diffSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 348
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 349
    .local v2, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    aget-object v5, p3, v1

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    goto :goto_0

    .line 347
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    move-wide v5, v7

    .line 355
    goto :goto_0
.end method

.method private joinContacts(Landroid/content/Intent;)V
    .locals 31
    .parameter "intent"

    .prologue
    .line 588
    const-string v5, "contactId1"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 589
    .local v14, contactId1:J
    const-string v5, "contactId2"

    const-wide/16 v7, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 590
    .local v16, contactId2:J
    const-string v5, "contactWritable"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 591
    .local v30, writable:Z
    const-wide/16 v7, -0x1

    cmp-long v5, v14, v7

    if-eqz v5, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v5, v16, v7

    if-nez v5, :cond_1

    .line 592
    :cond_0
    const-string v5, "ContactSaveService"

    const-string v6, "Invalid arguments for joinContacts request"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 600
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "contact_id=? OR contact_id=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 606
    .local v12, c:Landroid/database/Cursor;
    const-wide/16 v28, -0x1

    .line 608
    .local v28, verifiedNameRawContactId:J
    const/16 v21, -0x1

    .line 609
    .local v21, maxDisplayNameSource:I
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 610
    .local v25, rawContactIds:[J
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move-object/from16 v0, v25

    array-length v0, v0

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 611
    move-object v0, v12

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 612
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 613
    .local v23, rawContactId:J
    aput-wide v23, v25, v19

    .line 614
    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 615
    .local v22, nameSource:I
    move/from16 v0, v22

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 616
    move/from16 v21, v22

    .line 610
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 623
    .end local v22           #nameSource:I
    .end local v23           #rawContactId:J
    :cond_3
    if-eqz v30, :cond_6

    .line 624
    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v25

    array-length v0, v0

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 625
    move-object v0, v12

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 626
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v5, v7, v14

    if-nez v5, :cond_5

    .line 627
    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 628
    .restart local v22       #nameSource:I
    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const-wide/16 v7, -0x1

    cmp-long v5, v28, v7

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 631
    :cond_4
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v28

    .line 624
    .end local v22           #nameSource:I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 637
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 641
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v6, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v19, 0x0

    :goto_3
    move-object/from16 v0, v25

    array-length v0, v0

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_9

    .line 643
    const/16 v20, 0x0

    .local v20, j:I
    :goto_4
    move-object/from16 v0, v25

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 644
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 645
    aget-wide v7, v25, v19

    aget-wide v9, v25, v20

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/contacts/ContactSaveService;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    .line 643
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 637
    .end local v6           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v19           #i:I
    .end local v20           #j:I
    .end local v25           #rawContactIds:[J
    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    .line 642
    .restart local v6       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v19       #i:I
    .restart local v20       #j:I
    .restart local v25       #rawContactIds:[J
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 652
    .end local v20           #j:I
    :cond_9
    const-wide/16 v7, -0x1

    cmp-long v5, v28, v7

    if-eqz v5, :cond_a

    .line 653
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 655
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "name_verified"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 656
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .end local v11           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_a
    const/16 v26, 0x0

    .line 662
    .local v26, success:Z
    :try_start_1
    const-string v5, "com.android.contacts"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 663
    const v5, 0x7f0c0030

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 664
    const/16 v26, 0x1

    .line 673
    .end local v6           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_5
    const-string v5, "callbackIntent"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 674
    .local v13, callbackIntent:Landroid/content/Intent;
    if-eqz v26, :cond_b

    .line 675
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    aget-wide v7, v25, v6

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v27

    .line 677
    .local v27, uri:Landroid/net/Uri;
    move-object v0, v13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 679
    .end local v27           #uri:Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 665
    .end local v13           #callbackIntent:Landroid/content/Intent;
    .restart local v6       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 666
    .local v18, e:Landroid/os/RemoteException;
    const-string v5, "ContactSaveService"

    const-string v6, "Failed to apply aggregation exception batch"

    .end local v6           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    const v5, 0x7f0c0059

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_5

    .line 668
    .end local v18           #e:Landroid/os/RemoteException;
    .restart local v6       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v5

    move-object/from16 v18, v5

    .line 669
    .local v18, e:Landroid/content/OperationApplicationException;
    const-string v5, "ContactSaveService"

    const-string v6, "Failed to apply aggregation exception batch"

    .end local v6           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    const v5, 0x7f0c0059

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_5
.end method

.method public static registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 3
    .parameter

    .prologue
    .line 132
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only activities can be registered to receive callback from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private renameGroup(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    .line 416
    const-string v4, "groupId"

    invoke-virtual {p1, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 417
    .local v0, groupId:J
    const-string v4, "groupLabel"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, label:Ljava/lang/String;
    cmp-long v4, v0, v7

    if-nez v4, :cond_0

    .line 420
    const-string v4, "ContactSaveService"

    const-string v5, "Invalid arguments for renameGroup request"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void

    .line 424
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveContact(Landroid/content/Intent;)V
    .locals 26
    .parameter "intent"

    .prologue
    .line 268
    const-string v22, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/model/EntityDeltaList;

    .line 269
    .local v19, state:Lcom/android/contacts/model/EntityDeltaList;
    const-string v22, "callbackIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 272
    .local v5, callbackIntent:Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 273
    .local v4, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityModifier;->trimEmpty(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 275
    const/4 v11, 0x0

    .line 277
    .local v11, lookupUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 280
    .local v16, resolver:Landroid/content/ContentResolver;
    const/16 v20, 0x0

    .local v20, tries:I
    move/from16 v21, v20

    .line 281
    .end local v20           #tries:I
    .local v21, tries:I
    :goto_0
    add-int/lit8 v20, v21, 0x1

    .end local v21           #tries:I
    .restart local v20       #tries:I
    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 284
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/EntityDeltaList;->buildDiff()Ljava/util/ArrayList;

    move-result-object v7

    .line 285
    .local v7, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v17, 0x0

    .line 286
    .local v17, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    .line 287
    const-string v22, "com.android.contacts"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v17

    .line 290
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v7

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->getRawContactId(Lcom/android/contacts/model/EntityDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v13

    .line 291
    .local v13, rawContactId:J
    const-wide/16 v22, -0x1

    cmp-long v22, v13, v22

    if-nez v22, :cond_2

    .line 292
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "Could not determine RawContact ID after save"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    .end local v7           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13           #rawContactId:J
    .end local v17           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v22

    move-object/from16 v8, v22

    .line 302
    .local v8, e:Landroid/os/RemoteException;
    const-string v22, "ContactSaveService"

    const-string v23, "Problem persisting user edits"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 335
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 336
    return-void

    .line 294
    .restart local v7       #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v13       #rawContactId:J
    .restart local v17       #results:[Landroid/content/ContentProviderResult;
    :cond_2
    :try_start_1
    sget-object v22, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-wide v1, v13

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 296
    .local v15, rawContactUri:Landroid/net/Uri;
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 297
    const-string v22, "ContactSaveService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Saved contact. New URI: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 305
    .end local v7           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13           #rawContactId:J
    .end local v15           #rawContactUri:Landroid/net/Uri;
    .end local v17           #results:[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v22

    move-object/from16 v8, v22

    .line 307
    .local v8, e:Landroid/content/OperationApplicationException;
    const-string v22, "ContactSaveService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Version consistency failed, re-parenting: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v22, "_id IN("

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .local v18, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .line 310
    .local v9, first:Z
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v6

    .line 311
    .local v6, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v6, :cond_5

    .line 312
    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v13

    .line 313
    .local v13, rawContactId:Ljava/lang/Long;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-eqz v22, :cond_4

    .line 314
    if-nez v9, :cond_3

    .line 315
    const/16 v22, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    :cond_3
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    const/4 v9, 0x0

    .line 311
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 321
    .end local v13           #rawContactId:Ljava/lang/Long;
    :cond_5
    const-string v22, ")"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    if-eqz v9, :cond_6

    .line 324
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "Version consistency failed for a new contact"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 327
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/model/EntityDeltaList;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v12

    .line 329
    .local v12, newState:Lcom/android/contacts/model/EntityDeltaList;
    move-object v0, v12

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->mergeAfter(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/EntityDeltaList;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v19

    move/from16 v21, v20

    .line 330
    .end local v20           #tries:I
    .restart local v21       #tries:I
    goto/16 :goto_0
.end method

.method private setStarred(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 464
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 465
    .local v0, contactUri:Landroid/net/Uri;
    const-string v3, "starred"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 466
    .local v1, value:Z
    if-nez v0, :cond_0

    .line 467
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setStarred request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 472
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "starred"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSuperPrimary(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 487
    const-string v3, "dataId"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 488
    .local v0, dataId:J
    cmp-long v3, v0, v7

    if-nez v3, :cond_0

    .line 489
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setSuperPrimary request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 495
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .parameter "message"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$1;-><init>(Lcom/android/contacts/ContactSaveService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method public static unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 142
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method deliverCallbackOnUiThread(Landroid/content/Intent;)V
    .locals 6
    .parameter "callbackIntent"

    .prologue
    .line 722
    sget-object v4, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/LinkedList;

    monitor-enter v4

    .line 723
    :try_start_0
    sget-object v3, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ContactSaveService$Listener;

    .line 724
    .local v2, listener:Lcom/android/contacts/ContactSaveService$Listener;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    invoke-interface {v2, p1}, Lcom/android/contacts/ContactSaveService$Listener;->onServiceCompleted(Landroid/content/Intent;)V

    .line 727
    monitor-exit v4

    .line 731
    .end local v2           #listener:Lcom/android/contacts/ContactSaveService$Listener;
    :goto_0
    return-void

    .line 730
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, service:Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 154
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, action:Ljava/lang/String;
    const-string v1, "newRawContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createRawContact(Landroid/content/Intent;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v1, "saveContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->saveContact(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :cond_2
    const-string v1, "createGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    :cond_3
    const-string v1, "renameGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->renameGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_4
    const-string v1, "deleteGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 169
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :cond_5
    const-string v1, "setStarred"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setStarred(Landroid/content/Intent;)V

    goto :goto_0

    .line 172
    :cond_6
    const-string v1, "setSuperPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 173
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSuperPrimary(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    :cond_7
    const-string v1, "clearPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 175
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->clearPrimary(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :cond_8
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 177
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteContact(Landroid/content/Intent;)V

    goto :goto_0

    .line 178
    :cond_9
    const-string v1, "joinContacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->joinContacts(Landroid/content/Intent;)V

    goto :goto_0
.end method
