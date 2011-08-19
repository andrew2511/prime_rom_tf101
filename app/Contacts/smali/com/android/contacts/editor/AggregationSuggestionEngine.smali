.class public Lcom/android/contacts/editor/AggregationSuggestionEngine;
.super Landroid/os/HandlerThread;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
    }
.end annotation


# instance fields
.field private mContactId:J

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDataCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

.field private mMainHandler:Landroid/os/Handler;

.field private mSuggestedContactIds:[J

.field private mSuggestionsUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 119
    const-string v0, "AggregationSuggestions"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    .line 120
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V
    .locals 2
    .parameter "sb"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 236
    invoke-virtual {p2, p3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 239
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_1
    return-void
.end method

.method private buildAggregationSuggestionUri(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/net/Uri;
    .locals 6
    .parameter "values"

    .prologue
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v1, nameSb:Ljava/lang/StringBuilder;
    const-string v3, "data4"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 201
    const-string v3, "data2"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 202
    const-string v3, "data5"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 203
    const-string v3, "data3"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 204
    const-string v3, "data6"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 207
    const-string v3, "data1"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 210
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v2, phoneticNameSb:Ljava/lang/StringBuilder;
    const-string v3, "data9"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 212
    const-string v3, "data8"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 213
    const-string v3, "data7"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 216
    const/4 v3, 0x0

    .line 232
    :goto_0
    return-object v3

    .line 219
    :cond_1
    invoke-static {}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;->builder()Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setLimit(I)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    invoke-virtual {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setContactId(J)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v0

    .line 223
    .local v0, builder:Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    const-string v3, "name"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    .line 227
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    const-string v3, "name"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    .line 232
    :cond_3
    invoke-virtual {v0}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private loadAggregationSuggestions(Landroid/net/Uri;)V
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 297
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-array v2, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 301
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 327
    :goto_0
    return-void

    .line 305
    :cond_0
    :try_start_1
    invoke-direct {p0, v8}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->updateSuggestedContactIds(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 306
    .local v6, changed:Z
    if-nez v6, :cond_1

    .line 325
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 310
    :cond_1
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v1, "mimetype IN (\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/name\',\'vnd.android.cursor.item/nickname\',\'vnd.android.cursor.item/photo\') AND contact_id IN ("

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .local v11, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v7, v1

    .line 312
    .local v7, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v7, :cond_3

    .line 313
    if-lez v10, :cond_2

    .line 314
    const/16 v1, 0x2c

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    aget-wide v1, v1, v10

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 318
    :cond_3
    const/16 v1, 0x29

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 323
    .local v9, dataCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6           #changed:Z
    .end local v7           #count:I
    .end local v9           #dataCursor:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateSuggestedContactIds(Landroid/database/Cursor;)Z
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 330
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 331
    .local v3, count:I
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v5, v5

    if-eq v3, v5, :cond_2

    const/4 v5, 0x1

    move v0, v5

    .line 332
    .local v0, changed:Z
    :goto_0
    if-nez v0, :cond_1

    .line 333
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 334
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 335
    .local v1, contactId:J
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {v5, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    if-gez v5, :cond_0

    .line 336
    const/4 v0, 0x1

    .line 342
    .end local v1           #contactId:J
    :cond_1
    if-eqz v0, :cond_4

    .line 343
    new-array v5, v3, [J

    iput-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    .line 344
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 345
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 346
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 347
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 345
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #changed:Z
    .end local v4           #i:I
    :cond_2
    move v0, v8

    .line 331
    goto :goto_0

    .line 349
    .restart local v0       #changed:Z
    .restart local v4       #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    .line 352
    .end local v4           #i:I
    :cond_4
    return v0
.end method


# virtual methods
.method public containsRawContact(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;J)Z
    .locals 4
    .parameter "suggestion"
    .parameter "rawContactId"

    .prologue
    .line 429
    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 430
    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 431
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 432
    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    iget-wide v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 433
    const/4 v2, 0x1

    .line 437
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v2

    .line 431
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected deliverNotification(Landroid/database/Cursor;)V
    .locals 1
    .parameter "dataCursor"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    .line 360
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;->onAggregationSuggestionChange()V

    .line 363
    :cond_1
    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSuggestedContactCount()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 371
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 372
    const/16 v18, 0x0

    .line 373
    .local v18, suggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    const-wide/16 v6, -0x1

    .line 374
    .local v6, currentContactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 375
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 377
    .local v4, contactId:J
    cmp-long v20, v4, v6

    if-eqz v20, :cond_1

    .line 378
    new-instance v18, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    .end local v18           #suggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    invoke-direct/range {v18 .. v18}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;-><init>()V

    .line 379
    .restart local v18       #suggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    move-wide v0, v4

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->lookupKey:Ljava/lang/String;

    .line 382
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    .line 383
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    move-wide v6, v4

    .line 387
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 388
    .local v16, rawContactId:J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->containsRawContact(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;J)Z

    move-result v20

    if-nez v20, :cond_2

    .line 389
    new-instance v15, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    invoke-direct {v15}, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;-><init>()V

    .line 390
    .local v15, rawContact:Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountName:Ljava/lang/String;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountType:Ljava/lang/String;

    .line 393
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v15           #rawContact:Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, mimetype:Ljava/lang/String;
    const-string v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 400
    .local v19, superprimary:I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    if-nez v19, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 402
    :cond_3
    move-object v0, v8

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 404
    .end local v8           #data:Ljava/lang/String;
    .end local v19           #superprimary:I
    :cond_4
    const-string v20, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 406
    .restart local v8       #data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 407
    .restart local v19       #superprimary:I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    if-nez v19, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 409
    :cond_5
    move-object v0, v8

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 411
    .end local v8           #data:Ljava/lang/String;
    .end local v19           #superprimary:I
    :cond_6
    const-string v20, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 413
    .restart local v8       #data:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 414
    move-object v0, v8

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    goto/16 :goto_0

    .line 416
    .end local v8           #data:Ljava/lang/String;
    :cond_7
    const-string v20, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 418
    .local v9, dataId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 419
    .local v13, photoId:J
    cmp-long v20, v9, v13

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-nez v20, :cond_0

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    goto/16 :goto_0

    .line 425
    .end local v4           #contactId:J
    .end local v6           #currentContactId:J
    .end local v9           #dataId:J
    .end local v12           #mimetype:Ljava/lang/String;
    .end local v13           #photoId:J
    .end local v16           #rawContactId:J
    .end local v18           #suggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    :cond_8
    return-object v11
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 248
    :pswitch_0
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->loadAggregationSuggestions(Landroid/net/Uri;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNameChange(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->buildAggregationSuggestionUri(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    .line 173
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;Lcom/android/contacts/editor/AggregationSuggestionEngine$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    .line 176
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->scheduleSuggestionLookup()V

    .line 184
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 181
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method public quit()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_0
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    .line 158
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    .line 162
    :cond_1
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 167
    .local v0, handler:Landroid/os/Handler;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    return-void
.end method

.method protected scheduleSuggestionLookup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 188
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 195
    .local v1, msg:Landroid/os/Message;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setContactId(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 143
    iput-wide p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 146
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    .line 150
    return-void
.end method
