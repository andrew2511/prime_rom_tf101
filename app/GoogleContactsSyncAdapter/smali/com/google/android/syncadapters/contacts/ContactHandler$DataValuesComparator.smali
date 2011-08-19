.class Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;
.super Ljava/lang/Object;
.source "ContactHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/contacts/ContactHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataValuesComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATA_AND_IS_PRIMARY_COLUMNS:[Ljava/lang/String;

.field private static final EMPTY:[Ljava/lang/String;

.field static final sKeyColumns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNonDataFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mRequireExactMatch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1552
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "data1"

    aput-object v2, v1, v6

    const-string v2, "data2"

    aput-object v2, v1, v7

    const-string v2, "data3"

    aput-object v2, v1, v8

    const-string v2, "data4"

    aput-object v2, v1, v5

    const-string v2, "data5"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "data6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "data7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "data8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "data9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "data10"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "data11"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "data12"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "data13"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "data14"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "data15"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "group_sourceid"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "data_sync1"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "data_sync2"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "data_sync3"

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->DATA_AND_IS_PRIMARY_COLUMNS:[Ljava/lang/String;

    .line 1575
    new-array v1, v6, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->EMPTY:[Ljava/lang/String;

    .line 1578
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    .line 1579
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/email_v2"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/contact_event"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    const-string v4, "data2"

    aput-object v4, v3, v7

    const-string v4, "data3"

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/group_membership"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "group_sourceid"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/im"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    const-string v4, "data5"

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/nickname"

    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/note"

    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/organization"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/photo"

    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/relation"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    const-string v4, "data2"

    aput-object v4, v3, v7

    const-string v4, "data3"

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/name"

    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/sip_address"

    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->EMPTY:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/website"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.com.google.cursor.item/contact_calendar_link"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.com.google.cursor.item/contact_external_id"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.com.google.cursor.item/contact_hobby"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.com.google.cursor.item/contact_jot"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.com.google.cursor.item/contact_language"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    const-string v4, "data2"

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.com.google.cursor.item/contact_user_defined_field"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    const-string v4, "data2"

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.com.google.cursor.item/contact_misc"

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    const-string v4, "data2"

    aput-object v4, v3, v7

    const-string v4, "data3"

    aput-object v4, v3, v8

    const-string v4, "data4"

    aput-object v4, v3, v5

    const-string v4, "data5"

    aput-object v4, v3, v9

    const/4 v4, 0x5

    const-string v5, "data6"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "data7"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "data8"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "data9"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "data10"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "data11"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    const-string v2, "vnd.com.google.cursor.item/contact_extended_property"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v6

    const-string v4, "data2"

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sNonDataFields:Ljava/util/HashMap;

    .line 1636
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1637
    .local v0, columnCollection:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "data_sync3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1638
    const-string v1, "data_sync4"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1639
    const-string v1, "data15"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1640
    const-string v1, "is_primary"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1641
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sNonDataFields:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #columnCollection:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1644
    .restart local v0       #columnCollection:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1645
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sNonDataFields:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #columnCollection:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1648
    .restart local v0       #columnCollection:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "data4"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1649
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sNonDataFields:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #columnCollection:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1652
    .restart local v0       #columnCollection:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "is_primary"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1653
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sNonDataFields:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #columnCollection:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1656
    .restart local v0       #columnCollection:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "is_primary"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1657
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sNonDataFields:Ljava/util/HashMap;

    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "requireExactMatch"

    .prologue
    .line 1546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1547
    iput-boolean p1, p0, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->mRequireExactMatch:Z

    .line 1548
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 11
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 1661
    const-string v8, "mimetype"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1662
    .local v6, mimetype:Ljava/lang/String;
    const-string v8, "mimetype"

    invoke-static {v8, p1, p2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->access$000(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v7

    .line 1663
    .local v7, result:I
    if-eqz v7, :cond_0

    move v8, v7

    .line 1699
    :goto_0
    return v8

    .line 1672
    :cond_0
    iget-boolean v8, p0, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->mRequireExactMatch:Z

    if-eqz v8, :cond_3

    .line 1673
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->DATA_AND_IS_PRIMARY_COLUMNS:[Ljava/lang/String;

    .line 1681
    .local v4, keyColumns:[Ljava/lang/String;
    :cond_1
    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sNonDataFields:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1682
    .local v2, columnsToSkip:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v1, v0, v3

    .line 1683
    .local v1, columnName:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1682
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1675
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #columnName:Ljava/lang/String;
    .end local v2           #columnsToSkip:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3           #i$:I
    .end local v4           #keyColumns:[Ljava/lang/String;
    .end local v5           #len$:I
    :cond_3
    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->sKeyColumns:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1676
    .restart local v4       #keyColumns:[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1677
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no key columns for mimetype "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1686
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #columnName:Ljava/lang/String;
    .restart local v2       #columnsToSkip:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_4
    invoke-static {v1, p1, p2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->access$000(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v7

    .line 1687
    if-eqz v7, :cond_2

    move v8, v7

    .line 1688
    goto :goto_0

    .line 1692
    .end local v1           #columnName:Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    const-string v8, "is_primary"

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1693
    :cond_6
    const-string v8, "is_primary"

    invoke-static {v8, p1, p2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->access$100(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v7

    .line 1694
    if-eqz v7, :cond_7

    move v8, v7

    .line 1695
    goto :goto_0

    .line 1699
    :cond_7
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1543
    check-cast p1, Landroid/content/ContentValues;

    .end local p1
    check-cast p2, Landroid/content/ContentValues;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;->compare(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method
