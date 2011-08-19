.class public Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    }
.end annotation


# static fields
.field private static final PROJECTION_GROUPS:[Ljava/lang/String;

.field private static final PROJECTION_RAW_CONTACTS_ID:[Ljava/lang/String;

.field static final sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

.field static final sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

.field static final sEntryEndMarker:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field static final sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

.field private mPhotoDownloads:I

.field private mPhotoUploads:I

.field private final mSpecialGroupsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    .line 80
    new-instance v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    invoke-direct {v0, v1, v2, v1}, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;-><init>(Lcom/google/wireless/gdata2/data/Entry;ILandroid/content/Entity;)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 92
    new-instance v0, Lcom/google/android/syncadapters/contacts/GroupHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/contacts/GroupHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    .line 93
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-direct {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    .line 124
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->PROJECTION_RAW_CONTACTS_ID:[Ljava/lang/String;

    .line 127
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "system_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "favorites"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->PROJECTION_GROUPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mSpecialGroupsLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    new-instance v1, Lcom/google/android/syncadapters/HttpsOnlyAndroidGDataClient;

    const-string v2, "Android-GData-Contacts/1.3"

    const-string v3, "4.0"

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/syncadapters/HttpsOnlyAndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;

    new-instance v3, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/common/gdata2/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParserFactory;-><init>(Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;-><init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    .line 147
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    .line 149
    return-void
.end method

.method static addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V
    .locals 1
    .parameter
    .parameter "uri"
    .parameter "rowId"
    .parameter "allowYielding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "JZ)V"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    return-void
.end method

.method static addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
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
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1161
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1163
    if-eqz p3, :cond_0

    .line 1164
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1166
    :cond_0
    if-eqz p4, :cond_1

    .line 1167
    const-string v1, "raw_contact_id"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1170
    :cond_1
    invoke-virtual {v0, p5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 1171
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    return-void
.end method

.method static addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1176
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1178
    if-eqz p3, :cond_0

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1181
    :cond_0
    if-eqz p4, :cond_1

    .line 1182
    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1183
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 1185
    :cond_1
    invoke-virtual {v0, p5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 1186
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    return-void
.end method

.method private applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 1136
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    invoke-virtual {p2, p1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 1138
    const-string v1, "ContactsSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1139
    const-string v1, "ContactsSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batch applied successfully, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " results"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1153
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1155
    return-void

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    :try_start_1
    const-string v1, "ContactsSyncAdapter"

    const-string v2, "error applying batch, an unknown number of yield points succeeded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    throw v0

    .line 1145
    :catch_1
    move-exception v0

    .line 1146
    :try_start_2
    const-string v1, "ContactsSyncAdapter"

    const-string v2, "error applying batch, an unknown number of yield points succeeded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    new-instance v0, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :catch_2
    move-exception v0

    .line 1149
    const-string v1, "ContactsSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error applying batch, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getNumSuccessfulYieldPoints()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " yield points succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    new-instance v0, Ljava/io/IOException;

    const-string v1, "error while applying batch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private doServerOperation(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 721
    :try_start_0
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_4

    .line 748
    :catch_0
    move-exception v0

    .line 749
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 755
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    .line 761
    invoke-static {p1, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;I)I

    .line 799
    :cond_1
    :goto_0
    return-void

    .line 723
    :pswitch_0
    :try_start_1
    const-string v0, "ContactsSyncAdapter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 724
    const-string v0, "ContactsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inserting with entry =====\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_2
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-virtual {p3, v0, p4, v1}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_1
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 765
    :catch_1
    move-exception v0

    .line 766
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 768
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    goto :goto_0

    .line 730
    :pswitch_1
    :try_start_2
    const-string v0, "ContactsSyncAdapter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    const-string v0, "ContactsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating with entry =====\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_3
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->updateEntry(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_2
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 775
    :catch_2
    move-exception v0

    .line 776
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 778
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->fetchEntry(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    goto/16 :goto_0

    .line 737
    :pswitch_2
    :try_start_3
    const-string v0, "ContactsSyncAdapter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 738
    const-string v0, "ContactsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_4
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$300(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p4, v1}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/wireless/gdata2/client/PreconditionFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/wireless/gdata2/client/BadRequestException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 785
    :catch_3
    move-exception v0

    .line 786
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 788
    invoke-static {p1, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;I)I

    goto/16 :goto_0

    .line 763
    :cond_5
    new-instance v0, Lcom/google/wireless/gdata2/ConflictDetectedException;

    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/ConflictDetectedException;-><init>(Lcom/google/wireless/gdata2/data/Entry;)V

    throw v0

    .line 769
    :cond_6
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 771
    invoke-static {p1, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;I)I

    goto/16 :goto_0

    .line 772
    :cond_7
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-ne v0, v4, :cond_1

    goto/16 :goto_0

    .line 779
    :cond_8
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 781
    invoke-static {p1, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$102(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;I)I

    goto/16 :goto_0

    .line 782
    :cond_9
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-ne v0, v4, :cond_1

    goto/16 :goto_0

    .line 789
    :cond_a
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$100(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)I

    move-result v0

    if-ne v0, v4, :cond_1

    goto/16 :goto_0

    .line 792
    :catch_4
    move-exception v0

    .line 793
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_b

    .line 794
    new-instance v1, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v1

    .line 796
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received unhandled http error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static fetchEntry(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 805
    :try_start_0
    invoke-static {p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$200(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, p3, v1}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/Entry;
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_0

    .line 808
    new-instance v1, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v1

    .line 810
    :cond_0
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error when redownloading the entry due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in response to an operation of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    :catch_1
    move-exception v0

    .line 814
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error when redownloading the entry due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in response to an operation of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "client"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 561
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_count"

    aput-object v0, v2, v1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 564
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 565
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getOrCreateGDataSyncState(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/GDataSyncState;
    .locals 10
    .parameter "account"
    .parameter "provider"
    .parameter "groupFeed"
    .parameter "contactFeed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v6, 0x0

    .line 413
    .local v6, syncStateChanged:Z
    invoke-static {p1, p0}, Lcom/google/android/syncadapters/GDataSyncState;->getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/GDataSyncState;

    move-result-object v5

    .line 414
    .local v5, syncState:Lcom/google/android/syncadapters/GDataSyncState;
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 417
    .local v1, data:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v7, "feed_uri"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 419
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 420
    const/4 v6, 0x1

    .line 425
    :cond_0
    const/4 v0, 0x0

    .line 426
    .local v0, createNewContactFeedSyncState:Z
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 427
    const-string v7, "ContactsSyncAdapter"

    const-string v8, "No contacts feed data; creating new feedSyncState..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x1

    .line 443
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 444
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v2, feedSyncState:Landroid/os/Bundle;
    const-string v7, "feed_uri"

    invoke-virtual {v2, v7, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v7, "last_feed_version"

    const-string v8, "4.0"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    const/4 v6, 0x1

    .line 452
    .end local v2           #feedSyncState:Landroid/os/Bundle;
    :cond_2
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 453
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 454
    .restart local v2       #feedSyncState:Landroid/os/Bundle;
    const-string v7, "feed_uri"

    invoke-virtual {v2, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 457
    const/4 v6, 0x1

    .line 460
    .end local v2           #feedSyncState:Landroid/os/Bundle;
    :cond_3
    if-eqz v6, :cond_4

    .line 461
    invoke-virtual {v5, p1}, Lcom/google/android/syncadapters/GDataSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 463
    :cond_4
    return-object v5

    .line 431
    :cond_5
    iget-object v7, v5, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    invoke-virtual {v8}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 432
    .local v4, lastSyncState:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 433
    .local v3, lastFeedVersion:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 434
    const-string v7, "last_feed_version"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    :cond_6
    const-string v7, "4.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 437
    const-string v7, "ContactsSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Feed version mismatch: lastFeedVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "4.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v7, "ContactsSyncAdapter"

    const-string v8, "Creating new feedSyncState..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private getServerDiffs(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/util/Set;)V
    .locals 37
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/lang/String;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/syncadapters/GDataSyncState;",
            "Lcom/google/android/syncadapters/EntryAndEntityHandler;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 925
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting getServerDiffs for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_2
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v4, 0x32

    invoke-direct {v8, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 930
    new-instance v19, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v4, 0x32

    move-object/from16 v0, v19

    move v1, v4

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 933
    const/4 v14, 0x0

    .line 934
    const/16 v23, 0x0

    .line 936
    const/16 v24, 0x0

    .line 937
    const/16 v25, 0x0

    .line 938
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    .line 939
    const/16 v35, 0x0

    .line 940
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    move-object v4, v0

    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 941
    const-string v4, "feed_uri"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 943
    :try_start_0
    const-string v4, "feed_updated_time"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "lastFetchedIndex"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 945
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 946
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no last updated time present for feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preparing for full sync"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;)V

    .line 952
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "google_contacts_sync_num_events_per_batch"

    const/16 v6, 0x1f4

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 956
    new-instance v4, Lcom/google/android/syncadapters/GDataFeedFetcher;

    const-string v5, "ContactsSyncAdapter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object v6, v0

    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v9, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v11, p3

    invoke-direct/range {v4 .. v13}, Lcom/google/android/syncadapters/GDataFeedFetcher;-><init>(Ljava/lang/String;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_7

    .line 959
    :try_start_1
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "GDataFeedFetcher"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 960
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 962
    new-instance v13, Lcom/google/android/syncadapters/EntityReader;

    const-string v14, "ContactsSyncAdapter"

    sget-object v18, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntryEndMarker:Landroid/util/Pair;

    sget-object v20, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    const-string v22, "sourceid"

    move-object/from16 v15, p2

    move-object/from16 v16, p1

    move-object/from16 v17, v8

    move-object/from16 v21, p6

    invoke-direct/range {v13 .. v22}, Lcom/google/android/syncadapters/EntityReader;-><init>(Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_8

    .line 965
    :try_start_2
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "EntityReader"

    invoke-direct {v5, v13, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 966
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 968
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 969
    const-string v5, "ContactsSyncAdapter"

    const-string v6, "starting processing of fetched entries"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_5
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v29

    .line 974
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v30

    .line 975
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v31

    .line 977
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 981
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v32

    move/from16 v5, v25

    move/from16 v6, v24

    .line 983
    :cond_6
    :goto_1
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 984
    const-string v5, "ContactsSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 985
    const-string v5, "ContactsSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getServerDiffs: noticed a cancel during feed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bailing out"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1096
    :cond_7
    if-eqz v35, :cond_8

    const-string v5, "ContactsSyncAdapter"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "ContactsSyncAdapterP"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1098
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1099
    if-eqz v35, :cond_47

    const-string v5, "SUCCESS"

    .line 1100
    :goto_2
    const-string v9, "ContactsSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ": processed "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v7, v33

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_9
    if-eqz v4, :cond_c

    .line 1106
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1107
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1108
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1110
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1111
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1113
    :cond_b
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1115
    :cond_c
    if-eqz v13, :cond_0

    .line 1116
    :goto_3
    invoke-virtual {v13}, Lcom/google/android/syncadapters/EntityReader;->close()V

    goto/16 :goto_0

    .line 991
    :cond_d
    :try_start_4
    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 992
    sget-object v7, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    move-object/from16 v0, p3

    move-object v1, v7

    if-ne v0, v1, :cond_13

    .line 994
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 1053
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isPartialSyncUnavailable()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;)V

    .line 1055
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "partial sync unavailable for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1078
    :catch_0
    move-exception v5

    move-object v5, v13

    move/from16 v36, v6

    move-object v6, v4

    move/from16 v4, v36

    .line 1079
    :goto_4
    :try_start_5
    const-string v7, "ContactsSyncAdapter"

    const-string v8, "getServerDiffs failed due to an IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    iput-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1096
    if-eqz v35, :cond_e

    const-string v7, "ContactsSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "ContactsSyncAdapterP"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1098
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1099
    if-eqz v35, :cond_42

    const-string v9, "SUCCESS"

    .line 1100
    :goto_5
    const-string v11, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, ": processed "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " records in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v7, v7, v33

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ms from feed "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", updated time is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_f
    if-eqz v6, :cond_12

    .line 1106
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v6}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1107
    invoke-virtual {v6}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1108
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v7, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1110
    :cond_10
    invoke-virtual {v6}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1111
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v7, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1113
    :cond_11
    invoke-virtual {v6}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1115
    :cond_12
    if-eqz v5, :cond_0

    .line 1116
    :goto_6
    invoke-virtual {v5}, Lcom/google/android/syncadapters/EntityReader;->close()V

    goto/16 :goto_0

    .line 997
    :cond_13
    :try_start_6
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entry:Lcom/google/wireless/gdata2/data/Entry;

    move-object/from16 v25, v0

    .line 998
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entity:Landroid/content/Entity;

    move-object/from16 v26, v0

    .line 999
    move-object/from16 v0, p3

    iget v0, v0, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;->entryIndex:I

    move v7, v0

    .line 1000
    const-string v8, "ContactsSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "ContactsSyncAdapterFine"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1001
    :cond_14
    const-string v8, "ContactsSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calling applyEntryToEntity for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v8

    .line 1014
    if-eqz v26, :cond_16

    :try_start_7
    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v11

    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 1017
    :cond_16
    const/16 v27, 0x0

    move-object/from16 v20, p6

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v24, p7

    move-object/from16 v28, p4

    invoke-interface/range {v20 .. v32}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1030
    :cond_17
    :try_start_8
    const-string v8, "lastFetchedId"

    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v8, "lastFetchedIndex"

    invoke-virtual {v12, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1032
    const-string v8, "ContactsSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "ContactsSyncAdapterP"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1033
    :cond_18
    const-string v8, "ContactsSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "index "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " of "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/wireless/gdata2/data/Feed;->getTotalResults()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_19
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/syncadapters/GDataSyncState;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    add-int/lit8 v6, v6, 0x1

    .line 1038
    add-int/lit8 v5, v5, 0x1

    .line 1039
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v8, v7, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    iput-wide v8, v7, Landroid/content/SyncStats;->numEntries:J

    .line 1040
    const/16 v7, 0x14

    if-ge v5, v7, :cond_1a

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x1f4

    if-lt v7, v8, :cond_6

    .line 1042
    :cond_1a
    const/4 v5, 0x0

    .line 1043
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->applyOperations(Ljava/util/ArrayList;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 1044
    const-string v7, "ContactsSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, "ContactsSyncAdapterP"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1046
    :cond_1b
    const-string v7, "ContactsSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applied "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " records in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v33

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms from feed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 1081
    :catch_1
    move-exception v5

    move-object v7, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v13

    .line 1082
    :goto_7
    :try_start_9
    const-string v8, "ContactsSyncAdapter"

    const-string v9, "getServerDiffs failed"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1083
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    iput-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1096
    if-eqz v35, :cond_1c

    const-string v4, "ContactsSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "ContactsSyncAdapterP"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1098
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1099
    if-eqz v35, :cond_43

    const-string v4, "SUCCESS"

    .line 1100
    :goto_8
    const-string v11, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ": processed "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " records in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v8, v8, v33

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms from feed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", updated time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "feed_updated_time"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_1d
    if-eqz v7, :cond_20

    .line 1106
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1107
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1108
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1110
    :cond_1e
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1111
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1113
    :cond_1f
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1115
    :cond_20
    if-eqz v6, :cond_0

    .line 1116
    :goto_9
    invoke-virtual {v6}, Lcom/google/android/syncadapters/EntityReader;->close()V

    goto/16 :goto_0

    .line 1021
    :catch_2
    move-exception v7

    .line 1024
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v8

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_1

    .line 1084
    :catch_3
    move-exception v5

    move-object v7, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v13

    .line 1085
    :goto_a
    :try_start_b
    const-string v8, "ContactsSyncAdapter"

    const-string v9, "getServerDiffs failed"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    iput-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1096
    if-eqz v35, :cond_21

    const-string v4, "ContactsSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "ContactsSyncAdapterP"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1098
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1099
    if-eqz v35, :cond_44

    const-string v4, "SUCCESS"

    .line 1100
    :goto_b
    const-string v11, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ": processed "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " records in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v8, v8, v33

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms from feed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", updated time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "feed_updated_time"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_22
    if-eqz v7, :cond_25

    .line 1106
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1107
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1108
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1110
    :cond_23
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1111
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1113
    :cond_24
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1115
    :cond_25
    if-eqz v6, :cond_0

    goto/16 :goto_9

    .line 1026
    :catch_4
    move-exception v7

    .line 1027
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v8

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_1

    .line 1087
    :catch_5
    move-exception v5

    move-object v5, v13

    move/from16 v36, v6

    move-object v6, v4

    move/from16 v4, v36

    .line 1088
    :goto_c
    :try_start_d
    const-string v7, "ContactsSyncAdapter"

    const-string v8, "getServerDiffs interrupted, canceling the sync"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1096
    if-eqz v35, :cond_26

    const-string v7, "ContactsSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_26

    const-string v7, "ContactsSyncAdapterP"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1098
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1099
    if-eqz v35, :cond_45

    const-string v9, "SUCCESS"

    .line 1100
    :goto_d
    const-string v11, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, ": processed "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " records in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v7, v7, v33

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ms from feed "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", updated time is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "feed_updated_time"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_27
    if-eqz v6, :cond_2a

    .line 1106
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v6}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1107
    invoke-virtual {v6}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1108
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v7, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1110
    :cond_28
    invoke-virtual {v6}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1111
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v7, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1113
    :cond_29
    invoke-virtual {v6}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1115
    :cond_2a
    if-eqz v5, :cond_0

    goto/16 :goto_6

    .line 1057
    :cond_2b
    :try_start_e
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1058
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connection failed during feed read of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_e .. :try_end_e} :catch_6

    .line 1090
    :catch_6
    move-exception v5

    move-object v7, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v13

    .line 1091
    :goto_e
    :try_start_f
    const-string v8, "ContactsSyncAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getServerDiffs failed due to a ResourceUnavailableException, retryAfter is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v8, v0

    iget-wide v13, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1094
    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/content/SyncResult;->delayUntil:J

    move-wide v8, v0

    invoke-virtual {v4}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v13

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, p4

    iput-wide v0, v2, Landroid/content/SyncResult;->delayUntil:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1096
    if-eqz v35, :cond_2c

    const-string v4, "ContactsSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "ContactsSyncAdapterP"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1098
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1099
    if-eqz v35, :cond_46

    const-string v4, "SUCCESS"

    .line 1100
    :goto_f
    const-string v11, "ContactsSyncAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ": processed "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " records in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v8, v8, v33

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms from feed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", updated time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "feed_updated_time"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_2d
    if-eqz v7, :cond_30

    .line 1106
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1107
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1108
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1110
    :cond_2e
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1111
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1113
    :cond_2f
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1115
    :cond_30
    if-eqz v6, :cond_0

    goto/16 :goto_9

    .line 1060
    :cond_31
    :try_start_10
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->resumptionFailed()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1061
    const-string v5, "lastFetchedId"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1062
    const-string v5, "lastFetchedIndex"

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1063
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/GDataSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 1064
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resumption failed during feed read of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_10 .. :try_end_10} :catch_6

    .line 1096
    :catchall_0
    move-exception v5

    move-object v7, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v13

    :goto_10
    if-eqz v35, :cond_32

    const-string v8, "ContactsSyncAdapter"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_32

    const-string v8, "ContactsSyncAdapterP"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 1098
    :cond_32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1099
    if-eqz v35, :cond_41

    const-string v11, "SUCCESS"

    .line 1100
    :goto_11
    const-string v13, "ContactsSyncAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ": processed "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " records in "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v8, v8, v33

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ms from feed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", updated time is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "feed_updated_time"

    invoke-virtual {v12, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_33
    if-eqz v7, :cond_36

    .line 1106
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v8, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1107
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1108
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v8, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1110
    :cond_34
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1111
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v8, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1113
    :cond_35
    invoke-virtual {v7}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1115
    :cond_36
    if-eqz v6, :cond_37

    .line 1116
    invoke-virtual {v6}, Lcom/google/android/syncadapters/EntityReader;->close()V

    .line 1096
    :cond_37
    throw v4

    .line 1066
    :cond_38
    :try_start_11
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isUnparsableFeed()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1067
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unparsable feed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1069
    :cond_39
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isResourceUnavailable()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1070
    new-instance v5, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;

    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getRetryAfter()J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;-><init>(J)V

    throw v5

    .line 1072
    :cond_3a
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1073
    new-instance v5, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v5}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>()V

    throw v5

    .line 1075
    :cond_3b
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/gdata2/data/Feed;->getLastUpdated()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    invoke-direct/range {v14 .. v19}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_11 .. :try_end_11} :catch_6

    .line 1077
    const/4 v5, 0x1

    .line 1096
    if-eqz v5, :cond_3c

    const-string v7, "ContactsSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "ContactsSyncAdapterP"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1098
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1099
    if-eqz v5, :cond_48

    const-string v5, "SUCCESS"

    .line 1100
    :goto_12
    const-string v9, "ContactsSyncAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ": processed "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v7, v33

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms from feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "feed_updated_time"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_3d
    if-eqz v4, :cond_40

    .line 1106
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getNumUnparsableEntries()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1107
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isAuthenticationFailed()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1108
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1110
    :cond_3e
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->isConnectionFailed()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1111
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1113
    :cond_3f
    invoke-virtual {v4}, Lcom/google/android/syncadapters/GDataFeedFetcher;->close()V

    .line 1115
    :cond_40
    if-eqz v13, :cond_0

    goto/16 :goto_3

    .line 1099
    :cond_41
    const-string v11, "FAILURE"

    goto/16 :goto_11

    :cond_42
    const-string v9, "FAILURE"

    goto/16 :goto_5

    :cond_43
    const-string v4, "FAILURE"

    goto/16 :goto_8

    :cond_44
    const-string v4, "FAILURE"

    goto/16 :goto_b

    :cond_45
    const-string v9, "FAILURE"

    goto/16 :goto_d

    :cond_46
    const-string v4, "FAILURE"

    goto/16 :goto_f

    :cond_47
    const-string v5, "FAILURE"

    goto/16 :goto_2

    :cond_48
    const-string v5, "FAILURE"

    goto/16 :goto_12

    .line 1096
    :catchall_1
    move-exception v4

    move/from16 v5, v24

    move-object/from16 v6, v23

    move-object v7, v14

    goto/16 :goto_10

    :catchall_2
    move-exception v5

    move-object/from16 v6, v23

    move-object v7, v4

    move-object v4, v5

    move/from16 v5, v24

    goto/16 :goto_10

    :catchall_3
    move-exception v5

    move-object v6, v13

    move-object v7, v4

    move-object v4, v5

    move/from16 v5, v24

    goto/16 :goto_10

    :catchall_4
    move-exception v7

    move-object/from16 v36, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move-object/from16 v4, v36

    goto/16 :goto_10

    :catchall_5
    move-exception v4

    goto/16 :goto_10

    .line 1090
    :catch_7
    move-exception v4

    move/from16 v5, v24

    move-object/from16 v6, v23

    move-object v7, v14

    goto/16 :goto_e

    :catch_8
    move-exception v5

    move-object/from16 v6, v23

    move-object v7, v4

    move-object v4, v5

    move/from16 v5, v24

    goto/16 :goto_e

    :catch_9
    move-exception v5

    move-object v6, v13

    move-object v7, v4

    move-object v4, v5

    move/from16 v5, v24

    goto/16 :goto_e

    .line 1087
    :catch_a
    move-exception v4

    move/from16 v4, v24

    move-object/from16 v5, v23

    move-object v6, v14

    goto/16 :goto_c

    :catch_b
    move-exception v5

    move-object/from16 v5, v23

    move-object v6, v4

    move/from16 v4, v24

    goto/16 :goto_c

    :catch_c
    move-exception v5

    move-object v5, v13

    move-object v6, v4

    move/from16 v4, v24

    goto/16 :goto_c

    .line 1084
    :catch_d
    move-exception v4

    move/from16 v5, v24

    move-object/from16 v6, v23

    move-object v7, v14

    goto/16 :goto_a

    :catch_e
    move-exception v5

    move-object/from16 v6, v23

    move-object v7, v4

    move-object v4, v5

    move/from16 v5, v24

    goto/16 :goto_a

    :catch_f
    move-exception v5

    move-object v6, v13

    move-object v7, v4

    move-object v4, v5

    move/from16 v5, v24

    goto/16 :goto_a

    .line 1081
    :catch_10
    move-exception v4

    move/from16 v5, v24

    move-object/from16 v6, v23

    move-object v7, v14

    goto/16 :goto_7

    :catch_11
    move-exception v5

    move-object/from16 v6, v23

    move-object v7, v4

    move-object v4, v5

    move/from16 v5, v24

    goto/16 :goto_7

    :catch_12
    move-exception v5

    move-object v6, v13

    move-object v7, v4

    move-object v4, v5

    move/from16 v5, v24

    goto/16 :goto_7

    .line 1078
    :catch_13
    move-exception v4

    move/from16 v4, v24

    move-object/from16 v5, v23

    move-object v6, v14

    goto/16 :goto_4

    :catch_14
    move-exception v5

    move-object/from16 v5, v23

    move-object v6, v4

    move/from16 v4, v24

    goto/16 :goto_4

    :catch_15
    move-exception v5

    move-object v5, v13

    move-object v6, v4

    move/from16 v4, v24

    goto/16 :goto_4
.end method

.method private innerPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/contacts/AuthInfo;)V
    .locals 31
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .parameter "authInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 181
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    .line 183
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performSync: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    const-string v5, "initialize"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 192
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "@youtube.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 295
    :cond_1
    :goto_1
    return-void

    .line 192
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 199
    :cond_3
    sget-object v5, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v22

    .line 200
    .local v22, groupFeed:Ljava/lang/String;
    sget-object v5, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v20

    .line 201
    .local v20, contactsFeed:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContactsSyncSet(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Ljava/util/Set;

    move-result-object v12

    .line 202
    .local v12, contactsSyncSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_4

    .line 203
    const-string v5, "?"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 208
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "group="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 211
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->ensureSpecialGroupsAreCreated([Landroid/accounts/Account;)V

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->maybeUpdateSubscribedFeeds(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getOrCreateGDataSyncState(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/GDataSyncState;

    move-result-object v10

    .line 221
    .local v10, syncState:Lcom/google/android/syncadapters/GDataSyncState;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 225
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, authToken:Ljava/lang/String;
    const-string v5, "deletions_override"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 228
    .local v19, overrideTooManyDeletions:Z
    const-string v5, "discard_deletions"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 230
    .local v21, discardLocalDeletions:Z
    if-eqz v21, :cond_5

    .line 232
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v30, values:Landroid/content/ContentValues;
    const-string v5, "deleted"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v30

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "deleted=1"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object/from16 v2, v30

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    invoke-virtual/range {v30 .. v30}, Landroid/content/ContentValues;->clear()V

    .line 238
    const-string v5, "deleted"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v30

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "deleted=1"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object/from16 v2, v30

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 244
    .end local v30           #values:Landroid/content/ContentValues;
    :cond_5
    const-string v5, "upload"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 245
    .local v29, uploadOnly:Z
    if-nez v29, :cond_a

    .line 246
    const-string v5, "feed"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 248
    .local v28, specificFeedToFetch:Ljava/lang/String;
    if-eqz v28, :cond_6

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 249
    :cond_6
    sget-object v11, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    invoke-direct/range {v5 .. v12}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getServerDiffs(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/util/Set;)V

    .line 251
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_1

    .line 256
    :cond_7
    if-eqz v28, :cond_8

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 257
    :cond_8
    sget-object v11, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    invoke-direct/range {v5 .. v12}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getServerDiffs(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/util/Set;)V

    .line 259
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_1

    .line 264
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object v2, v8

    move-object/from16 v3, p5

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactHandler;->downloadPhotos(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/wireless/gdata2/contacts/client/ContactsClient;)I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    .line 266
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_1

    .line 272
    .end local v28           #specificFeedToFetch:Ljava/lang/String;
    :cond_a
    const/16 v23, 0x0

    .local v23, i:I
    :goto_3
    const/4 v5, 0x6

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_b

    .line 273
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v5, v5, Landroid/content/SyncStats;->numInserts:J

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v9, v7, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v5, v9

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v9, v7, Landroid/content/SyncStats;->numDeletes:J

    add-long v26, v5, v9

    .line 276
    .local v26, numChangesBefore:J
    sget-object v18, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sContactHandler:Lcom/google/android/syncadapters/contacts/ContactHandler;

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move-object/from16 v15, p4

    move-object/from16 v16, v12

    move-object/from16 v17, p5

    invoke-virtual/range {v13 .. v19}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->processLocalChanges(Lcom/google/android/syncadapters/contacts/AuthInfo;Landroid/content/ContentProviderClient;Ljava/util/Set;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;Z)V

    .line 278
    sget-object v18, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sGroupHandler:Lcom/google/android/syncadapters/contacts/GroupHandler;

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move-object/from16 v15, p4

    move-object/from16 v16, v12

    move-object/from16 v17, p5

    invoke-virtual/range {v13 .. v19}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->processLocalChanges(Lcom/google/android/syncadapters/contacts/AuthInfo;Landroid/content/ContentProviderClient;Ljava/util/Set;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;Z)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object v2, v8

    move-object/from16 v3, p5

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactHandler;->uploadPhotos(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/wireless/gdata2/contacts/client/ContactsClient;)I

    .line 283
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v5, v5, Landroid/content/SyncStats;->numInserts:J

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v9, v7, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v5, v9

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v9, v7, Landroid/content/SyncStats;->numDeletes:J

    add-long v24, v5, v9

    .line 285
    .local v24, numChangesAfter:J
    cmp-long v5, v24, v26

    if-nez v5, :cond_d

    .line 290
    .end local v24           #numChangesAfter:J
    .end local v26           #numChangesBefore:J
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 292
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    const-string v5, "ContactsSyncAdapter"

    const-string v6, "performSync: sync is complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 206
    .end local v8           #authToken:Ljava/lang/String;
    .end local v10           #syncState:Lcom/google/android/syncadapters/GDataSyncState;
    .end local v19           #overrideTooManyDeletions:Z
    .end local v21           #discardLocalDeletions:Z
    .end local v23           #i:I
    .end local v29           #uploadOnly:Z
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 272
    .restart local v8       #authToken:Ljava/lang/String;
    .restart local v10       #syncState:Lcom/google/android/syncadapters/GDataSyncState;
    .restart local v19       #overrideTooManyDeletions:Z
    .restart local v21       #discardLocalDeletions:Z
    .restart local v23       #i:I
    .restart local v24       #numChangesAfter:J
    .restart local v26       #numChangesBefore:J
    .restart local v29       #uploadOnly:Z
    :cond_d
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3
.end method

.method private isCanceled()Z
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method private maybeUpdateSubscribedFeeds(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "account"
    .parameter "groupFeed"
    .parameter "contactsFeed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    .line 469
    .local v13, expectedFeeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.android.contacts"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 476
    .local v11, existingFeeds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 477
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "feed"

    aput-object v7, v5, v6

    const-string v6, "_sync_account=? AND _sync_account_type=? AND authority=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "com.android.contacts"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 482
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 484
    .local v16, id:J
    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 485
    .local v14, feed:Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 488
    .end local v14           #feed:Ljava/lang/String;
    .end local v16           #id:J
    :catchall_0
    move-exception v4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 492
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 493
    .local v12, expectedFeed:Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 495
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 496
    .local v18, values:Landroid/content/ContentValues;
    const-string v4, "_sync_account"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v4, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v4, "feed"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v4, "service"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getServiceName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v4, "authority"

    const-string v5, "com.android.contacts"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v4, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 503
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 506
    .end local v12           #expectedFeed:Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local p0
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 508
    .local v10, existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 509
    .restart local v16       #id:J
    sget-object v4, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 512
    .end local v10           #existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v16           #id:J
    :cond_4
    return-void
.end method

.method private resetSyncStateForFeed(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p2, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 861
    const-string v1, "feed_updated_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 862
    const-string v1, "do_incremental_sync"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 863
    const-string v1, "lastFetchedId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 864
    const-string v1, "lastFetchedIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p2, p1}, Lcom/google/android/syncadapters/GDataSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 866
    return-void
.end method

.method private sendEntityToServer(Ljava/util/Set;Landroid/content/Entity;Lcom/google/android/syncadapters/contacts/AuthInfo;Lcom/google/wireless/gdata2/client/GDataServiceClient;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 23
    .parameter
    .parameter "entity"
    .parameter "authInfo"
    .parameter "gDataClient"
    .parameter "provider"
    .parameter "handler"
    .parameter "syncResult"
    .parameter "rawContactsUri"
    .parameter "dataUri"
    .parameter "groupsUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Entity;",
            "Lcom/google/android/syncadapters/contacts/AuthInfo;",
            "Lcom/google/wireless/gdata2/client/GDataServiceClient;",
            "Landroid/content/ContentProviderClient;",
            "Lcom/google/android/syncadapters/EntryAndEntityHandler;",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/ConflictDetectedException;,
            Lcom/google/wireless/gdata2/client/ResourceUnavailableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    .local p1, contactsSyncSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, p2

    move-object v2, v5

    move-object/from16 v3, p5

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v19

    .line 667
    .local v19, entry:Lcom/google/wireless/gdata2/data/Entry;
    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/gdata2/data/Entry;->isDeleted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 668
    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/gdata2/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/gdata2/data/Entry;->getETag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->newDelete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;

    move-result-object v21

    .line 676
    .local v21, operation:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    :goto_0
    invoke-interface/range {p6 .. p6}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntryClass()Ljava/lang/Class;

    move-result-object v20

    .line 678
    .local v20, entryClass:Ljava/lang/Class;
    :try_start_0
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 679
    const-string v5, "ContactsSyncAdapter"

    const-string v6, "sending operation to server"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, p4

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->doServerOperation(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_1
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 690
    const-string v5, "ContactsSyncAdapter"

    const-string v6, "applying resulting entry to entity"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 715
    :cond_2
    :goto_2
    return-void

    .line 669
    .end local v20           #entryClass:Ljava/lang/Class;
    .end local v21           #operation:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 670
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, p6

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->newInsert(Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;

    move-result-object v21

    .restart local v21       #operation:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    goto :goto_0

    .line 672
    .end local v21           #operation:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    :cond_4
    invoke-static/range {v19 .. v19}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->newUpdate(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;

    move-result-object v21

    .restart local v21       #operation:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;
    goto :goto_0

    .line 682
    .restart local v20       #entryClass:Ljava/lang/Class;
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 684
    .local v18, e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/syncadapters/contacts/AuthInfo;->invalidateAuthToken()V

    .line 685
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/syncadapters/contacts/AuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, p4

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->doServerOperation(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Ljava/lang/Class;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/String;)V

    goto :goto_1

    .line 694
    .end local v18           #e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :pswitch_0
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$002(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    .line 698
    :pswitch_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 700
    .local v6, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object v7, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;->access$000(Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter$Operation;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v10

    const/4 v12, 0x1

    const/16 v17, 0x0

    move-object/from16 v5, p6

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-interface/range {v5 .. v17}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V

    .line 704
    move-object/from16 v0, p5

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v22

    .line 705
    .local v22, result:[Landroid/content/ContentProviderResult;
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v6           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-result v5

    if-eqz v5, :cond_2

    .line 706
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "results are: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 708
    .end local v22           #result:[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v5

    move-object/from16 v18, v5

    .line 709
    .local v18, e:Landroid/content/OperationApplicationException;
    const-string v5, "ContactsSyncAdapter"

    const-string v6, "error applying batch"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 710
    .end local v18           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v5

    move-object/from16 v18, v5

    .line 711
    .local v18, e:Landroid/os/RemoteException;
    const-string v5, "ContactsSyncAdapter"

    const-string v6, "error applying batch"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private skipEntry(Ljava/util/ArrayList;ILjava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1126
    const-string v0, "ContactsSyncAdapter"

    const-string v1, "Entry failed, skipping "

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1127
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 1129
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1131
    :cond_0
    return-void
.end method

.method private updateProviderForInitialSync(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 874
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 875
    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local android etag magic value"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-interface {p3, p1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 878
    return-void
.end method

.method private updateSyncStateAfterFeedRead(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/GDataSyncState;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 883
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 885
    iget-object v1, p3, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    invoke-interface {p4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 886
    const-string v2, "feed_updated_time"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v2, "lastFetchedId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 888
    const-string v2, "lastFetchedIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 890
    const-string v2, "do_incremental_sync"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 891
    const-string v2, "ContactsSyncAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    const-string v2, "ContactsSyncAdapter"

    const-string v3, "switching from full to incremental"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    invoke-interface {p4, p1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEtagColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "local android etag magic value"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    const-string v2, "do_incremental_sync"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 906
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/syncadapters/GDataSyncState;->newUpdateOperation()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 915
    return-void

    .line 910
    :catch_0
    move-exception v0

    .line 911
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "unable to update sync state after successful feed read"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 912
    :catch_1
    move-exception v0

    .line 913
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "unable to update sync state after successful feed read"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public ensureSpecialGroupsAreCreated([Landroid/accounts/Account;)V
    .locals 29
    .parameter "accounts"

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mSpecialGroupsLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 300
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v19

    .line 301
    .local v19, hasMyContactsGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v18

    .line 302
    .local v18, hasFavoritesGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 303
    .local v5, cr:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->PROJECTION_GROUPS:[Ljava/lang/String;

    const-string v8, "account_type=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.google"

    aput-object v11, v9, v10

    const-string v10, "_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    .line 308
    .local v15, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 309
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 310
    .local v25, systemId:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 311
    .local v12, accountName:Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    move v14, v6

    .line 312
    .local v14, autoAdd:Z
    :goto_1
    const/4 v6, 0x4

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    move/from16 v16, v6

    .line 313
    .local v16, favorites:Z
    :goto_2
    const/4 v6, 0x5

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 314
    .local v22, rowId:J
    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 315
    .local v26, title:Ljava/lang/String;
    const/4 v6, 0x6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 318
    .local v24, sourceId:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 322
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 330
    const-string v6, "Contacts"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "System Group: My Contacts"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v25, :cond_0

    if-nez v24, :cond_0

    .line 333
    :cond_1
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    if-eqz v14, :cond_2

    if-nez v25, :cond_0

    .line 336
    :cond_2
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v27, values:Landroid/content/ContentValues;
    const-string v6, "auto_add"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v6, "system_id"

    const-string v7, "Contacts"

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v6, "title"

    const-string v7, "My Contacts"

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v27

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 363
    .end local v12           #accountName:Ljava/lang/String;
    .end local v14           #autoAdd:Z
    .end local v16           #favorites:Z
    .end local v22           #rowId:J
    .end local v24           #sourceId:Ljava/lang/String;
    .end local v25           #systemId:Ljava/lang/String;
    .end local v26           #title:Ljava/lang/String;
    .end local v27           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v6

    .line 406
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v18           #hasFavoritesGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19           #hasMyContactsGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v6

    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 311
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v12       #accountName:Ljava/lang/String;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v18       #hasFavoritesGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19       #hasMyContactsGroup:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25       #systemId:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    move v14, v6

    goto/16 :goto_1

    .line 312
    .restart local v14       #autoAdd:Z
    :cond_4
    const/4 v6, 0x0

    move/from16 v16, v6

    goto/16 :goto_2

    .line 348
    .restart local v16       #favorites:Z
    .restart local v22       #rowId:J
    .restart local v24       #sourceId:Ljava/lang/String;
    .restart local v26       #title:Ljava/lang/String;
    :cond_5
    :try_start_3
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 349
    const-string v6, "Starred in Android"

    const/4 v7, 0x1

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 350
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    if-nez v16, :cond_0

    .line 353
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .restart local v27       #values:Landroid/content/ContentValues;
    const-string v6, "favorites"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v27

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 363
    .end local v12           #accountName:Ljava/lang/String;
    .end local v14           #autoAdd:Z
    .end local v16           #favorites:Z
    .end local v22           #rowId:J
    .end local v24           #sourceId:Ljava/lang/String;
    .end local v25           #systemId:Ljava/lang/String;
    .end local v26           #title:Ljava/lang/String;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 367
    move-object/from16 v13, p1

    .local v13, arr$:[Landroid/accounts/Account;
    move-object v0, v13

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    aget-object v11, v13, v20

    .line 368
    .local v11, account:Landroid/accounts/Account;
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v11}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v17

    .line 369
    .local v17, groupsUri:Landroid/net/Uri;
    iget-object v6, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 370
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 371
    .restart local v27       #values:Landroid/content/ContentValues;
    const-string v6, "title"

    const-string v7, "My Contacts"

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v6, "system_id"

    const-string v7, "Contacts"

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v6, "group_visible"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v6, "auto_add"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 377
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_7
    iget-object v6, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 378
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 379
    .restart local v27       #values:Landroid/content/ContentValues;
    const-string v6, "title"

    const-string v7, "Starred in Android"

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v6, "group_visible"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v6, "favorites"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 367
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 389
    .end local v11           #account:Landroid/accounts/Account;
    .end local v17           #groupsUri:Landroid/net/Uri;
    :cond_9
    move-object/from16 v0, p1

    array-length v0, v0

    move v6, v0

    if-lez v6, :cond_b

    .line 390
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->PROJECTION_RAW_CONTACTS_ID:[Ljava/lang/String;

    const-string v8, "account_name is null AND account_type is null"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v15

    .line 393
    const/4 v6, 0x0

    :try_start_5
    aget-object v11, p1, v6

    .line 394
    .restart local v11       #account:Landroid/accounts/Account;
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .restart local v27       #values:Landroid/content/ContentValues;
    const-string v6, "account_name"

    iget-object v7, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v6, "account_type"

    iget-object v7, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 398
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "account_name is null AND account_type is null"

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v27

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 403
    .end local v11           #account:Landroid/accounts/Account;
    .end local v27           #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception v6

    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v6

    .restart local v11       #account:Landroid/accounts/Account;
    .restart local v27       #values:Landroid/content/ContentValues;
    :cond_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 406
    .end local v11           #account:Landroid/accounts/Account;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_b
    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 407
    return-void
.end method

.method getContactsSyncSet(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Ljava/util/Set;
    .locals 11
    .parameter "contactsProvider"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 516
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "should_sync"

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 520
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 521
    .local v8, syncEverything:Z
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    move v8, v10

    :goto_1
    goto :goto_0

    :cond_0
    move v8, v9

    goto :goto_1

    .line 525
    :cond_1
    if-eqz v8, :cond_2

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    :goto_2
    return-object v0

    .line 529
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 530
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "sourceid"

    aput-object v3, v2, v0

    const-string v3, "should_sync!=0 AND sourceid is not null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 534
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 535
    .local v7, groupsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getCanonicalGroupSourceId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 540
    .end local v7           #groupsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #groupsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    goto :goto_2
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 1216
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 1217
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1219
    :cond_0
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 1220
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1222
    :cond_1
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 1223
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1225
    :cond_2
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numEntries:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 1226
    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1228
    :cond_3
    iget v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    if-lez v0, :cond_4

    .line 1229
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1231
    :cond_4
    iget v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    if-lez v0, :cond_5

    .line 1232
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1234
    :cond_5
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1235
    return-void
.end method

.method protected hasTooManyChanges(JJ)Z
    .locals 6
    .parameter "numEntries"
    .parameter "numChanges"

    .prologue
    const-wide/16 v4, 0x0

    .line 550
    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    move-wide v0, v4

    .line 553
    .local v0, percentChanged:J
    :goto_0
    const-wide/16 v3, 0x5

    cmp-long v3, p3, v3

    if-lez v3, :cond_1

    const-wide/16 v3, 0x14

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 556
    .local v2, tooMany:Z
    :goto_1
    return v2

    .line 550
    .end local v0           #percentChanged:J
    .end local v2           #tooMany:Z
    :cond_0
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p3

    div-long/2addr v3, p1

    move-wide v0, v3

    goto :goto_0

    .line 553
    .restart local v0       #percentChanged:J
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1206
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1207
    invoke-virtual {p0, v0, p5}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 1208
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.android.contacts"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1210
    return-void
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 10
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v8, 0x1

    .line 154
    iput v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    .line 155
    iput v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    .line 156
    new-instance v6, Lcom/google/android/syncadapters/contacts/AuthInfo;

    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "cp"

    invoke-direct {v6, v0, p1, v1}, Lcom/google/android/syncadapters/contacts/AuthInfo;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V

    .local v6, authInfo:Lcom/google/android/syncadapters/contacts/AuthInfo;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 158
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->innerPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/android/syncadapters/contacts/AuthInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 171
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v7

    .line 160
    .local v7, e:Landroid/os/RemoteException;
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_0

    .line 161
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 162
    .local v7, e:Ljava/io/IOException;
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0

    .line 163
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 164
    .local v7, e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    invoke-virtual {v6}, Lcom/google/android/syncadapters/contacts/AuthInfo;->invalidateAuthToken()V

    .line 165
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 166
    const-string v0, "ContactsSyncAdapter"

    const-string v1, "innerSync failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v7           #e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method processLocalChanges(Lcom/google/android/syncadapters/contacts/AuthInfo;Landroid/content/ContentProviderClient;Ljava/util/Set;Landroid/content/SyncResult;Lcom/google/android/syncadapters/EntryAndEntityHandler;Z)V
    .locals 26
    .parameter "authInfo"
    .parameter "provider"
    .parameter
    .parameter "syncResult"
    .parameter "handler"
    .parameter "overrideTooManyDeletions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/syncadapters/contacts/AuthInfo;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/SyncResult;",
            "Lcom/google/android/syncadapters/EntryAndEntityHandler;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 575
    .local p3, contactsSyncSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 656
    :goto_0
    return-void

    .line 587
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NULL OR ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEditUriColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NOT NULL AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getDirtyColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != 0 OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != 0))"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 591
    .local v9, selection:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-interface/range {v5 .. v10}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 594
    .local v24, iterator:Landroid/content/EntityIterator;
    if-nez p6, :cond_6

    .line 595
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 597
    .local v25, total:I
    const/16 v21, 0x0

    .line 598
    .local v21, deletes:I
    :cond_1
    :goto_1
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 650
    :try_start_2
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 652
    .end local v9           #selection:Ljava/lang/String;
    .end local v21           #deletes:I
    .end local v24           #iterator:Landroid/content/EntityIterator;
    .end local v25           #total:I
    :catch_0
    move-exception v5

    move-object/from16 v22, v5

    .line 654
    .local v22, e:Landroid/os/RemoteException;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_0

    .line 602
    .end local v22           #e:Landroid/os/RemoteException;
    .restart local v9       #selection:Ljava/lang/String;
    .restart local v21       #deletes:I
    .restart local v24       #iterator:Landroid/content/EntityIterator;
    .restart local v25       #total:I
    :cond_2
    :try_start_3
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity;

    .line 603
    .local v12, entity:Landroid/content/Entity;
    invoke-virtual {v12}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 605
    .local v23, isDeleted:Z
    :goto_2
    if-eqz v23, :cond_1

    .line 606
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 603
    .end local v23           #isDeleted:Z
    :cond_3
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_2

    .line 609
    .end local v12           #entity:Landroid/content/Entity;
    :cond_4
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v5, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide v7, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->hasTooManyChanges(JJ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 610
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: Too many deletions were found in provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", not doing any more updates"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncStats;->clear()V

    .line 613
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v6, v0

    iput-wide v6, v5, Landroid/content/SyncStats;->numEntries:J

    .line 614
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide v6, v0

    iput-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 615
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p4

    iput-boolean v0, v1, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 616
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 650
    :try_start_4
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 619
    :cond_5
    :try_start_5
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->reset()V

    .line 622
    .end local v21           #deletes:I
    .end local v25           #total:I
    :cond_6
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v18

    .line 624
    .local v18, rawContactsUri:Landroid/net/Uri;
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v19

    .line 626
    .local v19, dataUri:Landroid/net/Uri;
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/AuthInfo;->mAccount:Landroid/accounts/Account;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v20

    .line 629
    .local v20, groupsUri:Landroid/net/Uri;
    :goto_3
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->isCanceled()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    if-eqz v5, :cond_7

    .line 650
    :try_start_6
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 633
    :cond_7
    :try_start_7
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 635
    .restart local v12       #entity:Landroid/content/Entity;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata2/contacts/client/ContactsClient;

    move-object v14, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p5

    move-object/from16 v17, p4

    invoke-direct/range {v10 .. v20}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->sendEntityToServer(Ljava/util/Set;Landroid/content/Entity;Lcom/google/android/syncadapters/contacts/AuthInfo;Lcom/google/wireless/gdata2/client/GDataServiceClient;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/EntryAndEntityHandler;Landroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/wireless/gdata2/ConflictDetectedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/wireless/gdata2/client/ResourceUnavailableException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 637
    :catch_1
    move-exception v5

    move-object/from16 v22, v5

    .line 638
    .local v22, e:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_9
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error with entity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 650
    .end local v12           #entity:Landroid/content/Entity;
    .end local v18           #rawContactsUri:Landroid/net/Uri;
    .end local v19           #dataUri:Landroid/net/Uri;
    .end local v20           #groupsUri:Landroid/net/Uri;
    .end local v22           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    :catchall_0
    move-exception v5

    :try_start_a
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->close()V

    throw v5
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 640
    .restart local v12       #entity:Landroid/content/Entity;
    .restart local v18       #rawContactsUri:Landroid/net/Uri;
    .restart local v19       #dataUri:Landroid/net/Uri;
    .restart local v20       #groupsUri:Landroid/net/Uri;
    :catch_2
    move-exception v5

    move-object/from16 v22, v5

    .line 641
    .local v22, e:Ljava/io/IOException;
    :try_start_b
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_3

    .line 642
    .end local v22           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object/from16 v22, v5

    .line 643
    .local v22, e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    goto :goto_3

    .line 644
    .end local v22           #e:Lcom/google/wireless/gdata2/ConflictDetectedException;
    :catch_4
    move-exception v5

    move-object/from16 v22, v5

    .line 645
    .local v22, e:Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/content/SyncResult;->delayUntil:J

    move-wide v5, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->getRetryAfter()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p4

    iput-wide v0, v2, Landroid/content/SyncResult;->delayUntil:J

    .line 646
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 650
    .end local v12           #entity:Landroid/content/Entity;
    .end local v22           #e:Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
    :cond_8
    :try_start_c
    invoke-interface/range {v24 .. v24}, Landroid/content/EntityIterator;->close()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0
.end method
