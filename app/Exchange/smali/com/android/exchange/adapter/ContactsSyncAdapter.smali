.class public Lcom/android/exchange/adapter/ContactsSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ContactsSyncAdapter$1;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    }
.end annotation


# static fields
.field private static final EMAIL_TAGS:[I

.field private static final EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUPS_ID_PROJECTION:[Ljava/lang/String;

.field private static final GROUP_TITLE_PROJECTION:[Ljava/lang/String;

.field private static final HOME_ADDRESS_TAGS:[I

.field private static final HOME_PHONE_TAGS:[I

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final IM_TAGS:[I

.field private static final OTHER_ADDRESS_TAGS:[I

.field private static final WORK_ADDRESS_TAGS:[I

.field private static final WORK_PHONE_TAGS:[I

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private final mAccountUri:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupsUsed:Z

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 78
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUP_TITLE_PROJECTION:[Ljava/lang/String;

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    .line 88
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    .line 94
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    .line 100
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    .line 112
    new-array v0, v6, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->IM_TAGS:[I

    .line 115
    new-array v0, v6, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    .line 118
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    .line 121
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    return-void

    .line 88
    nop

    :array_0
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
    .end array-data

    .line 94
    :array_1
    .array-data 0x4
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    .line 100
    :array_2
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
    .end array-data

    .line 112
    :array_3
    .array-data 0x4
        0x7t 0x3t 0x0t 0x0t
        0x8t 0x3t 0x0t 0x0t
        0x9t 0x3t 0x0t 0x0t
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0x5bt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
    .end array-data

    .line 118
    :array_5
    .array-data 0x4
        0x53t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
    .end array-data

    .line 121
    :array_6
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    .line 135
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    .line 136
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 137
    return-void
.end method

.method static synthetic access$102(Lcom/android/exchange/adapter/ContactsSyncAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/ContactsSyncAdapter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    return-object v0
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private dirtyContactsWithinDirtyGroups()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1747
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1748
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "dirty=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1751
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1752
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    .line 1753
    .local v9, updateArgs:[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1754
    .local v10, updateValues:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1759
    .local v7, id:J
    const-string v1, "data1"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1760
    const/4 v1, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 1761
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=?"

    invoke-virtual {v0, v1, v10, v2, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1774
    .end local v7           #id:J
    .end local v9           #updateArgs:[Ljava/lang/String;
    .end local v10           #updateValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1765
    .restart local v9       #updateArgs:[Ljava/lang/String;
    .restart local v10       #updateValues:Landroid/content/ContentValues;
    :cond_0
    :try_start_1
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "deleted=1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1768
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 1769
    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1770
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1774
    .end local v9           #updateArgs:[Ljava/lang/String;
    .end local v10           #updateValues:Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1776
    return-void
.end method

.method private sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
    const-string v0, "data1"

    const/16 v1, 0x48

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1618
    return-void
.end method

.method private sendBusiness(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1606
    const-string v0, "data8"

    const/16 v1, 0x30c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1607
    const-string v0, "data6"

    const/16 v1, 0x305

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1608
    const-string v0, "data7"

    const/16 v1, 0x306

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1609
    return-void
.end method

.method private sendChildren(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1665
    const/4 v0, 0x1

    .line 1666
    .local v0, first:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    .line 1667
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;->ROWS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1668
    .local v2, row:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1669
    if-eqz v0, :cond_0

    .line 1670
    const/16 v3, 0x57

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1671
    const/4 v0, 0x0

    .line 1673
    :cond_0
    const/16 v3, 0x58

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1666
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1676
    .end local v2           #row:Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 1677
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1679
    :cond_3
    return-void
.end method

.method private sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .parameter "count"
    .parameter "displayName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1526
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, addr:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1528
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1529
    if-eqz p4, :cond_2

    .line 1530
    move-object v1, p4

    .line 1536
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1538
    .local v2, value:Ljava/lang/String;
    const/4 v3, 0x3

    if-ge p3, v3, :cond_1

    .line 1539
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    aget v3, v3, p3

    invoke-virtual {p1, v3, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1542
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    return-void

    .line 1532
    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private sendIm(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1545
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1550
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    const/4 v1, 0x3

    if-ge p3, v1, :cond_0

    .line 1548
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->IM_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private sendNickname(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1639
    const-string v0, "data1"

    const/16 v1, 0x30d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1640
    return-void
.end method

.method private sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1649
    const-string v0, ""

    .line 1650
    .local v0, note:Ljava/lang/String;
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\r\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1655
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4028

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 1656
    const/16 v1, 0x44a

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1657
    const/16 v1, 0x446

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x44b

    invoke-virtual {v1, v2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1658
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1662
    :goto_0
    return-void

    .line 1660
    :cond_1
    const/16 v1, 0x49

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .parameter "fieldNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1554
    const-string v0, "data7"

    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1555
    const-string v0, "data10"

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1556
    const-string v0, "data9"

    const/4 v1, 0x2

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1557
    const-string v0, "data8"

    const/4 v1, 0x3

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1558
    const-string v0, "data4"

    const/4 v1, 0x4

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1559
    return-void
.end method

.method private sendOrganization(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1632
    const-string v0, "data4"

    const/16 v1, 0x68

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1633
    const-string v0, "data1"

    const/16 v1, 0x59

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1634
    const-string v0, "data5"

    const/16 v1, 0x5a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1635
    const-string v0, "data9"

    const/16 v1, 0x6c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1636
    return-void
.end method

.method private sendPersonal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1612
    const-string v0, "data2"

    const/16 v1, 0x45

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1613
    const-string v0, "data4"

    const/16 v1, 0x5e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1614
    return-void
.end method

.method private sendPhone(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V
    .locals 3
    .parameter "s"
    .parameter "cv"
    .parameter "workCount"
    .parameter "homeCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1683
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1684
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1726
    :cond_0
    :goto_0
    return-void

    .line 1685
    :cond_1
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1704
    :pswitch_1
    if-ge p4, v2, :cond_0

    .line 1705
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    aget v1, v1, p4

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1687
    :pswitch_2
    if-ge p3, v2, :cond_0

    .line 1688
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1692
    :pswitch_3
    const/16 v1, 0x30e

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1695
    :pswitch_4
    const/16 v1, 0x47

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1698
    :pswitch_5
    const/16 v1, 0x52

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1701
    :pswitch_6
    const/16 v1, 0x30b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1709
    :pswitch_7
    const/16 v1, 0x6b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1712
    :pswitch_8
    const/16 v1, 0x54

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1715
    :pswitch_9
    const/16 v1, 0x72

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1718
    :pswitch_a
    const/16 v1, 0x73

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1721
    :pswitch_b
    const/16 v1, 0x66

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private sendPhoto(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7c

    .line 1621
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1622
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1623
    .local v0, bytes:[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1624
    .local v1, pic:Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1629
    .end local v0           #bytes:[B
    .end local v1           #pic:Ljava/lang/String;
    :goto_0
    return-void

    .line 1627
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private sendRelation(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1729
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1730
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1744
    :goto_0
    return-void

    .line 1731
    :cond_0
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1733
    :sswitch_0
    const/16 v1, 0x46

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1736
    :sswitch_1
    const/16 v1, 0x30a

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1739
    :sswitch_2
    const/16 v1, 0x74

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1731
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method private sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .parameter "column"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1579
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1580
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1582
    invoke-virtual {p1, p4, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1585
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendStructuredName(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1588
    const/4 v0, 0x0

    .line 1589
    .local v0, displayName:Ljava/lang/String;
    const-string v1, "data3"

    const/16 v2, 0x69

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1590
    const-string v1, "data2"

    const/16 v2, 0x5f

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1591
    const-string v1, "data5"

    const/16 v2, 0x6a

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1592
    const-string v1, "data6"

    const/16 v2, 0x75

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1593
    const-string v1, "data7"

    const/16 v2, 0x79

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1594
    const-string v1, "data9"

    const/16 v2, 0x7a

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1595
    const-string v1, "data4"

    const/16 v2, 0x76

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1596
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1597
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1599
    const/16 v1, 0x5e

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1602
    :cond_0
    return-object v0
.end method

.method private sendStructuredPostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1562
    const-string v0, "data2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1575
    :goto_0
    return-void

    .line 1564
    :pswitch_0
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 1567
    :pswitch_1
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 1570
    :pswitch_2
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 1562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendWebpage(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1643
    const-string v0, "data1"

    const/16 v1, 0x77

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1644
    return-void
.end method

.method private uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 902
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 12

    .prologue
    .line 1476
    new-instance v9, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    const/4 v2, 0x0

    invoke-direct {v9, p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V

    .line 1477
    .local v9, ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1478
    .local v8, id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "dirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0

    .line 1485
    .end local v8           #id:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1486
    .restart local v8       #id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 1493
    .end local v8           #id:Ljava/lang/Long;
    :cond_1
    invoke-virtual {v9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->execute()V

    .line 1494
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1495
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    if-eqz v2, :cond_3

    .line 1500
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1501
    .local v1, groupsUri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sourceid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const-string v3, "title IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1503
    .local v6, c:Landroid/database/Cursor;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1504
    .local v11, values:Landroid/content/ContentValues;
    const-string v2, "group_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1506
    :goto_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1507
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1508
    .local v10, sourceId:Ljava/lang/String;
    const-string v2, "title"

    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "sourceid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-virtual {v0, v2, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1513
    .end local v10           #sourceId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1516
    .end local v1           #groupsUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_3
    return-void
.end method

.method public dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "ncv"

    .prologue
    .line 1467
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1468
    .local v1, id:J
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1469
    .local v0, dataUri:Landroid/net/Uri;
    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1520
    const-string v0, "Contacts"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v4, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 180
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 183
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v5, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v5, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v2

    .line 185
    .local v2, data:[B
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 187
    :cond_0
    const-string v5, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 189
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "account_name"

    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v5, "account_type"

    const-string v6, "com.android.exchange"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v5, "ungrouped_visible"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 193
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 194
    const-string v5, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    .line 196
    .end local v1           #cv:Landroid/content/ContentValues;
    :goto_0
    return-object v4

    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    monitor-exit v4

    move-object v4, v5

    goto :goto_0

    .line 198
    .end local v2           #data:[B
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 199
    .local v3, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Can\'t get SyncKey from ContactsProvider"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method

.method public isSyncable()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/ContactsSyncAdapter;)V

    .line 159
    .local v0, p:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 40
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v7, v0

    iget-object v5, v7, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1783
    .local v5, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dirtyContactsWithinDirtyGroups()V

    .line 1786
    sget-object v7, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1787
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1788
    const/4 v7, 0x0

    .line 1931
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    return v7

    .line 1792
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_0
    const/4 v7, 0x0

    const-string v8, "dirty=1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v18

    .line 1794
    .local v18, ei:Landroid/content/EntityIterator;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1796
    .local v14, cidValues:Landroid/content/ContentValues;
    const/16 v25, 0x1

    .line 1797
    .local v25, first:Z
    :try_start_0
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v36

    .line 1798
    .end local v6           #uri:Landroid/net/Uri;
    .local v36, rawContactUri:Landroid/net/Uri;
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1799
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Entity;

    .line 1801
    .local v22, entity:Landroid/content/Entity;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v23

    .line 1802
    .local v23, entityValues:Landroid/content/ContentValues;
    const-string v7, "sourceid"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1803
    .local v37, serverId:Ljava/lang/String;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1804
    .local v27, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v25, :cond_1

    .line 1805
    const/16 v7, 0x16

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1806
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Sending Contacts changes to the server"

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1807
    const/16 v25, 0x0

    .line 1809
    :cond_1
    if-nez v37, :cond_2

    .line 1811
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object v8, v0

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1812
    .local v15, clientId:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Creating new contact with clientId: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v15, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1813
    const/4 v7, 0x7

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v8, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1815
    const-string v7, "sync1"

    invoke-virtual {v14, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const-string v7, "_id"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v36

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v14, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1830
    .end local v15           #clientId:Ljava/lang/String;
    :goto_2
    const/16 v7, 0x1d

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1832
    const/16 v32, 0x0

    .line 1833
    .local v32, imCount:I
    const/16 v19, 0x0

    .line 1834
    .local v19, emailCount:I
    const/16 v29, 0x0

    .line 1835
    .local v29, homePhoneCount:I
    const/16 v39, 0x0

    .line 1836
    .local v39, workPhoneCount:I
    const/16 v17, 0x0

    .line 1837
    .local v17, displayName:Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1838
    .local v21, emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v28, 0x0

    .line 1839
    .local v28, hasNotes:Z
    invoke-virtual/range {v22 .. v22}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    move/from16 v33, v32

    .end local v32           #imCount:I
    .local v33, imCount:I
    :goto_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Entity$NamedContentValues;

    .line 1840
    .local v35, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 1841
    .local v16, cv:Landroid/content/ContentValues;
    const-string v7, "mimetype"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1842
    .local v34, mimeType:Ljava/lang/String;
    const-string v7, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1843
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    :goto_4
    move/from16 v33, v32

    .line 1885
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    goto :goto_3

    .line 1821
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v17           #displayName:Ljava/lang/String;
    .end local v19           #emailCount:I
    .end local v21           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v28           #hasNotes:Z
    .end local v29           #homePhoneCount:I
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v33           #imCount:I
    .end local v34           #mimeType:Ljava/lang/String;
    .end local v35           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v39           #workPhoneCount:I
    :cond_2
    const-string v7, "deleted"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1822
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Deleting contact with serverId: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v37, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1823
    const/16 v7, 0x9

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xd

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    move-object v7, v0

    const-string v8, "_id"

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1928
    .end local v22           #entity:Landroid/content/Entity;
    .end local v23           #entityValues:Landroid/content/ContentValues;
    .end local v27           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v36           #rawContactUri:Landroid/net/Uri;
    .end local v37           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    throw v7

    .line 1827
    .restart local v22       #entity:Landroid/content/Entity;
    .restart local v23       #entityValues:Landroid/content/ContentValues;
    .restart local v27       #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v36       #rawContactUri:Landroid/net/Uri;
    .restart local v37       #serverId:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upsync change to contact with serverId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1828
    const/16 v7, 0x8

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xd

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_2

    .line 1844
    .restart local v16       #cv:Landroid/content/ContentValues;
    .restart local v17       #displayName:Ljava/lang/String;
    .restart local v19       #emailCount:I
    .restart local v21       #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v28       #hasNotes:Z
    .restart local v29       #homePhoneCount:I
    .restart local v30       #i$:Ljava/util/Iterator;
    .restart local v33       #imCount:I
    .restart local v34       #mimeType:Ljava/lang/String;
    .restart local v35       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v39       #workPhoneCount:I
    :cond_4
    const-string v7, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1845
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNickname(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1846
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_5
    const-string v7, "vnd.android.cursor.item/eas_children"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1847
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendChildren(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1848
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_6
    const-string v7, "vnd.android.cursor.item/eas_business"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1849
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBusiness(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1850
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_7
    const-string v7, "vnd.android.cursor.item/website"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1851
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendWebpage(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1852
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_8
    const-string v7, "vnd.android.cursor.item/eas_personal"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1853
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPersonal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1854
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_9
    const-string v7, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1855
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v39

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhone(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V

    .line 1856
    const-string v7, "data2"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 1857
    .local v38, type:I
    const/4 v7, 0x1

    move/from16 v0, v38

    move v1, v7

    if-ne v0, v1, :cond_a

    add-int/lit8 v29, v29, 0x1

    .line 1858
    :cond_a
    const/4 v7, 0x3

    move/from16 v0, v38

    move v1, v7

    if-ne v0, v1, :cond_b

    add-int/lit8 v39, v39, 0x1

    :cond_b
    move/from16 v32, v33

    .line 1859
    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .end local v32           #imCount:I
    .end local v38           #type:I
    .restart local v33       #imCount:I
    :cond_c
    const-string v7, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1860
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendRelation(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1861
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_d
    const-string v7, "vnd.android.cursor.item/name"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1862
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredName(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1863
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_e
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1864
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredPostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1865
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_f
    const-string v7, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1866
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOrganization(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1867
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_10
    const-string v7, "vnd.android.cursor.item/im"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1868
    add-int/lit8 v32, v33, 0x1

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendIm(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V

    goto/16 :goto_4

    .line 1869
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_11
    const-string v7, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1870
    const-string v7, "data2"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 1871
    .local v24, eventType:Ljava/lang/Integer;
    if-eqz v24, :cond_12

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1872
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    :cond_12
    move/from16 v32, v33

    .line 1874
    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .end local v24           #eventType:Ljava/lang/Integer;
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_13
    const-string v7, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1876
    const-string v7, "data1"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1877
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_14
    const-string v7, "vnd.android.cursor.item/note"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1878
    const/16 v28, 0x1

    .line 1879
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1880
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_15
    const-string v7, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1881
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhoto(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1883
    .end local v32           #imCount:I
    .restart local v33       #imCount:I
    :cond_16
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Contacts upsync, unknown data: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v34, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    move/from16 v32, v33

    .end local v33           #imCount:I
    .restart local v32       #imCount:I
    goto/16 :goto_4

    .line 1887
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v32           #imCount:I
    .end local v34           #mimeType:Ljava/lang/String;
    .end local v35           #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v33       #imCount:I
    :cond_17
    if-nez v28, :cond_18

    .line 1888
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    .line 1893
    :cond_18
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    move/from16 v20, v19

    .end local v19           #emailCount:I
    .local v20, emailCount:I
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    .line 1894
    .restart local v16       #cv:Landroid/content/ContentValues;
    add-int/lit8 v19, v20, 0x1

    .end local v20           #emailCount:I
    .restart local v19       #emailCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v20

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V

    move/from16 v20, v19

    .end local v19           #emailCount:I
    .restart local v20       #emailCount:I
    goto :goto_5

    .line 1898
    .end local v16           #cv:Landroid/content/ContentValues;
    :cond_19
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 1899
    const/16 v26, 0x1

    .line 1900
    .local v26, groupFirst:Z
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 1902
    .local v31, id:I
    sget-object v7, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide v8, v0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUP_TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 1906
    .local v13, c:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1907
    if-eqz v26, :cond_1a

    .line 1908
    const/16 v7, 0x55

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1909
    const/16 v26, 0x0

    .line 1911
    :cond_1a
    const/16 v7, 0x56

    const/4 v8, 0x0

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1914
    :cond_1b
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1917
    .end local v13           #c:Landroid/database/Cursor;
    .end local v31           #id:I
    :cond_1c
    if-nez v26, :cond_1d

    .line 1918
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1921
    .end local v26           #groupFirst:Z
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    move-object v7, v0

    const-string v8, "_id"

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1924
    .end local v17           #displayName:Ljava/lang/String;
    .end local v20           #emailCount:I
    .end local v21           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v22           #entity:Landroid/content/Entity;
    .end local v23           #entityValues:Landroid/content/ContentValues;
    .end local v27           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v28           #hasNotes:Z
    .end local v29           #homePhoneCount:I
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v33           #imCount:I
    .end local v37           #serverId:Ljava/lang/String;
    .end local v39           #workPhoneCount:I
    :cond_1e
    if-nez v25, :cond_1f

    .line 1925
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1928
    :cond_1f
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    .line 1931
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .locals 1
    .parameter "protocolVersion"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->setPimSyncOptions(Ljava/lang/Double;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 148
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 6
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    sget-object v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    :try_start_0
    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 215
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v3, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 217
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SyncKey set to "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, " in ContactsProvider"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p1, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 223
    monitor-exit v2

    .line 224
    return-void

    .line 218
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 219
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in ContactsProvider"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public wipe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 166
    return-void
.end method
