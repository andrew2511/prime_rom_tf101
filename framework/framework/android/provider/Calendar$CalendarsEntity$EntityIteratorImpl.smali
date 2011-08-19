.class Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar$CalendarsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# instance fields
.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    .registers 4
    .parameter "cursor"
    .parameter "provider"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 273
    iput-object p2, p0, Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .registers 4
    .parameter "cursor"
    .parameter "resolver"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 266
    iput-object p2, p0, Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Calendar$CalendarsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 268
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .registers 8
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 282
    .local v0, calendarId:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v2, cv:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    const-string v4, "_sync_account"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 286
    const-string v4, "_sync_account_type"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 288
    const-string v4, "_sync_id"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 289
    const-string v4, "_sync_version"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 290
    const-string v4, "_sync_time"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 291
    const-string v4, "_sync_local_id"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 292
    const-string v4, "_sync_dirty"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 293
    const-string v4, "_sync_mark"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v4, "sync1"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 296
    const-string/jumbo v4, "sync2"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v4, "sync3"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v4, "sync4"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v4, "sync5"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 301
    const-string v4, "name"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 302
    const-string v4, "displayName"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 304
    const-string v4, "color"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 305
    const-string v4, "access_level"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v4, "selected"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 307
    const-string/jumbo v4, "sync_events"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 308
    const-string v4, "location"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v4, "timezone"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 310
    const-string v4, "ownerAccount"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 312
    const-string v4, "organizerCanRespond"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 315
    const-string v4, "deleted"

    invoke-static {p1, v2, v4}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 318
    new-instance v3, Landroid/content/Entity;

    invoke-direct {v3, v2}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 321
    .local v3, entity:Landroid/content/Entity;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 324
    return-object v3
.end method
