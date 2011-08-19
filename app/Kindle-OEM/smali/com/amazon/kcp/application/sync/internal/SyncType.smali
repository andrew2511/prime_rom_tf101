.class public Lcom/amazon/kcp/application/sync/internal/SyncType;
.super Ljava/lang/Object;
.source "SyncType.java"


# static fields
.field public static final ALL_TYPES:[Lcom/amazon/kcp/application/sync/internal/SyncType; = null

.field public static final BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType; = null

.field public static final BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType; = null

.field public static final EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType; = null

.field public static final LAUNCH:Lcom/amazon/kcp/application/sync/internal/SyncType; = null

.field public static final LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType; = null

.field public static final LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType; = null

.field public static final SLEEP:Lcom/amazon/kcp/application/sync/internal/SyncType; = null

.field private static final SYNC_DATE_STORAGE_TAG:Ljava/lang/String; = "LastSyncDate"


# instance fields
.field private final bookRequired:Z

.field private final cancelable:Z

.field private lastSyncDate:Ljava/util/Date;

.field private final metricTimer:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final steps:I

.field private final storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;

.field private final throttled:Z

.field private final userInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x2b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncType;

    const-string v1, "LAUNCH"

    const/16 v2, 0x29

    const-string v7, "FullSync"

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;IZZZZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->LAUNCH:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 23
    new-instance v5, Lcom/amazon/kcp/application/sync/internal/SyncType;

    const-string v6, "SLEEP"

    const-string v12, "UploadLocations"

    move v7, v4

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v5 .. v12}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;IZZZZLjava/lang/String;)V

    sput-object v5, Lcom/amazon/kcp/application/sync/internal/SyncType;->SLEEP:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 31
    new-instance v5, Lcom/amazon/kcp/application/sync/internal/SyncType;

    const-string v6, "EXIT"

    const/16 v7, 0x21

    const-string v12, "UploadLocations"

    move v8, v3

    move v9, v3

    move v10, v4

    move v11, v3

    invoke-direct/range {v5 .. v12}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;IZZZZLjava/lang/String;)V

    sput-object v5, Lcom/amazon/kcp/application/sync/internal/SyncType;->EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 39
    new-instance v5, Lcom/amazon/kcp/application/sync/internal/SyncType;

    const-string v6, "BOOK_EXIT"

    const-string v12, "UploadLocations"

    move v7, v4

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v12}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;IZZZZLjava/lang/String;)V

    sput-object v5, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 47
    new-instance v5, Lcom/amazon/kcp/application/sync/internal/SyncType;

    const-string v6, "BOOK_MANUAL"

    const/16 v7, 0x10

    const-string v12, "DownloadLocation"

    move v8, v4

    move v9, v3

    move v10, v4

    move v11, v3

    invoke-direct/range {v5 .. v12}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;IZZZZLjava/lang/String;)V

    sput-object v5, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 55
    new-instance v5, Lcom/amazon/kcp/application/sync/internal/SyncType;

    const-string v6, "LIBRARY_MANUAL"

    const-string v12, "FullManualSync"

    move v7, v13

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v12}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;IZZZZLjava/lang/String;)V

    sput-object v5, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 63
    new-instance v5, Lcom/amazon/kcp/application/sync/internal/SyncType;

    const-string v6, "LOGIN"

    const-string v12, "Login"

    move v7, v13

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v5 .. v12}, Lcom/amazon/kcp/application/sync/internal/SyncType;-><init>(Ljava/lang/String;IZZZZLjava/lang/String;)V

    sput-object v5, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/kcp/application/sync/internal/SyncType;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LAUNCH:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->SLEEP:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->ALL_TYPES:[Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZLjava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "steps"
    .parameter "bookRequired"
    .parameter "throttled"
    .parameter "cancelable"
    .parameter "userInitiated"
    .parameter "metricTimer"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->name:Ljava/lang/String;

    .line 99
    iput p2, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->steps:I

    .line 100
    iput-boolean p3, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->bookRequired:Z

    .line 101
    iput-boolean p4, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->throttled:Z

    .line 102
    iput-boolean p5, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->cancelable:Z

    .line 103
    iput-boolean p6, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->userInitiated:Z

    .line 104
    iput-object p7, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->metricTimer:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->getInstance()Lcom/amazon/kcp/application/internal/KeyValueStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    invoke-direct {p0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->makeStorageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    invoke-direct {p0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->makeStorageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->lastSyncDate:Ljava/util/Date;

    .line 111
    :cond_0
    return-void
.end method

.method private makeStorageKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastSyncDate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLastSyncDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->lastSyncDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMetricTimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->metricTimer:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSteps()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->steps:I

    return v0
.end method

.method public isBookRequired()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->bookRequired:Z

    return v0
.end method

.method public isThrottled()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->throttled:Z

    return v0
.end method

.method public isUserCancelable()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->cancelable:Z

    return v0
.end method

.method public isUserInitiated()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->userInitiated:Z

    return v0
.end method

.method public setLastSyncDate(Ljava/util/Date;)V
    .locals 6
    .parameter "lastSyncDate"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->lastSyncDate:Ljava/util/Date;

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->ALL_TYPES:[Lcom/amazon/kcp/application/sync/internal/SyncType;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 192
    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->ALL_TYPES:[Lcom/amazon/kcp/application/sync/internal/SyncType;

    aget-object v1, v2, v0

    .line 193
    .local v1, syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;
    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getSteps()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/amazon/kcp/application/sync/internal/SyncStep;->isSubset(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iput-object p1, v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->lastSyncDate:Ljava/util/Date;

    .line 197
    iget-object v2, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->storage:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    invoke-direct {p0}, Lcom/amazon/kcp/application/sync/internal/SyncType;->makeStorageKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/amazon/kcp/application/internal/KeyValueStorage;->setDate(Ljava/lang/String;Ljava/util/Date;)V

    .line 190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v1           #syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncType;->name:Ljava/lang/String;

    return-object v0
.end method
