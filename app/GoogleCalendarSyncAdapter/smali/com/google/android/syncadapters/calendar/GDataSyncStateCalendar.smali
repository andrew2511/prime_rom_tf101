.class public Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
.super Ljava/lang/Object;
.source "GDataSyncStateCalendar.java"


# instance fields
.field public final feedData:Landroid/os/Bundle;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .parameter "uri"
    .parameter "feedData"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    .line 98
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    .line 99
    return-void
.end method

.method public static create(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .locals 5
    .parameter "provider"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v2, values:Landroid/content/ContentValues;
    new-instance v0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>()V

    .line 196
    .local v0, syncState:Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    const-string v3, "data"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->toBytes(Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 197
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v3, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    .local v1, uri:Landroid/net/Uri;
    new-instance v3, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-direct {v3, v1, v4}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-object v3
.end method

.method static fromBytes(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .locals 5
    .parameter "uri"
    .parameter "syncStateData"

    .prologue
    const/4 v3, 0x0

    .line 122
    if-eqz p1, :cond_1

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    .local v0, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v0, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 127
    :try_start_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, -0x21524111

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 128
    new-instance v2, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    .end local v0           #parcel:Landroid/os/Parcel;
    :goto_0
    return-object v2

    .line 134
    .restart local v0       #parcel:Landroid/os/Parcel;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 130
    :catch_0
    move-exception v2

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    .end local v0           #parcel:Landroid/os/Parcel;
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->migratePreFroyoSyncState(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v1

    .line 138
    .local v1, syncState:Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    const-string v2, "CalendarSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting sync state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v2, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .locals 2
    .parameter "provider"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    sget-object v1, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Landroid/provider/SyncStateContract$Helpers;->getWithUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)Landroid/util/Pair;

    move-result-object v0

    .line 208
    .local v0, syncStateUriAndData:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/net/Uri;[B>;"
    if-nez v0, :cond_0

    .line 209
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->create(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v1

    .line 211
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {v1, p0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->fromBytes(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    move-result-object v1

    goto :goto_0
.end method

.method private static migratePreFroyoSyncState(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;
    .locals 9
    .parameter "uri"
    .parameter "data"

    .prologue
    .line 149
    invoke-static {p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->newGDataSyncDataFromBytes([B)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v6

    .line 151
    .local v6, oldSyncState:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    if-nez v6, :cond_0

    .line 152
    const/4 p0, 0x0

    .line 177
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 154
    .restart local p0
    .restart local p1
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, feedData:Landroid/os/Bundle;
    iget-object p1, v6, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 156
    .local p1, feed:Ljava/lang/String;
    iget-object v1, v6, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 158
    .local v5, oldFeedData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v1, feedSyncState:Landroid/os/Bundle;
    iget-wide v3, v5, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    .line 160
    .local v3, lastUpdatedTime:J
    iget-wide v7, v5, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 162
    .local v7, windowEnd:J
    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-lez v5, :cond_1

    .line 164
    .end local v5           #oldFeedData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v7           #windowEnd:J
    const-string v5, "do_incremental_sync"

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    new-instance v5, Landroid/text/format/Time;

    const-string v7, "UTC"

    invoke-direct {v5, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 166
    .local v5, time:Landroid/text/format/Time;
    invoke-virtual {v5, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 167
    const-string v3, "feed_updated_time"

    .end local v3           #lastUpdatedTime:J
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v5           #time:Landroid/text/format/Time;
    :goto_2
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    const-string v3, "CalendarSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrated sync state from old release: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #feed:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
    .restart local v3       #lastUpdatedTime:J
    .restart local p1       #feed:Ljava/lang/String;
    :cond_1
    const-string v3, "do_incremental_sync"

    .end local v3           #lastUpdatedTime:J
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 177
    .end local v1           #feedSyncState:Landroid/os/Bundle;
    .end local p1           #feed:Ljava/lang/String;
    :cond_2
    new-instance p1, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;

    invoke-direct {p1, p0, v0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V

    move-object p0, p1

    goto :goto_0
.end method

.method private static toBytes(Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;)[B
    .locals 2
    .parameter "syncState"

    .prologue
    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 183
    .local v0, parcel:Landroid/os/Parcel;
    const v1, -0x21524111

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    return-object v1

    .line 188
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method


# virtual methods
.method public newUpdateOperation()Landroid/content/ContentProviderOperation;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->toBytes(Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/SyncStateContract$Helpers;->newUpdateOperation(Landroid/net/Uri;[B)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "GDataSyncData:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 106
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->feedData:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 110
    .local v3, value:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    .line 111
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 117
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public updateInProvider(Landroid/content/ContentProviderClient;)V
    .locals 2
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;->toBytes(Lcom/google/android/syncadapters/calendar/GDataSyncStateCalendar;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/provider/SyncStateContract$Helpers;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;[B)V

    .line 218
    return-void
.end method
