.class public Lcom/google/android/partnersetup/RlzPingService;
.super Landroid/app/Service;
.source "RlzPingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/partnersetup/RlzPingService$PingScheduler;,
        Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;,
        Lcom/google/android/partnersetup/RlzPingService$PingCommunicator;,
        Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;
    }
.end annotation


# static fields
.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field private mBrandCode:Ljava/lang/String;

.field private mMachineID:Ljava/lang/String;

.field private mPID:Ljava/lang/String;

.field private mPingCommunicator:Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;

.field private mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "RlzPingService"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/partnersetup/RlzPingService;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 143
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/partnersetup/RlzPingService;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mMachineID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mBrandCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mPID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/partnersetup/RlzPingService;Landroid/net/Uri;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/partnersetup/RlzPingService;->tryPing(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/google/android/partnersetup/RlzPingService;->eventsWereAdded(Landroid/content/ContentResolver;II)Z

    move-result v0

    return v0
.end method

.method public static addAllApplicationInstallEvents(Landroid/content/pm/PackageManager;Landroid/content/ContentResolver;)V
    .locals 6
    .parameter "pm"
    .parameter "cr"

    .prologue
    .line 306
    const/16 v4, 0x80

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 308
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 309
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.google.android.partnersetup.RLZ_ACCESS_POINT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.google.android.partnersetup.RLZ_ACCESS_POINT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, ap:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/android/partnersetup/RlzPingService;->addApplicationInstallEvent(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v0           #ap:Ljava/lang/String;
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-void
.end method

.method public static addApplicationInstallEvent(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3
    .parameter "cr"
    .parameter "ap"

    .prologue
    .line 288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "ap"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "event_type"

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    sget-object v1, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 294
    return-void
.end method

.method public static buildPing(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter
    .parameter "machineID"
    .parameter "brandCode"
    .parameter "PID"
    .parameter "acap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .local p1, rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    :cond_0
    const/4 p0, 0x0

    .line 534
    .end local p0           #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .end local p1           #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :goto_0
    return-object p0

    .line 479
    .restart local p0       #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .restart local p1       #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "clients1.google.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/tools/pso/ping"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "rep"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "as"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .end local p2
    const-string v0, "pid"

    invoke-virtual {p2, v0, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p4, "hl"

    .end local p4
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p4, "acap"

    invoke-virtual {p2, p4, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 500
    .local p2, ping:Landroid/net/Uri$Builder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8

    .line 501
    const-string p4, "brand"

    invoke-virtual {p2, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    move-object p5, p2

    .line 506
    .end local p2           #ping:Landroid/net/Uri$Builder;
    .local p5, ping:Landroid/net/Uri$Builder;
    :goto_1
    if-eqz p0, :cond_7

    .line 507
    const/4 p3, 0x1

    .line 508
    .local p3, firstEvent:Z
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local p2, allEvents:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .end local p0           #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .local p4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;

    .line 510
    .local p0, e:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
    if-nez p3, :cond_2

    .line 511
    const-string p3, ","

    .end local p3           #firstEvent:Z
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->getQueryString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const/4 p0, 0x0

    .local p0, firstEvent:Z
    move p3, p0

    .end local p0           #firstEvent:Z
    .restart local p3       #firstEvent:Z
    goto :goto_2

    .line 516
    :cond_3
    const-string p0, "events"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #allEvents:Ljava/lang/StringBuilder;
    invoke-virtual {p5, p0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .end local p5           #ping:Landroid/net/Uri$Builder;
    .local p0, ping:Landroid/net/Uri$Builder;
    move-object p4, p0

    .line 522
    .end local p0           #ping:Landroid/net/Uri$Builder;
    .end local p3           #firstEvent:Z
    .local p4, ping:Landroid/net/Uri$Builder;
    :goto_3
    if-eqz p1, :cond_6

    .line 523
    const/4 p2, 0x1

    .line 524
    .local p2, firstRlz:Z
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local p0, allRLZs:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .local p3, i$:Ljava/util/Iterator;
    move p1, p2

    .end local p2           #firstRlz:Z
    .local p1, firstRlz:Z
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;

    .line 526
    .local p2, r:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;
    if-nez p1, :cond_4

    const-string p1, ","

    .end local p1           #firstRlz:Z
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->getQueryString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const/4 p1, 0x0

    .restart local p1       #firstRlz:Z
    goto :goto_4

    .line 530
    .end local p2           #r:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;
    :cond_5
    const-string p1, "rlz"

    .end local p1           #firstRlz:Z
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #allRLZs:Ljava/lang/StringBuilder;
    invoke-virtual {p4, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 534
    .end local p3           #i$:Ljava/util/Iterator;
    .end local p4           #ping:Landroid/net/Uri$Builder;
    .local p0, ping:Landroid/net/Uri$Builder;
    :goto_5
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto/16 :goto_0

    .end local p0           #ping:Landroid/net/Uri$Builder;
    .local p1, rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .restart local p4       #ping:Landroid/net/Uri$Builder;
    :cond_6
    move-object p0, p4

    .end local p4           #ping:Landroid/net/Uri$Builder;
    .restart local p0       #ping:Landroid/net/Uri$Builder;
    goto :goto_5

    .local p0, events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .local p3, brandCode:Ljava/lang/String;
    .restart local p5       #ping:Landroid/net/Uri$Builder;
    :cond_7
    move-object p4, p5

    .end local p5           #ping:Landroid/net/Uri$Builder;
    .restart local p4       #ping:Landroid/net/Uri$Builder;
    goto :goto_3

    .end local p4           #ping:Landroid/net/Uri$Builder;
    .local p2, ping:Landroid/net/Uri$Builder;
    .local p5, acap:Ljava/lang/String;
    :cond_8
    move-object p5, p2

    .end local p2           #ping:Landroid/net/Uri$Builder;
    .local p5, ping:Landroid/net/Uri$Builder;
    goto :goto_1
.end method

.method public static calculateCrc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 656
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 657
    .local v0, crc:Ljava/util/zip/CRC32;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 658
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static eventsWereAdded(Landroid/content/ContentResolver;II)Z
    .locals 11
    .parameter "cr"
    .parameter "numEventsProcessed"
    .parameter "numEventsRequested"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 445
    const/4 v8, 0x0

    .line 447
    .local v8, eventsCur:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 449
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 450
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 451
    .local v6, count:I
    add-int v0, p1, v6

    if-gt v0, p2, :cond_1

    move v0, v10

    .line 456
    :goto_0
    if-eqz v8, :cond_0

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v6           #count:I
    :cond_0
    :goto_1
    return v0

    .restart local v6       #count:I
    :cond_1
    move v0, v9

    .line 451
    goto :goto_0

    .line 452
    .end local v6           #count:I
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 456
    .local v7, e:Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    goto :goto_1

    .line 456
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static generateMachineID(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "c"

    .prologue
    .line 671
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 672
    .local v6, tm:Landroid/telephony/TelephonyManager;
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 673
    .local v8, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, deviceID:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 675
    const-string v0, ""

    .line 677
    :cond_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 680
    .local v3, manufacturer:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 690
    .local v7, wifiMac:Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/partnersetup/RlzPingService;->md5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, md5:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 692
    const/4 v9, 0x0

    .line 698
    :goto_1
    return-object v9

    .line 681
    .end local v4           #md5:Ljava/lang/String;
    .end local v7           #wifiMac:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 686
    .local v1, e:Ljava/lang/Exception;
    const-string v7, ""

    .restart local v7       #wifiMac:Ljava/lang/String;
    goto :goto_0

    .line 694
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #md5:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .local v5, output:Ljava/lang/StringBuilder;
    const/16 v9, 0x32

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int v2, v9, v10

    .local v2, i:I
    :goto_2
    if-lez v2, :cond_2

    .line 696
    const-string v9, "0"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 698
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method public static generatePID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, android_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/partnersetup/RlzPingService;->md5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAndSavePref(I)Ljava/lang/String;
    .locals 2
    .parameter "pref"

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, val:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 272
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getDeviceGUID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    invoke-static {p0}, Lcom/google/android/partnersetup/RlzPingService;->generateMachineID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v1, v0}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->setDeviceGUID(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getDevicePID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 279
    invoke-static {p0}, Lcom/google/android/partnersetup/RlzPingService;->generatePID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v1, v0}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->setDevicePID(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 735
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/partnersetup/RlzPingService;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    .line 743
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, language:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, country:Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 747
    const-string v2, "cn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    const-string v1, "zh-CN"

    .line 759
    :cond_0
    :goto_0
    return-object v1

    .line 749
    :cond_1
    const-string v2, "tw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    const-string v1, "zh-TW"

    goto :goto_0

    .line 752
    :cond_2
    const-string v2, "pt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    const-string v2, "br"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 754
    const-string v1, "pt-BR"

    goto :goto_0

    .line 755
    :cond_3
    const-string v2, "pt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    const-string v1, "pt-PT"

    goto :goto_0
.end method

.method private static handlePingResult(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)I
    .locals 11
    .parameter "cr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, allEvents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .local p2, rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .local p3, apToEventMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .local v3, eventsToClear:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v7, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 625
    .local v5, isFirst:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;

    .line 626
    .local v2, event:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
    if-nez v5, :cond_0

    .line 627
    const-string v8, " OR "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_0
    const-string v8, "("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v8, "ap"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v8, "=? AND "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v2}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->getAccessPoint()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    const-string v8, "event_type"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string v8, "=?)"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v2}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;->getEventType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    const/4 v5, 0x0

    goto :goto_0

    .line 638
    .end local v2           #event:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;
    :cond_1
    sget-object v9, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 642
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;

    .line 643
    .local v6, rlz:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 644
    .local v1, cv:Landroid/content/ContentValues;
    invoke-virtual {v6}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->getAccessPoint()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, ap:Ljava/lang/String;
    const-string v8, "app_name"

    invoke-virtual {v1, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v8, "current_rlz"

    invoke-virtual {v6}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;->getRlzString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v9, "status"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo;->rlzStatusOfChar(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    sget-object v8, Lcom/google/android/partnersetup/RlzProtocol$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 652
    .end local v0           #ap:Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v6           #rlz:Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    return v8
.end method

.method private static md5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "input"

    .prologue
    .line 716
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 720
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 721
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 722
    .local v4, messageDigest:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .local v5, output:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v4

    if-ge v3, v6, :cond_1

    .line 724
    aget-byte v6, v4, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, hexDigit:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 726
    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 717
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #hexDigit:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #messageDigest:[B
    .end local v5           #output:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 718
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v6, 0x0

    .line 728
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v6

    .restart local v0       #digest:Ljava/security/MessageDigest;
    .restart local v3       #i:I
    .restart local v4       #messageDigest:[B
    .restart local v5       #output:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private savePingResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "contents"
    .parameter "result"

    .prologue
    .line 611
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 612
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "contents"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v1, "time_completed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 616
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/partnersetup/RlzProtocol$Pings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 617
    return-void
.end method

.method private sendAndSavePing(Landroid/net/Uri;)I
    .locals 27
    .parameter "ping"

    .prologue
    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService;->mPingCommunicator:Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;->sendPingForResult(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 543
    .local v19, resp:Ljava/lang/String;
    if-nez v19, :cond_0

    .line 544
    const/16 v24, -0x1

    .line 607
    :goto_0
    return v24

    .line 546
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v4, accumulatedResponse:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 548
    .local v9, crcValid:Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v21, rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v5, allEvents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 557
    .local v7, apToEventMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Ljava/util/Scanner;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 558
    .local v22, scanner:Ljava/util/Scanner;
    :cond_1
    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 559
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v18

    .line 560
    .local v18, line:Ljava/lang/String;
    const-string v24, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 561
    .local v16, keyVal:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 562
    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v24, "\n"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 566
    :cond_2
    const/16 v24, 0x0

    aget-object v15, v16, v24

    .line 567
    .local v15, key:Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v23, v16, v24

    .line 568
    .local v23, value:Ljava/lang/String;
    const-string v24, "crc32"

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 570
    const/16 v24, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 571
    .local v20, responseCrc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/partnersetup/RlzPingService;->calculateCrc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 572
    sget-object v24, Lcom/google/android/partnersetup/RlzPingService;->LOG:Ljava/util/logging/Logger;

    sget-object v25, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v26, "Response CRC check failed"

    invoke-virtual/range {v24 .. v26}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 573
    const/16 v24, -0x1

    goto/16 :goto_0

    .line 575
    :cond_3
    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v24, "\n"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v21

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/partnersetup/RlzPingService;->handlePingResult(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)I

    move-result v13

    .line 579
    .local v13, eventsHandled:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/partnersetup/RlzPingService;->savePingResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_4

    .line 582
    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.intent.action.RLZ_VALUES_UPDATED"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/partnersetup/RlzPingService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    move/from16 v24, v13

    .line 584
    goto/16 :goto_0

    .line 586
    .end local v13           #eventsHandled:I
    .end local v20           #responseCrc:Ljava/lang/String;
    :cond_5
    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v24, "\n"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v24, "rlz"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 589
    const/16 v24, 0x3

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 590
    .local v6, ap:Ljava/lang/String;
    new-instance v24, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;

    move-object/from16 v0, v24

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 591
    .end local v6           #ap:Ljava/lang/String;
    :cond_6
    const-string v24, "events"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 592
    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 594
    .local v12, events:[Ljava/lang/String;
    move-object v8, v12

    .local v8, arr$:[Ljava/lang/String;
    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget-object v10, v8, v14

    .line 595
    .local v10, event:Ljava/lang/String;
    const/16 v24, 0x0

    const/16 v25, 0x2

    move-object v0, v10

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 596
    .restart local v6       #ap:Ljava/lang/String;
    const/16 v24, 0x2

    move-object v0, v10

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 597
    .local v11, eventType:Ljava/lang/String;
    new-instance v24, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;

    move-object/from16 v0, v24

    move-object v1, v6

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    const-string v24, "F"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 599
    invoke-interface {v7, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 607
    .end local v6           #ap:Ljava/lang/String;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #event:Ljava/lang/String;
    .end local v11           #eventType:Ljava/lang/String;
    .end local v12           #events:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #keyVal:[Ljava/lang/String;
    .end local v17           #len$:I
    .end local v18           #line:Ljava/lang/String;
    .end local v23           #value:Ljava/lang/String;
    :cond_8
    const/16 v24, -0x1

    goto/16 :goto_0
.end method

.method private tryPing(Landroid/net/Uri;)I
    .locals 2
    .parameter "ping"

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/google/android/partnersetup/RlzPingService;->sendAndSavePing(Landroid/net/Uri;)I

    move-result v0

    .line 464
    .local v0, retVal:I
    if-gez v0, :cond_0

    .line 465
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService;->mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;->scheduleRetryPing()V

    .line 467
    :cond_0
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 251
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/google/android/partnersetup/RlzPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/RlzPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-direct {v0, p0, v1}, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;-><init>(Landroid/content/Context;Lcom/google/android/partnersetup/RlzPreferencesInterface;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mPingCommunicator:Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Lcom/google/android/partnersetup/RlzPingService$PingCommunicator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/partnersetup/RlzPingService$PingCommunicator;-><init>(Lcom/google/android/partnersetup/RlzPingService$1;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mPingCommunicator:Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;

    .line 263
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/partnersetup/RlzPingService;->getAndSavePref(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mMachineID:Ljava/lang/String;

    .line 264
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/partnersetup/RlzPingService;->getAndSavePref(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mPID:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v0}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getBrandCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzPingService;->mBrandCode:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    .line 332
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService;->mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;->schedulePeriodicPing()V

    .line 333
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->isRlzEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    const-string v1, "com.google.android.partnersetup.intents.EXTRA_TESTING"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.partnersetup.intents.ACTION_SERVICE_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/partnersetup/RlzPingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/partnersetup/RlzPingService;->stopSelf(I)V

    move v1, v3

    .line 440
    :goto_0
    return v1

    .line 340
    :cond_1
    new-instance v0, Lcom/google/android/partnersetup/RlzPingService$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/partnersetup/RlzPingService$1;-><init>(Lcom/google/android/partnersetup/RlzPingService;Landroid/content/Intent;I)V

    .line 439
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v1, v3

    .line 440
    goto :goto_0
.end method

.method setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;

    .line 240
    return-void
.end method

.method setPingCommunicator(Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;)V
    .locals 0
    .parameter "comm"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingService;->mPingCommunicator:Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;

    .line 235
    return-void
.end method

.method setPingScheduler(Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;)V
    .locals 0
    .parameter "sched"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingService;->mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    .line 225
    return-void
.end method

.method setPreferences(Lcom/google/android/partnersetup/RlzPreferencesInterface;)V
    .locals 0
    .parameter "prefs"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    .line 230
    return-void
.end method
