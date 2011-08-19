.class public final Lcom/google/android/feeds/core/content/SavedCursorProvider;
.super Landroid/content/ContentProvider;
.source "SavedCursorProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SavedCursorProvider"


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private final mCursors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mNextId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mNextId:J

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    .line 135
    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/google/android/feeds/core/content/SavedCursorProvider;
    .locals 12
    .parameter "context"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 94
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 95
    .local v6, manager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 96
    .local v3, flags:I
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v10, v11, v3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v8

    .line 98
    .local v8, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v8, :cond_2

    .line 99
    const-class v10, Lcom/google/android/feeds/core/content/SavedCursorProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, className:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ProviderInfo;

    .line 101
    .local v7, providerInfo:Landroid/content/pm/ProviderInfo;
    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 102
    invoke-static {p0}, Lcom/google/android/feeds/core/content/ContentProviderClientResolver;->get(Landroid/content/Context;)Lcom/google/android/feeds/core/content/ContentProviderClientResolver;

    move-result-object v9

    .line 104
    .local v9, resolver:Lcom/google/android/feeds/core/content/ContentProviderClientResolver;
    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/feeds/core/content/ContentProviderClientResolver;->acquireContentProviderClient(Ljava/lang/String;)Lcom/google/android/feeds/core/content/ContentProviderClient;

    move-result-object v2

    .line 106
    .local v2, client:Lcom/google/android/feeds/core/content/ContentProviderClient;
    if-eqz v2, :cond_0

    .line 108
    :try_start_0
    invoke-interface {v2}, Lcom/google/android/feeds/core/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v5

    .line 109
    .local v5, localProvider:Landroid/content/ContentProvider;
    instance-of v10, v5, Lcom/google/android/feeds/core/content/SavedCursorProvider;

    if-eqz v10, :cond_1

    .line 110
    check-cast v5, Lcom/google/android/feeds/core/content/SavedCursorProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v5           #localProvider:Landroid/content/ContentProvider;
    invoke-interface {v2}, Lcom/google/android/feeds/core/content/ContentProviderClient;->release()V

    move-object v10, v5

    .line 119
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #client:Lcom/google/android/feeds/core/content/ContentProviderClient;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v9           #resolver:Lcom/google/android/feeds/core/content/ContentProviderClientResolver;
    :goto_1
    return-object v10

    .line 113
    .restart local v1       #className:Ljava/lang/String;
    .restart local v2       #client:Lcom/google/android/feeds/core/content/ContentProviderClient;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #localProvider:Landroid/content/ContentProvider;
    .restart local v7       #providerInfo:Landroid/content/pm/ProviderInfo;
    .restart local v9       #resolver:Lcom/google/android/feeds/core/content/ContentProviderClientResolver;
    :cond_1
    invoke-interface {v2}, Lcom/google/android/feeds/core/content/ContentProviderClient;->release()V

    goto :goto_0

    .end local v5           #localProvider:Landroid/content/ContentProvider;
    :catchall_0
    move-exception v10

    invoke-interface {v2}, Lcom/google/android/feeds/core/content/ContentProviderClient;->release()V

    throw v10

    .line 119
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #client:Lcom/google/android/feeds/core/content/ContentProviderClient;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v9           #resolver:Lcom/google/android/feeds/core/content/ContentProviderClientResolver;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private static getKey(Landroid/net/Uri;)Ljava/lang/Long;
    .locals 3
    .parameter "contentUri"

    .prologue
    .line 88
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 89
    .local v0, id:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 5
    .parameter "context"
    .parameter "info"

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 148
    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, authorities:[Ljava/lang/String;
    array-length v3, v0

    if-nez v3, :cond_0

    .line 151
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No authority specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_0
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 155
    .local v1, authority:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/saved_cursors"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, baseUriString:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mBaseUri:Landroid/net/Uri;

    .line 158
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "uri"

    .prologue
    .line 173
    iget-object v3, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    monitor-enter v3

    .line 174
    :try_start_0
    iget-object v4, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->getKey(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;

    .line 175
    .local v1, cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 178
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface {v1, v2}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->getType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    monitor-exit v3

    move-object v3, v4

    .line 180
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v3

    :cond_0
    const/4 v4, 0x0

    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    .line 181
    .end local v1           #cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .locals 4

    .prologue
    .line 224
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 225
    iget-object v2, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    monitor-enter v2

    .line 226
    :try_start_0
    iget-object v3, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;

    .line 227
    .local v0, cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    invoke-interface {v0}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->forceClose()V

    goto :goto_0

    .line 230
    .end local v0           #cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 229
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 230
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 187
    iget-object v4, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    monitor-enter v4

    .line 188
    :try_start_0
    iget-object v5, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->getKey(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;

    .line 189
    .local v1, cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v1}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->getUid()I

    move-result v3

    .line 191
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v3, v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    .line 192
    .local v0, callerOwnsCursor:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v1}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->reopen()V

    .line 194
    invoke-interface {v1}, Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;->get()Landroid/database/Cursor;

    move-result-object v5

    monitor-exit v4

    move-object v4, v5

    .line 202
    .end local v0           #callerOwnsCursor:Z
    .end local v3           #uid:I
    :goto_1
    return-object v4

    .line 191
    .restart local v3       #uid:I
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 196
    .restart local v0       #callerOwnsCursor:Z
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process with uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempted to steal saved cursor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, msg:Ljava/lang/String;
    const-string v5, "SavedCursorProvider"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v4

    move-object v4, v7

    goto :goto_1

    .line 202
    .end local v0           #callerOwnsCursor:Z
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #uid:I
    :cond_2
    monitor-exit v4

    move-object v4, v7

    goto :goto_1

    .line 204
    .end local v1           #cursor:Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method save(Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;)Landroid/net/Uri;
    .locals 7
    .parameter "cursor"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mBaseUri:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mNextId:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mNextId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 163
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "SavedCursorProvider"

    const-string v3, "Cursor saved more than once."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/google/android/feeds/core/content/SavedCursorProvider;->mCursors:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->getKey(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v1

    return-object v0

    .line 168
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
