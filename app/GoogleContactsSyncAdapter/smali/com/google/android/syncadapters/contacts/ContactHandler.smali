.class public Lcom/google/android/syncadapters/contacts/ContactHandler;
.super Ljava/lang/Object;
.source "ContactHandler.java"

# interfaces
.implements Lcom/google/android/syncadapters/EntryAndEntityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;
    }
.end annotation


# static fields
.field private static final DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

.field private static final DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

.field static final ENTRY_IM_PROTOCOL_TO_PROVIDER_PROTOCOL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TO_PROVIDER_PRIORITY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TO_PROVIDER_SENSITIVITY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_CALENDAR_LINK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_EMAIL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_EVENT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_EXTERNAL_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_IM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_JOT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_ORGANIZATION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_PHONE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_POSTAL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_RELATION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_SIP_ADDRESS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_WEBSITE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROJECTION_PHOTO_FULLDATA:[Ljava/lang/String;

.field static final PROJECTION_PHOTO_METADATA:[Ljava/lang/String;

.field static final PROVIDER_IM_PROTOCOL_TO_ENTRY_PROTOCOL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TO_ENTRY_PRIORITY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TO_ENTRY_SENSITIVITY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_CALENDAR_LINK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_EMAIL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_EVENT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_EXTERNAL_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_IM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_JOT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_ORGANIZATION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_PHONE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_POSTAL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_RELATION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_SIP_ADDRESS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_WEBSITE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final SELECTION_ARGS_PHOTO_METADATA_MIMETYPE:[Ljava/lang/String;

.field static final SERVER_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    .line 165
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/photo"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SELECTION_ARGS_PHOTO_METADATA_MIMETYPE:[Ljava/lang/String;

    .line 167
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "data_sync2"

    aput-object v1, v0, v4

    const-string v1, "data_sync1"

    aput-object v1, v0, v5

    const-string v1, "data_version"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROJECTION_PHOTO_METADATA:[Ljava/lang/String;

    .line 174
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "data_sync2"

    aput-object v1, v0, v4

    const-string v1, "data_sync1"

    aput-object v1, v0, v5

    const-string v1, "data_version"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROJECTION_PHOTO_FULLDATA:[Ljava/lang/String;

    .line 1734
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    invoke-direct {v0, v3}, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;-><init>(Z)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    .line 1736
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    invoke-direct {v0, v7}, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;-><init>(Z)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    .line 1749
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1750
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_IM_PROTOCOL_TO_PROVIDER_PROTOCOL:Ljava/util/HashMap;

    .line 1761
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_IM_PROTOCOL_TO_ENTRY_PROTOCOL:Ljava/util/HashMap;

    .line 1763
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1764
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EMAIL:Ljava/util/HashMap;

    .line 1769
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EMAIL:Ljava/util/HashMap;

    .line 1771
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1772
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_PHONE:Ljava/util/HashMap;

    .line 1793
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_PHONE:Ljava/util/HashMap;

    .line 1795
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1796
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_POSTAL:Ljava/util/HashMap;

    .line 1801
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_POSTAL:Ljava/util/HashMap;

    .line 1803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1804
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_IM:Ljava/util/HashMap;

    .line 1809
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_IM:Ljava/util/HashMap;

    .line 1811
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1812
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_ORGANIZATION:Ljava/util/HashMap;

    .line 1816
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_ORGANIZATION:Ljava/util/HashMap;

    .line 1818
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1819
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_WEBSITE:Ljava/util/HashMap;

    .line 1828
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_WEBSITE:Ljava/util/HashMap;

    .line 1830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1831
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_RELATION:Ljava/util/HashMap;

    .line 1847
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_RELATION:Ljava/util/HashMap;

    .line 1849
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1850
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_JOT:Ljava/util/HashMap;

    .line 1856
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_JOT:Ljava/util/HashMap;

    .line 1858
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1859
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EXTERNAL_ID:Ljava/util/HashMap;

    .line 1865
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EXTERNAL_ID:Ljava/util/HashMap;

    .line 1867
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1868
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TO_PROVIDER_PRIORITY:Ljava/util/HashMap;

    .line 1873
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TO_ENTRY_PRIORITY:Ljava/util/HashMap;

    .line 1875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1876
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TO_PROVIDER_SENSITIVITY:Ljava/util/HashMap;

    .line 1886
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TO_ENTRY_SENSITIVITY:Ljava/util/HashMap;

    .line 1888
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1889
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1893
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_CALENDAR_LINK:Ljava/util/HashMap;

    .line 1894
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_CALENDAR_LINK:Ljava/util/HashMap;

    .line 1896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1897
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EVENT:Ljava/util/HashMap;

    .line 1901
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EVENT:Ljava/util/HashMap;

    .line 1903
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1904
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_SIP_ADDRESS:Ljava/util/HashMap;

    .line 1909
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_SIP_ADDRESS:Ljava/util/HashMap;

    .line 1912
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1913
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1914
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/note"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1915
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1916
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1917
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_misc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1918
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1919
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/website"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1920
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_hobby"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1921
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_user_defined_field"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1922
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_language"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1923
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_calendar_link"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1924
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_external_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1925
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_jot"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1926
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/relation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1927
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1928
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1929
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1930
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1931
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1932
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/im"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1933
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_extended_property"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1934
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1936
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->compareStringColumn(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->compareBooleanColumn(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method private static compareBooleanColumn(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 8
    .parameter "columnName"
    .parameter "o1"
    .parameter "o2"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1704
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    move v0, v5

    .line 1705
    .local v0, b1:Z
    :goto_0
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move v1, v5

    .line 1706
    .local v1, b2:Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 1707
    if-eqz v0, :cond_2

    const/4 v2, -0x1

    .line 1709
    :goto_2
    return v2

    .end local v0           #b1:Z
    .end local v1           #b2:Z
    :cond_0
    move v0, v4

    .line 1704
    goto :goto_0

    .restart local v0       #b1:Z
    :cond_1
    move v1, v4

    .line 1705
    goto :goto_1

    .restart local v1       #b2:Z
    :cond_2
    move v2, v5

    .line 1707
    goto :goto_2

    :cond_3
    move v2, v4

    .line 1709
    goto :goto_2
.end method

.method private static compareStringColumn(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1714
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1715
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1716
    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v3

    .line 1719
    :cond_0
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v3

    .line 1722
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 1723
    const/4 v0, 0x0

    .line 1731
    :goto_0
    return v0

    .line 1725
    :cond_2
    if-nez v0, :cond_3

    .line 1726
    const/4 v0, -0x1

    goto :goto_0

    .line 1728
    :cond_3
    if-nez v1, :cond_4

    .line 1729
    const/4 v0, 0x1

    goto :goto_0

    .line 1731
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static downloadPhotos(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/wireless/gdata2/contacts/client/ContactsClient;)I
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1373
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    .line 1374
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p0 .. p0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 1375
    const/4 v11, 0x0

    .line 1377
    :try_start_0
    sget-object v6, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROJECTION_PHOTO_METADATA:[Ljava/lang/String;

    const-string v7, "mimetype=? AND data_sync2 IS NOT NULL AND (data_sync3 IS NULL   OR data_sync3!=data_sync2) AND data_sync1 IS NOT NULL"

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactHandler;->SELECTION_ARGS_PHOTO_METADATA_MIMETYPE:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Landroid/database/AbstractWindowedCursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move v4, v11

    .line 1381
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/database/AbstractWindowedCursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1382
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v5

    .line 1383
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v7

    .line 1384
    const/4 v9, 0x2

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1385
    const/4 v11, 0x3

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1386
    const/4 v12, 0x4

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v12

    .line 1387
    const-wide/16 v14, 0x1

    add-long/2addr v14, v12

    .line 1389
    const-string v16, "ContactsSyncAdapter"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1390
    const-string v16, "ContactsSyncAdapter"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "need to download photo row id "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for contact row id "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1400
    const/4 v8, 0x0

    :try_start_2
    move-object/from16 v0, p4

    move-object v1, v11

    move-object/from16 v2, p2

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 1402
    invoke-static {v8}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v8

    .line 1408
    :goto_1
    :try_start_3
    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string v17, "data15"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v16, "data_sync3"

    move-object v0, v8

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v16, "data_version"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v16, "data_sync4"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "data_version="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1416
    add-int/lit8 v4, v4, 0x1

    .line 1432
    :goto_2
    :try_start_4
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1435
    :catchall_0
    move-exception p1

    move/from16 p2, v4

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/database/AbstractWindowedCursor;->close()V

    throw p1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1437
    :catch_0
    move-exception p0

    move/from16 p1, p2

    .line 1438
    :goto_3
    const-string p2, "ContactsSyncAdapter"

    const-string p4, "error writing photo data into provider"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 p2, v0

    const-wide/16 v4, 0x1

    add-long p2, p2, v4

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/content/SyncStats;->numParseExceptions:J

    move/from16 p0, p1

    .line 1447
    :goto_4
    return p0

    .line 1403
    :catch_1
    move-exception v8

    .line 1404
    :try_start_6
    const-string v8, "ContactsSyncAdapter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ResourceNotFoundException while downloading photo "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", treating it as an empty photo"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1406
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1417
    :catch_2
    move-exception p1

    .line 1418
    :try_start_7
    throw p1

    .line 1419
    :catch_3
    move-exception v8

    .line 1422
    const-string v16, "ContactsSyncAdapter"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error downloading photo "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v16

    move-object v1, v11

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1423
    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "data_sync3"

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "data_version"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "data_sync4"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data_version="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 1435
    :cond_1
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/database/AbstractWindowedCursor;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move/from16 p0, v4

    .line 1446
    goto/16 :goto_4

    .line 1440
    :catch_4
    move-exception p0

    move/from16 p1, v11

    .line 1441
    :goto_5
    const-string p2, "ContactsSyncAdapter"

    const-string p4, "error writing photo data into provider"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1442
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 p2, v0

    const-wide/16 v4, 0x1

    add-long p2, p2, v4

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/content/SyncStats;->numParseExceptions:J

    move/from16 p0, p1

    .line 1446
    goto/16 :goto_4

    .line 1443
    :catch_5
    move-exception p0

    move/from16 p0, v11

    .line 1444
    :goto_6
    const-string p1, "ContactsSyncAdapter"

    const-string p2, "IOException downloading photo"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 p2, v0

    const-wide/16 v4, 0x1

    add-long p2, p2, v4

    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_4

    .line 1443
    :catch_6
    move-exception p0

    move/from16 p0, v4

    goto :goto_6

    :catch_7
    move-exception p0

    move/from16 p0, p2

    goto :goto_6

    .line 1440
    :catch_8
    move-exception p0

    move/from16 p1, v4

    goto :goto_5

    :catch_9
    move-exception p0

    move/from16 p1, p2

    goto :goto_5

    .line 1437
    :catch_a
    move-exception p0

    move/from16 p1, v11

    goto/16 :goto_3

    :catch_b
    move-exception p0

    move/from16 p1, v4

    goto/16 :goto_3
.end method

.method private static dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1740
    const-string v0, "ContactsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataValues for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    .line 1742
    const-string v1, "ContactsSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1744
    :cond_0
    return-void
.end method

.method static newBirthdayDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBirthday()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1299
    const/4 v0, 0x0

    .line 1305
    :goto_0
    return-object v0

    .line 1301
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1302
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v1, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private static newContactValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1357
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1358
    const-string v1, "sourceid"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string v1, "sync1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEditUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v1, "sync2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v1, "sync3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    return-object v0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1067
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1068
    const-string v0, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_calendar_link"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_CALENDAR_LINK:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1071
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->getHRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v0, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1074
    return-object v1

    .line 1073
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1168
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1169
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EMAIL:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1172
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string v0, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v0, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1176
    return-object v1

    .line 1175
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Event;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1191
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1192
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EVENT:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Event;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Event;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Event;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    return-object v1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1078
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1079
    const-string v0, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_external_id"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EXTERNAL_ID:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-object v1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1161
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v1, "group_sourceid"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    return-object v0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)Landroid/content/ContentValues;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1130
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1131
    const-string v1, "mimetype"

    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v1

    .line 1134
    const/16 v4, 0xb

    if-ne v1, v4, :cond_0

    .line 1136
    const-string v4, "data5"

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v1, "data6"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v2, "data2"

    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_IM:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    const-string v1, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-string v1, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v1, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1156
    return-object v3

    .line 1138
    :cond_0
    if-ne v1, v5, :cond_1

    .line 1140
    const-string v1, "data5"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1141
    const-string v1, "data6"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolCustom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1144
    :cond_1
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_IM_PROTOCOL_TO_PROVIDER_PROTOCOL:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1146
    const-string v4, "data5"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1147
    const-string v1, "data6"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Jot;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1088
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1089
    const-string v0, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_jot"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_JOT:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Jot;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1091
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Jot;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    return-object v1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Language;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1048
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1049
    const-string v1, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_language"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v1, "data2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Language;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v1, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Language;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    return-object v0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Organization;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1096
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1097
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_ORGANIZATION:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1100
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v0, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v0, "data5"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgDepartment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v0, "data6"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgJobDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v0, "data7"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const-string v0, "data8"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getNameYomi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v0, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1108
    return-object v1

    .line 1107
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1056
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1057
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_PHONE:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1060
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string v0, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1063
    return-object v1

    .line 1062
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Relation;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1201
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1202
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_RELATION:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Relation;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Relation;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Relation;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-object v1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)Landroid/content/ContentValues;
    .locals 5
    .parameter "serverItem"

    .prologue
    .line 1211
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1212
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const-string v3, "data2"

    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_SIP_ADDRESS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1224
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, address:Ljava/lang/String;
    const-string v2, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1229
    :cond_0
    const-string v2, "data1"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v2, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v2, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1232
    return-object v1

    .line 1231
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1112
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1113
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_POSTAL:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1115
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v0, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1117
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v0, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string v0, "data5"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getPobox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v0, "data6"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v0, "data7"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v0, "data9"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getPostcode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v0, "data8"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v0, "data10"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    return-object v1

    .line 1116
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1040
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    const-string v1, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_user_defined_field"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v1, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v1, "data2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    return-object v0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/WebSite;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1180
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1181
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_WEBSITE:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1184
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getHRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v0, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1187
    return-object v1

    .line 1186
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/data/ExtendedProperty;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/gdata2/data/ExtendedProperty;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1239
    if-nez v1, :cond_1

    .line 1240
    const-string v1, "ContactsSyncAdapter"

    const-string v2, "dropping unparsable extended property: missing value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_0
    :goto_0
    return-object v0

    .line 1245
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1250
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1251
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1254
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1255
    const-string v4, "mimetype"

    const-string v5, "vnd.com.google.cursor.item/contact_extended_property"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v4, "data1"

    invoke-virtual {v3, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v4, "data2"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1259
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1246
    :catch_1
    move-exception v1

    .line 1247
    const-string v1, "ContactsSyncAdapter"

    const-string v2, "dropping unparsable extended property: parse error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static newDataValuesFromHobbyEntryElement(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1033
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1034
    const-string v1, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_hobby"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v1, "data1"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-object v0
.end method

.method static newFocusMiscDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1309
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1310
    const-string v0, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_misc"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBillingInformation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v0, "data2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getDirectoryServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 1314
    const-string v2, "female"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1315
    const-string v0, "data3"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    :cond_0
    :goto_0
    const-string v0, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getInitials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v0, "data5"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getMaidenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v0, "data6"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getMileage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v0, "data7"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOccupation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v0, "data10"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v0, "data11"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v2, "data8"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TO_PROVIDER_PRIORITY:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPriority()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1327
    const-string v0, "data9"

    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TO_PROVIDER_SENSITIVITY:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSensitivity()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1330
    return-object v1

    .line 1316
    :cond_1
    const-string v2, "male"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    const-string v0, "data3"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method static newNameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 7
    .parameter "entry"

    .prologue
    .line 1267
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1268
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v0

    .line 1270
    .local v0, name:Lcom/google/wireless/gdata2/contacts/data/Name;
    if-eqz v0, :cond_0

    .line 1271
    const-string v5, "data2"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v5, "data3"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string v5, "data4"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getNamePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v5, "data5"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getAdditionalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v5, "data6"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getNameSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenNameYomi()Ljava/lang/String;

    move-result-object v2

    .line 1277
    .local v2, phoneticGivenName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getAdditionalNameYomi()Ljava/lang/String;

    move-result-object v3

    .line 1278
    .local v3, phoneticMiddleName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyNameYomi()Ljava/lang/String;

    move-result-object v1

    .line 1279
    .local v1, phoneticFamilyName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1284
    const-string v5, "data7"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFullNameYomi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string v5, "data8"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1286
    const-string v5, "data9"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1292
    :goto_0
    const-string v5, "data1"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    .end local v1           #phoneticFamilyName:Ljava/lang/String;
    .end local v2           #phoneticGivenName:Ljava/lang/String;
    .end local v3           #phoneticMiddleName:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 1288
    .restart local v1       #phoneticFamilyName:Ljava/lang/String;
    .restart local v2       #phoneticGivenName:Ljava/lang/String;
    .restart local v3       #phoneticMiddleName:Ljava/lang/String;
    :cond_1
    const-string v5, "data7"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const-string v5, "data8"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const-string v5, "data9"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static newNicknameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter "entry"

    .prologue
    .line 1334
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1335
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v1, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    return-object v0
.end method

.method static newNoteDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1341
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1342
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 1344
    const-string v2, "data1"

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    return-object v0
.end method

.method private static newPhotoDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter "entry"

    .prologue
    .line 1349
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1350
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v1, "data_sync1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const-string v1, "data_sync2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    return-object v0
.end method

.method private static providerTypeToEntryType(Ljava/lang/Integer;Ljava/util/HashMap;I)B
    .locals 2
    .parameter "typeInProvider"
    .parameter
    .parameter "defaultProviderType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;I)B"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 626
    .local v0, typeInEntry:Ljava/lang/Byte;
    if-eqz p0, :cond_0

    .line 627
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #typeInEntry:Ljava/lang/Byte;
    check-cast v0, Ljava/lang/Byte;

    .line 629
    .restart local v0       #typeInEntry:Ljava/lang/Byte;
    :cond_0
    if-nez v0, :cond_1

    .line 630
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #typeInEntry:Ljava/lang/Byte;
    check-cast v0, Ljava/lang/Byte;

    .line 632
    .restart local v0       #typeInEntry:Ljava/lang/Byte;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1
.end method

.method private static setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 5
    .parameter "item"
    .parameter
    .parameter "values"
    .parameter "typeColumn"
    .parameter "labelColumn"
    .parameter "defaultType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/gdata2/contacts/data/TypedElement;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "B)V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Byte;>;"
    const/4 v4, -0x1

    .line 990
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, label:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 992
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setLabel(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p0, v4}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setType(B)V

    .line 1006
    :goto_0
    return-void

    .line 996
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 997
    .local v2, typeInProvider:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 998
    .local v1, typeInEntry:Ljava/lang/Byte;
    if-eqz v2, :cond_1

    .line 999
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeInEntry:Ljava/lang/Byte;
    check-cast v1, Ljava/lang/Byte;

    .line 1001
    .restart local v1       #typeInEntry:Ljava/lang/Byte;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v4, :cond_3

    .line 1002
    :cond_2
    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 1004
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setType(B)V

    .line 1005
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setLabel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<TA;TB;>;)",
            "Ljava/util/HashMap",
            "<TB;TA;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, originalMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TA;TB;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v2, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TB;TA;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 189
    .local v3, originalValue:Ljava/lang/Object;,"TB;"
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already encountered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    .end local v3           #originalValue:Ljava/lang/Object;,"TB;"
    :cond_1
    return-object v2
.end method

.method static uploadPhotos(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/wireless/gdata2/contacts/client/ContactsClient;)I
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1457
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v7

    .line 1458
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p0 .. p0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 1459
    const/4 v13, 0x0

    .line 1461
    :try_start_0
    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROJECTION_PHOTO_FULLDATA:[Ljava/lang/String;

    const-string v9, "mimetype=? AND (data_sync4 IS NULL OR data_sync4!=data_version) AND (data15 IS NOT NULL OR data_sync2 IS NOT NULL) AND data_sync1 IS NOT NULL"

    sget-object v10, Lcom/google/android/syncadapters/contacts/ContactHandler;->SELECTION_ARGS_PHOTO_METADATA_MIMETYPE:[Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Landroid/database/AbstractWindowedCursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move v11, v13

    .line 1465
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/database/AbstractWindowedCursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1466
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v13

    .line 1467
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v8

    .line 1468
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1469
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1470
    const/4 v7, 0x4

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v15

    .line 1471
    const/4 v7, 0x5

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/database/AbstractWindowedCursor;->getBlob(I)[B

    move-result-object v17

    .line 1472
    const-wide/16 v18, 0x1

    add-long v18, v18, v15

    .line 1474
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1478
    if-eqz v17, :cond_1

    .line 1479
    :try_start_2
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1480
    const-string v17, "ContactsSyncAdapter"

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1481
    const-string v17, "ContactsSyncAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "uploading photo row id "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for contact row id "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_0
    const-string v8, "image/*"

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->updateMediaEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/MediaEntry;

    .line 1496
    :goto_1
    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "data_sync3"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "data_sync2"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "data_version"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "data_sync4"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data_version="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1504
    add-int/lit8 v6, v11, 0x1

    .line 1521
    :goto_2
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v11, v6

    .line 1522
    goto/16 :goto_0

    .line 1487
    :cond_1
    :try_start_4
    const-string v7, "ContactsSyncAdapter"

    const/16 v17, 0x2

    move-object v0, v7

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1488
    const-string v7, "ContactsSyncAdapter"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "deleting photo row id "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, " for contact row id "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_2
    move-object/from16 v0, p4

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 1505
    :catch_0
    move-exception p1

    .line 1506
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1524
    :catchall_0
    move-exception p1

    move/from16 p2, v11

    :goto_3
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/database/AbstractWindowedCursor;->close()V

    throw p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1526
    :catch_1
    move-exception p0

    move/from16 p1, p2

    .line 1527
    :goto_4
    const-string p2, "ContactsSyncAdapter"

    const-string p4, "error writing photo metadata into provider"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1528
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 p2, v0

    const-wide/16 v6, 0x1

    add-long p2, p2, v6

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/content/SyncStats;->numParseExceptions:J

    move/from16 p0, p1

    .line 1536
    :goto_5
    return p0

    .line 1507
    :catch_2
    move-exception v7

    .line 1511
    :try_start_7
    const-string v8, "ContactsSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error uploading photo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", disabling uploads "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "until it changes again"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1513
    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data_version"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data_sync4"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data_version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v6, v11

    goto/16 :goto_2

    .line 1524
    :cond_3
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/database/AbstractWindowedCursor;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move/from16 p0, v11

    .line 1535
    goto :goto_5

    .line 1529
    :catch_3
    move-exception p0

    move/from16 p1, v13

    .line 1530
    :goto_6
    const-string p2, "ContactsSyncAdapter"

    const-string p4, "error writing photo metadata into provider"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1531
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 p2, v0

    const-wide/16 v6, 0x1

    add-long p2, p2, v6

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/content/SyncStats;->numParseExceptions:J

    move/from16 p0, p1

    .line 1535
    goto/16 :goto_5

    .line 1532
    :catch_4
    move-exception p0

    move/from16 p0, v13

    .line 1533
    :goto_7
    const-string p1, "ContactsSyncAdapter"

    const-string p2, "IOException while uploading photo"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 p2, v0

    const-wide/16 v6, 0x1

    add-long p2, p2, v6

    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_5

    .line 1532
    :catch_5
    move-exception p0

    move/from16 p0, v11

    goto :goto_7

    :catch_6
    move-exception p0

    move/from16 p0, p2

    goto :goto_7

    .line 1529
    :catch_7
    move-exception p0

    move/from16 p1, v11

    goto :goto_6

    :catch_8
    move-exception p0

    move/from16 p1, p2

    goto :goto_6

    .line 1526
    :catch_9
    move-exception p0

    move/from16 p1, v13

    goto/16 :goto_4

    :catch_a
    move-exception p0

    move/from16 p1, v11

    goto/16 :goto_4

    .line 1524
    :catchall_1
    move-exception p1

    move/from16 p2, v6

    goto/16 :goto_3
.end method

.method public static validateDate(Landroid/text/format/Time;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "validator"
    .parameter "date"
    .parameter "isBirthday"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 637
    if-nez p1, :cond_0

    move v1, v3

    .line 646
    :goto_0
    return v1

    .line 640
    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 643
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 644
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Landroid/text/format/Time;->allDay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    move v1, v3

    .line 646
    goto :goto_0
.end method


# virtual methods
.method public applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 63
    .parameter
    .parameter "account"
    .parameter "client"
    .parameter
    .parameter "entry"
    .parameter "entity"
    .parameter "clearDirtyFlag"
    .parameter "syncResult"
    .parameter "contactUriWithAccount"
    .parameter "dataUriWithAccount"
    .parameter "groupUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            "Landroid/content/Entity;",
            "Z",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, contactsSyncSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v60

    .line 234
    .local v60, verboseLogging:Z
    if-nez v60, :cond_0

    const-string v5, "ContactsSyncAdapterFine"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    const/4 v5, 0x1

    move/from16 v38, v5

    .line 236
    .local v38, fineOrVerboseLogging:Z
    :goto_0
    if-eqz v60, :cond_1

    .line 237
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entry is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entity is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    const/16 v29, 0x0

    .line 242
    .local v29, contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    if-eqz p5, :cond_2

    .line 243
    move-object/from16 v0, p5

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    move-object/from16 v29, v0

    .line 247
    :cond_2
    if-nez p4, :cond_8

    const/4 v5, 0x1

    move/from16 v43, v5

    .line 248
    .local v43, isInSyncSet:Z
    :goto_1
    if-nez v43, :cond_4

    .line 249
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 250
    .local v53, object:Ljava/lang/Object;
    move-object/from16 v0, v53

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    move-object/from16 v39, v0

    .line 251
    .local v39, group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    invoke-virtual/range {v39 .. v39}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 254
    :try_start_0
    invoke-virtual/range {v39 .. v39}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->getGroup()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v40

    .line 260
    .local v40, groupSourceId:Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 261
    const/16 v43, 0x1

    .line 267
    .end local v39           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .end local v40           #groupSourceId:Ljava/lang/String;
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v53           #object:Ljava/lang/Object;
    :cond_4
    if-eqz v29, :cond_5

    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v43, :cond_9

    :cond_5
    const/4 v5, 0x1

    move/from16 v42, v5

    .line 268
    .local v42, isDelete:Z
    :goto_3
    if-nez v42, :cond_a

    if-nez p6, :cond_a

    const/4 v5, 0x1

    move/from16 v44, v5

    .line 269
    .local v44, isInsert:Z
    :goto_4
    if-nez v42, :cond_b

    if-eqz p6, :cond_b

    const/4 v5, 0x1

    move/from16 v45, v5

    .line 271
    .local v45, isUpdate:Z
    :goto_5
    if-eqz v42, :cond_c

    .line 272
    if-eqz p6, :cond_6

    .line 273
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    move-wide v2, v5

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V

    .line 276
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 597
    :cond_6
    :goto_6
    return-void

    .line 234
    .end local v29           #contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .end local v38           #fineOrVerboseLogging:Z
    .end local v42           #isDelete:Z
    .end local v43           #isInSyncSet:Z
    .end local v44           #isInsert:Z
    .end local v45           #isUpdate:Z
    :cond_7
    const/4 v5, 0x0

    move/from16 v38, v5

    goto/16 :goto_0

    .line 247
    .restart local v29       #contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .restart local v38       #fineOrVerboseLogging:Z
    :cond_8
    const/4 v5, 0x0

    move/from16 v43, v5

    goto/16 :goto_1

    .line 255
    .restart local v39       #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .restart local v41       #i$:Ljava/util/Iterator;
    .restart local v43       #isInSyncSet:Z
    .restart local v53       #object:Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object/from16 v32, v5

    .line 258
    .local v32, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_2

    .line 267
    .end local v32           #e:Ljava/io/UnsupportedEncodingException;
    .end local v39           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v53           #object:Ljava/lang/Object;
    :cond_9
    const/4 v5, 0x0

    move/from16 v42, v5

    goto :goto_3

    .line 268
    .restart local v42       #isDelete:Z
    :cond_a
    const/4 v5, 0x0

    move/from16 v44, v5

    goto :goto_4

    .line 269
    .restart local v44       #isInsert:Z
    :cond_b
    const/4 v5, 0x0

    move/from16 v45, v5

    goto :goto_5

    .line 280
    .restart local v45       #isUpdate:Z
    :cond_c
    invoke-static/range {v29 .. v29}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newContactValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v7

    .line 281
    .local v7, contactsValuesServer:Landroid/content/ContentValues;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v31, dataValuesListServer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static/range {v29 .. v29}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static/range {v29 .. v29}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNoteDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static/range {v29 .. v29}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNicknameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static/range {v29 .. v29}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newBirthdayDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v28

    .line 287
    .local v28, birthdayDataValues:Landroid/content/ContentValues;
    if-eqz v28, :cond_d

    .line 288
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_d
    invoke-static/range {v29 .. v29}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newFocusMiscDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 293
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 296
    :cond_e
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_8
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 297
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 301
    :cond_f
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_9
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 302
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 305
    :cond_10
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_a
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 306
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/Organization;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Organization;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 309
    :cond_11
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_12
    :goto_b
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 310
    .restart local v53       #object:Ljava/lang/Object;
    move-object/from16 v0, v53

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    move-object/from16 v39, v0

    .line 311
    .restart local v39       #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    invoke-virtual/range {v39 .. v39}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_12

    .line 313
    invoke-static/range {v39 .. v39}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)Landroid/content/ContentValues;

    move-result-object v59

    .line 314
    .local v59, values:Landroid/content/ContentValues;
    move-object/from16 v0, v31

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 317
    .end local v39           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .end local v53           #object:Ljava/lang/Object;
    .end local v59           #values:Landroid/content/ContentValues;
    :cond_13
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getHobbies()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_c
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 318
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Ljava/lang/String;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromHobbyEntryElement(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 321
    :cond_14
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getUserDefinedFields()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_d
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 322
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 325
    :cond_15
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLanguages()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_e
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 326
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/Language;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Language;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 329
    :cond_16
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExternalIds()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_f
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 330
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 333
    :cond_17
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getCalendarLinks()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_10
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 334
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 337
    :cond_18
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getJots()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_11
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 338
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/Jot;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Jot;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 341
    :cond_19
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_12
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 342
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 345
    :cond_1a
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getWebSites()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_13
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 346
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/WebSite;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 349
    :cond_1b
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getRelations()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_14
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 350
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/Relation;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Relation;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 353
    :cond_1c
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEvents()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_15
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 354
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/Event;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Event;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 357
    :cond_1d
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSipAddresses()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_16
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 358
    .restart local v53       #object:Ljava/lang/Object;
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    .end local v53           #object:Ljava/lang/Object;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 361
    :cond_1e
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_1f
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    .line 362
    .restart local v53       #object:Ljava/lang/Object;
    move-object/from16 v0, v53

    check-cast v0, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    move-object/from16 v37, v0

    .line 363
    .local v37, extendedProperty:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    const-string v5, "android"

    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 364
    invoke-static/range {v37 .. v37}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/data/ExtendedProperty;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_17
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ContentValues;

    .line 365
    .local v58, v:Landroid/content/ContentValues;
    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 371
    .end local v37           #extendedProperty:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    .end local v53           #object:Ljava/lang/Object;
    .end local v58           #v:Landroid/content/ContentValues;
    :cond_20
    invoke-static/range {v29 .. v29}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newPhotoDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v21

    .line 374
    .local v21, serverPhotoValues:Landroid/content/ContentValues;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v30, dataValuesListExisting:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v44, :cond_25

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sourceid"

    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p9

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->newEntityDoesNotExistAssert(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 383
    .local v12, contactBackRefIfInsert:Ljava/lang/Integer;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    invoke-static/range {v5 .. v10}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 385
    const/4 v11, 0x0

    .line 388
    .local v11, contactIdIfUpdate:Ljava/lang/Long;
    const-string v5, "data_version"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v5, "data_sync4"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const/4 v13, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p10

    move-object/from16 v10, v21

    invoke-static/range {v8 .. v13}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 393
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numInserts:J

    .line 489
    :cond_21
    :goto_18
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_22

    .line 490
    sget-object v5, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
    sget-object v5, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    :cond_22
    if-eqz v60, :cond_23

    .line 495
    const-string v5, "existing (pre cleanup)"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V

    .line 496
    const-string v5, "server (pre cleanup)"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V

    .line 499
    :cond_23
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v51, newExisting:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v52, newServer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v46, Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    sget-object v7, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    .end local v7           #contactsValuesServer:Landroid/content/ContentValues;
    move-object/from16 v0, v46

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Comparator;)V

    .line 505
    .local v46, joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v46 .. v46}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_19
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    .line 506
    .local v55, result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    invoke-virtual/range {v55 .. v55}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getLeft()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/ContentValues;

    .line 507
    .local v36, existingValues:Landroid/content/ContentValues;
    invoke-virtual/range {v55 .. v55}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getRight()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/ContentValues;

    .line 508
    .local v24, serverValues:Landroid/content/ContentValues;
    if-eqz v36, :cond_31

    if-eqz v24, :cond_31

    .line 510
    if-eqz v60, :cond_24

    .line 511
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dropping identical data row: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setExistsOnServerFlag(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_19

    .line 395
    .end local v11           #contactIdIfUpdate:Ljava/lang/Long;
    .end local v12           #contactBackRefIfInsert:Ljava/lang/Integer;
    .end local v24           #serverValues:Landroid/content/ContentValues;
    .end local v36           #existingValues:Landroid/content/ContentValues;
    .end local v46           #joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    .end local v51           #newExisting:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v52           #newServer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v55           #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    .restart local v7       #contactsValuesServer:Landroid/content/ContentValues;
    :cond_25
    const/4 v12, 0x0

    .line 396
    .restart local v12       #contactBackRefIfInsert:Ljava/lang/Integer;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 397
    .restart local v11       #contactIdIfUpdate:Ljava/lang/Long;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 398
    .local v17, contactVersion:J
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getVersionColumnName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, p9

    invoke-static/range {v13 .. v18}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->newEntityVersionMatchesAssert(Landroid/net/Uri;JLjava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    const/16 v35, 0x0

    .line 401
    .local v35, existingPhotoValues:Landroid/content/ContentValues;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_26
    :goto_1a
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/Entity$NamedContentValues;

    .line 402
    .local v50, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v57, v0

    .line 403
    .local v57, uri:Landroid/net/Uri;
    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v59, v0

    .line 404
    .restart local v59       #values:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 405
    const-string v5, "vnd.android.cursor.item/photo"

    const-string v6, "mimetype"

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 406
    if-nez v35, :cond_27

    .line 407
    move-object/from16 v35, v59

    goto :goto_1a

    .line 410
    :cond_27
    const-string v5, "_id"

    move-object/from16 v0, v59

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-wide v2, v5

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V

    goto :goto_1a

    .line 416
    :cond_28
    const-string v5, "mimetype"

    move-object/from16 v0, v59

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 417
    .local v49, mimetype:Ljava/lang/String;
    sget-object v5, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    move-object v0, v5

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 418
    move-object/from16 v0, v30

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 424
    .end local v49           #mimetype:Ljava/lang/String;
    .end local v50           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v57           #uri:Landroid/net/Uri;
    .end local v59           #values:Landroid/content/ContentValues;
    :cond_29
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    move-object v8, v11

    invoke-static/range {v5 .. v10}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 426
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    .line 428
    if-nez v35, :cond_2a

    .line 430
    const-string v5, "data_version"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v5, "data_sync4"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    const/4 v13, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p10

    move-object/from16 v10, v21

    invoke-static/range {v8 .. v13}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_18

    .line 445
    :cond_2a
    const-string v5, "data_sync1"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 446
    .local v33, editUri:Ljava/lang/String;
    const-string v5, "data_sync2"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 447
    .local v34, etag:Ljava/lang/String;
    const-string v5, "data_sync1"

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 449
    .local v47, localEditUri:Ljava/lang/String;
    const-string v5, "data_sync2"

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 450
    .local v48, localEtag:Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 452
    :cond_2b
    const-string v5, "data_version"

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v61

    .line 454
    .local v61, version:J
    const-string v5, "data_sync4"

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v56

    .line 460
    .local v56, syncMetaVersion:Ljava/lang/Long;
    if-nez v56, :cond_2f

    .line 461
    const-string v5, "data_version"

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x1

    move/from16 v54, v5

    .line 463
    .local v54, photoExistsLocally:Z
    :goto_1b
    const-string v5, "data_version"

    const-wide/16 v6, 0x1

    add-long v6, v6, v61

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 465
    const-string v5, "data_sync4"

    if-eqz v54, :cond_2e

    move-wide/from16 v6, v61

    :goto_1c
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 482
    .end local v54           #photoExistsLocally:Z
    :cond_2c
    :goto_1d
    const-string v5, "_id"

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, p1

    move-object/from16 v20, p10

    invoke-static/range {v19 .. v24}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_18

    .line 461
    :cond_2d
    const/4 v5, 0x0

    move/from16 v54, v5

    goto :goto_1b

    .line 465
    .restart local v54       #photoExistsLocally:Z
    :cond_2e
    const-wide/16 v6, 0x1

    add-long v6, v6, v61

    goto :goto_1c

    .line 473
    .end local v54           #photoExistsLocally:Z
    :cond_2f
    invoke-static/range {v61 .. v62}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v56

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 474
    if-nez v34, :cond_30

    invoke-static/range {v61 .. v62}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v56

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 475
    const-string v5, "data15"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 477
    :cond_30
    const-string v5, "data_version"

    const-wide/16 v6, 0x1

    add-long v6, v6, v61

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 479
    const-string v5, "data_sync4"

    const-wide/16 v6, 0x1

    add-long v6, v6, v61

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1d

    .line 517
    .end local v7           #contactsValuesServer:Landroid/content/ContentValues;
    .end local v17           #contactVersion:J
    .end local v33           #editUri:Ljava/lang/String;
    .end local v34           #etag:Ljava/lang/String;
    .end local v35           #existingPhotoValues:Landroid/content/ContentValues;
    .end local v47           #localEditUri:Ljava/lang/String;
    .end local v48           #localEtag:Ljava/lang/String;
    .end local v56           #syncMetaVersion:Ljava/lang/Long;
    .end local v61           #version:J
    .restart local v24       #serverValues:Landroid/content/ContentValues;
    .restart local v36       #existingValues:Landroid/content/ContentValues;
    .restart local v46       #joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    .restart local v51       #newExisting:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v52       #newServer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v55       #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    :cond_31
    if-eqz v36, :cond_33

    .line 518
    if-eqz v60, :cond_32

    .line 519
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add existing values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_32
    move-object/from16 v0, v51

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 523
    :cond_33
    if-eqz v60, :cond_34

    .line 524
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add server values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_34
    move-object/from16 v0, v52

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 530
    .end local v24           #serverValues:Landroid/content/ContentValues;
    .end local v36           #existingValues:Landroid/content/ContentValues;
    .end local v55           #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    :cond_35
    move-object/from16 v31, v52

    .line 531
    move-object/from16 v30, v51

    .line 533
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    .line 534
    sget-object v5, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 535
    sget-object v5, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 538
    :cond_36
    if-eqz v38, :cond_37

    .line 539
    const-string v5, "existing (post cleanup)"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V

    .line 540
    const-string v5, "server (post cleanup)"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V

    .line 544
    :cond_37
    new-instance v46, Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    .end local v46           #joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    sget-object v7, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v46

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Comparator;)V

    .line 547
    .restart local v46       #joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v46 .. v46}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_1e
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    .line 548
    .restart local v55       #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    invoke-virtual/range {v55 .. v55}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getLeft()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/ContentValues;

    .line 549
    .restart local v36       #existingValues:Landroid/content/ContentValues;
    invoke-virtual/range {v55 .. v55}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getRight()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/ContentValues;

    .line 551
    .restart local v24       #serverValues:Landroid/content/ContentValues;
    if-eqz v36, :cond_39

    if-eqz v24, :cond_39

    .line 553
    if-eqz v38, :cond_38

    .line 554
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updating data row: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_38
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setExistsOnServerFlagInValues(Landroid/content/ContentValues;)V

    .line 557
    const-string v5, "_id"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, p1

    move-object/from16 v23, p10

    invoke-static/range {v22 .. v27}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto :goto_1e

    .line 560
    :cond_39
    if-eqz v36, :cond_3d

    .line 563
    if-eqz v38, :cond_3a

    .line 564
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting data row "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_3a
    const-string v5, "vnd.android.cursor.item/photo"

    const-string v6, "mimetype"

    move-object/from16 v0, v36

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 568
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "this should never happen"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 570
    :cond_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->hasBeenOnServer(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 571
    const-string v5, "_id"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move-wide v2, v5

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V

    goto/16 :goto_1e

    .line 575
    :cond_3c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setExistsOnServerFlag(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_1e

    .line 578
    :cond_3d
    if-eqz v38, :cond_3e

    .line 579
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inserting data row "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setExistsOnServerFlagInValues(Landroid/content/ContentValues;)V

    .line 583
    const/4 v13, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p10

    move-object/from16 v10, v24

    invoke-static/range {v8 .. v13}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_1e

    .line 589
    .end local v24           #serverValues:Landroid/content/ContentValues;
    .end local v36           #existingValues:Landroid/content/ContentValues;
    .end local v55           #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    :cond_3f
    if-eqz p7, :cond_6

    .line 590
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 591
    .local v10, syncDirtyValues:Landroid/content/ContentValues;
    const-string v5, "dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    const/4 v13, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p9

    invoke-static/range {v8 .. v13}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_6
.end method

.method public convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 652
    new-instance v8, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    invoke-direct {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;-><init>()V

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 655
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 657
    const-string v3, "sourceid"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setId(Ljava/lang/String;)V

    .line 658
    const-string v3, "sync1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setEditUri(Ljava/lang/String;)V

    .line 659
    const-string v3, "sync2"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setETag(Ljava/lang/String;)V

    .line 660
    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDeleted(Z)V

    .line 662
    const/4 v2, 0x0

    .line 664
    const/4 v3, 0x0

    .line 667
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v2

    move v2, v3

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Entity$NamedContentValues;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v3, v0

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v4, v0

    .line 673
    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 674
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 675
    const-string v3, "mimetype"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 676
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 677
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/Name;-><init>()V

    .line 678
    const-string v3, "data2"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenName(Ljava/lang/String;)V

    .line 679
    const-string v3, "data3"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyName(Ljava/lang/String;)V

    .line 680
    const-string v3, "data4"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNamePrefix(Ljava/lang/String;)V

    .line 681
    const-string v3, "data5"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalName(Ljava/lang/String;)V

    .line 682
    const-string v3, "data6"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNameSuffix(Ljava/lang/String;)V

    .line 683
    const-string v3, "data7"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenNameYomi(Ljava/lang/String;)V

    .line 684
    const-string v3, "data8"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalNameYomi(Ljava/lang/String;)V

    .line 686
    const-string v3, "data9"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyNameYomi(Ljava/lang/String;)V

    .line 687
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullName(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V

    .line 695
    const/4 v2, 0x1

    move-object v3, v13

    :goto_2
    move-object v13, v3

    .line 964
    goto/16 :goto_1

    .line 660
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 696
    :cond_1
    const-string v7, "vnd.android.cursor.item/photo"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v3, v13

    goto :goto_2

    .line 698
    :cond_2
    const-string v7, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 699
    const-string v2, "data1"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setContent(Ljava/lang/String;)V

    .line 700
    const/4 v2, 0x1

    move-object v3, v13

    goto :goto_2

    .line 701
    :cond_3
    const-string v7, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 702
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;-><init>()V

    .line 703
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_SIP_ADDRESS:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 706
    const-string v3, "is_primary"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v14, 0x0

    cmp-long v3, v5, v14

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->setIsPrimary(Z)V

    .line 707
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 712
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 715
    :cond_4
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->setAddress(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addSipAddress(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)V

    .line 717
    const/4 v2, 0x1

    move-object v3, v13

    .line 718
    goto :goto_2

    .line 706
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 718
    :cond_6
    const-string v7, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 719
    const-string v2, "data1"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setNickname(Ljava/lang/String;)V

    .line 720
    const/4 v2, 0x1

    move-object v3, v13

    goto/16 :goto_2

    .line 721
    :cond_7
    const-string v7, "vnd.com.google.cursor.item/contact_misc"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 722
    const-string v2, "data1"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBillingInformation(Ljava/lang/String;)V

    .line 724
    const-string v2, "data2"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDirectoryServer(Ljava/lang/String;)V

    .line 726
    const-string v2, "data3"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 727
    if-eqz v2, :cond_8

    .line 728
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 729
    const-string v2, "male"

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setGender(Ljava/lang/String;)V

    .line 738
    :cond_8
    :goto_4
    const-string v2, "data4"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setInitials(Ljava/lang/String;)V

    .line 739
    const-string v2, "data5"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMaidenName(Ljava/lang/String;)V

    .line 740
    const-string v2, "data6"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMileage(Ljava/lang/String;)V

    .line 741
    const-string v2, "data7"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setOccupation(Ljava/lang/String;)V

    .line 742
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TO_ENTRY_PRIORITY:Ljava/util/HashMap;

    const-string v3, "data8"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 744
    if-nez p0, :cond_36

    .line 745
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 747
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setPriority(B)V

    .line 748
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TO_ENTRY_SENSITIVITY:Ljava/util/HashMap;

    const-string v3, "data9"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 750
    if-nez p0, :cond_35

    .line 751
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 753
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSensitivity(B)V

    .line 754
    const-string v2, "data10"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setShortName(Ljava/lang/String;)V

    .line 755
    const-string v2, "data11"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSubject(Ljava/lang/String;)V

    .line 756
    const/4 v2, 0x1

    move-object v3, v13

    .line 757
    goto/16 :goto_2

    .line 730
    :cond_9
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 731
    const-string v2, "female"

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setGender(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 733
    :cond_a
    const-string v3, "ContactsSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "convertEntityToEntry: dropping invalid gender "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " for raw contact "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " data row "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 757
    :cond_b
    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 758
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;-><init>()V

    .line 759
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EMAIL:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 762
    const-string v3, "is_primary"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v14, 0x0

    cmp-long v3, v5, v14

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setIsPrimary(Z)V

    .line 763
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setAddress(Ljava/lang/String;)V

    .line 764
    const-string v3, "data4"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setDisplayName(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V

    .line 767
    const/4 v2, 0x1

    move-object v3, v13

    .line 768
    goto/16 :goto_2

    .line 762
    :cond_c
    const/4 v3, 0x0

    goto :goto_7

    .line 768
    :cond_d
    const-string v7, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 769
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 770
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 771
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/WebSite;-><init>()V

    .line 772
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_WEBSITE:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/4 v7, 0x6

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 775
    const-string v3, "is_primary"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setIsPrimary(Z)V

    .line 776
    invoke-virtual {v2, v14}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setHRef(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V

    .line 778
    const/4 v2, 0x1

    :cond_e
    move-object v3, v13

    .line 780
    goto/16 :goto_2

    .line 775
    :cond_f
    const/4 v3, 0x0

    goto :goto_8

    .line 780
    :cond_10
    const-string v7, "vnd.com.google.cursor.item/contact_hobby"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 781
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 782
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 783
    invoke-virtual {v8, v3}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addHobby(Ljava/lang/String;)V

    .line 784
    const/4 v2, 0x1

    :cond_11
    move-object v3, v13

    .line 786
    goto/16 :goto_2

    :cond_12
    const-string v7, "vnd.com.google.cursor.item/contact_user_defined_field"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 787
    new-instance v3, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-direct {v3}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;-><init>()V

    .line 788
    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    const-string v6, "data2"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 793
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 794
    :cond_13
    invoke-virtual {v3, v5}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setKey(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v3, v4}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setValue(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v8, v3}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V

    .line 797
    const/4 v2, 0x1

    :cond_14
    move-object v3, v13

    .line 799
    goto/16 :goto_2

    :cond_15
    const-string v7, "vnd.com.google.cursor.item/contact_language"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 800
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/Language;-><init>()V

    .line 801
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Language;->setCode(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/Language;->getCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    .line 803
    const-string v3, "data2"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Language;->setLabel(Ljava/lang/String;)V

    .line 805
    :cond_16
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V

    .line 806
    const/4 v2, 0x1

    move-object v3, v13

    .line 807
    goto/16 :goto_2

    :cond_17
    const-string v7, "vnd.com.google.cursor.item/contact_calendar_link"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 808
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;-><init>()V

    .line 809
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_CALENDAR_LINK:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 812
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->setHRef(Ljava/lang/String;)V

    .line 813
    const-string v3, "data4"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->setIsPrimary(Z)V

    .line 815
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V

    .line 816
    const/4 v2, 0x1

    move-object v3, v13

    .line 817
    goto/16 :goto_2

    .line 813
    :cond_18
    const/4 v3, 0x0

    goto :goto_9

    .line 817
    :cond_19
    const-string v7, "vnd.com.google.cursor.item/contact_external_id"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 818
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;-><init>()V

    .line 819
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EXTERNAL_ID:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/4 v7, 0x4

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 822
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->setValue(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V

    .line 824
    const/4 v2, 0x1

    move-object v3, v13

    .line 825
    goto/16 :goto_2

    :cond_1a
    const-string v7, "vnd.com.google.cursor.item/contact_jot"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 826
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/Jot;-><init>()V

    .line 827
    const-string v3, "data2"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_JOT:Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-static {v3, v5, v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->providerTypeToEntryType(Ljava/lang/Integer;Ljava/util/HashMap;I)B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Jot;->setType(B)V

    .line 831
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Jot;->setValue(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V

    .line 833
    const/4 v2, 0x1

    move-object v3, v13

    .line 834
    goto/16 :goto_2

    :cond_1b
    const-string v7, "vnd.android.cursor.item/relation"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 835
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/Relation;-><init>()V

    .line 836
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_RELATION:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/16 v7, 0xb

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 839
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Relation;->setText(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V

    .line 841
    const/4 v2, 0x1

    move-object v3, v13

    .line 842
    goto/16 :goto_2

    :cond_1c
    const-string v7, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 843
    const-string v3, "data2"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 844
    if-eqz v3, :cond_1d

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    .line 846
    :goto_a
    const-string v7, "data1"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 847
    invoke-static {v11, v14, v3}, Lcom/google/android/syncadapters/contacts/ContactHandler;->validateDate(Landroid/text/format/Time;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 848
    const-string v3, "ContactsSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertEntityToEntry: dropping invalid startDate "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " for raw contact "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " data row "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 844
    :cond_1d
    const/4 v3, 0x0

    goto :goto_a

    .line 853
    :cond_1e
    if-eqz v3, :cond_1f

    .line 854
    invoke-virtual {v8, v14}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBirthday(Ljava/lang/String;)V

    .line 863
    :goto_b
    const/4 v2, 0x1

    move-object v3, v13

    .line 864
    goto/16 :goto_2

    .line 856
    :cond_1f
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/Event;-><init>()V

    .line 857
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EVENT:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 860
    invoke-virtual {v2, v14}, Lcom/google/wireless/gdata2/contacts/data/Event;->setStartDate(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V

    goto :goto_b

    .line 864
    :cond_20
    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 865
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;-><init>()V

    .line 866
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_POSTAL:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 869
    const-string v3, "is_primary"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v14, 0x0

    cmp-long v3, v5, v14

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    :goto_c
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setIsPrimary(Z)V

    .line 870
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setFormattedAddress(Ljava/lang/String;)V

    .line 872
    const-string v3, "data4"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setStreet(Ljava/lang/String;)V

    .line 873
    const-string v3, "data5"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPobox(Ljava/lang/String;)V

    .line 874
    const-string v3, "data6"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 875
    const-string v3, "data7"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCity(Ljava/lang/String;)V

    .line 876
    const-string v3, "data9"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPostcode(Ljava/lang/String;)V

    .line 877
    const-string v3, "data8"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setRegion(Ljava/lang/String;)V

    .line 878
    const-string v3, "data10"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCountry(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V

    .line 880
    const/4 v2, 0x1

    move-object v3, v13

    .line 881
    goto/16 :goto_2

    .line 869
    :cond_21
    const/4 v3, 0x0

    goto :goto_c

    .line 881
    :cond_22
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 882
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;-><init>()V

    .line 883
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_PHONE:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/16 v7, 0x13

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 886
    const-string v3, "is_primary"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v14, 0x0

    cmp-long v3, v5, v14

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    :goto_d
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setIsPrimary(Z)V

    .line 887
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V

    .line 889
    const/4 v2, 0x1

    move-object v3, v13

    .line 890
    goto/16 :goto_2

    .line 886
    :cond_23
    const/4 v3, 0x0

    goto :goto_d

    .line 890
    :cond_24
    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 891
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;-><init>()V

    .line 892
    const-string v3, "group_sourceid"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 894
    if-nez v3, :cond_25

    .line 895
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "the group doesn\'t yet have a source id"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    :cond_25
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getCanonicalGroupSourceId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setGroup(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V

    .line 900
    const/4 v2, 0x1

    move-object v3, v13

    .line 901
    goto/16 :goto_2

    :cond_26
    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 902
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;-><init>()V

    .line 903
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_ORGANIZATION:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 906
    const-string v3, "is_primary"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v14, 0x0

    cmp-long v3, v5, v14

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    :goto_e
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setIsPrimary(Z)V

    .line 907
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setName(Ljava/lang/String;)V

    .line 909
    const-string v3, "data4"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setTitle(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V

    .line 912
    const-string v3, "data5"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgDepartment(Ljava/lang/String;)V

    .line 914
    const-string v3, "data6"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgJobDescription(Ljava/lang/String;)V

    .line 916
    const-string v3, "data7"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgSymbol(Ljava/lang/String;)V

    .line 918
    const-string v3, "data8"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setNameYomi(Ljava/lang/String;)V

    .line 920
    const/4 v2, 0x1

    move-object v3, v13

    .line 921
    goto/16 :goto_2

    .line 906
    :cond_27
    const/4 v3, 0x0

    goto :goto_e

    .line 921
    :cond_28
    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 922
    new-instance v2, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;-><init>()V

    .line 923
    sget-object v3, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_IM:Ljava/util/HashMap;

    const-string v5, "data2"

    const-string v6, "data3"

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 926
    const-string v3, "is_primary"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v14, 0x0

    cmp-long v3, v5, v14

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    :goto_f
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setIsPrimary(Z)V

    .line 927
    const-string v3, "data1"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setAddress(Ljava/lang/String;)V

    .line 928
    const-string v3, "data5"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 929
    sget-object v5, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_IM_PROTOCOL_TO_ENTRY_PROTOCOL:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 931
    if-nez v3, :cond_2b

    .line 932
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 933
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    .line 945
    :goto_10
    invoke-virtual {v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_29

    .line 946
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 947
    const-string v3, "netmeeting"

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    .line 949
    :cond_29
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V

    .line 950
    const/4 v2, 0x1

    move-object v3, v13

    .line 951
    goto/16 :goto_2

    .line 926
    :cond_2a
    const/4 v3, 0x0

    goto :goto_f

    .line 934
    :cond_2b
    const-string v3, "data6"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    if-nez p0, :cond_2d

    .line 937
    :cond_2c
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 938
    const-string v3, "data6"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_10

    .line 942
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    goto :goto_10

    .line 951
    :cond_2e
    const-string v5, "vnd.com.google.cursor.item/contact_extended_property"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 952
    if-nez v13, :cond_33

    .line 953
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 956
    :goto_11
    :try_start_0
    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data2"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 959
    :catch_0
    move-exception v2

    .line 960
    new-instance v3, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v4, "bad key or value"

    invoke-direct {v3, v4, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 966
    :cond_2f
    if-eqz v13, :cond_31

    .line 967
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 968
    if-nez v2, :cond_30

    .line 969
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to convert JSON object into a JSON string, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 972
    :cond_30
    new-instance v3, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-direct {v3}, Lcom/google/wireless/gdata2/data/ExtendedProperty;-><init>()V

    .line 973
    const-string v4, "android"

    invoke-virtual {v3, v4}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setName(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v3, v2}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setValue(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v8, v3}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    .line 976
    const/4 v2, 0x1

    .line 979
    :cond_31
    if-eqz p4, :cond_32

    .line 980
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_32

    if-nez v2, :cond_32

    .line 981
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "empty entry"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 985
    :cond_32
    return-object v8

    :cond_33
    move-object v3, v13

    goto :goto_11

    :cond_34
    move-object v3, v13

    goto/16 :goto_2

    :cond_35
    move-object/from16 v2, p0

    goto/16 :goto_6

    :cond_36
    move-object/from16 v2, p0

    goto/16 :goto_5
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1017
    const-string v0, "deleted"

    return-object v0
.end method

.method public getDirtyColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    const-string v0, "dirty"

    return-object v0
.end method

.method public getEditUriColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    const-string v0, "sync1"

    return-object v0
.end method

.method public getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 217
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 207
    const-class v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    return-object v0
.end method

.method public getEtagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1025
    const-string v0, "sync2"

    return-object v0
.end method

.method public getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/m8/feeds/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/base2_property-android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, url:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSourceIdColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1009
    const-string v0, "sourceid"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "contacts"

    return-object v0
.end method

.method public getVersionColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1029
    const-string v0, "version"

    return-object v0
.end method

.method hasBeenOnServer(Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "values"

    .prologue
    .line 616
    const-string v1, "vnd.android.cursor.item/photo"

    const-string v2, "mimetype"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 619
    :cond_0
    const-string v1, "data_sync4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 620
    .local v0, sync4:Ljava/lang/Long;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public idToSourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 203
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    .locals 6
    .parameter "provider"
    .parameter "account"
    .parameter "id"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 222
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, v2

    .line 223
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method

.method setExistsOnServerFlag(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 4
    .parameter
    .parameter "dataUri"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "vnd.android.cursor.item/photo"

    const-string v2, "mimetype"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    const-string v1, "_id"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 605
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data_sync4"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setExistsOnServerFlagInValues(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 609
    const-string v0, "vnd.android.cursor.item/photo"

    const-string v1, "mimetype"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 612
    :cond_0
    const-string v0, "data_sync4"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method
