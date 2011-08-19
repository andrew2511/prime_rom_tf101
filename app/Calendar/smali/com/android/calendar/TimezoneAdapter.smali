.class public Lcom/android/calendar/TimezoneAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimezoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# static fields
.field private static sTimezones:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/TimezoneAdapter$TimezoneRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTimezone:Ljava/lang/String;

.field private mShowingAll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "currentTimezone"

    .prologue
    const/4 v2, 0x0

    .line 194
    const v0, 0x1090009

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 183
    iput-boolean v2, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 195
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 197
    iput-boolean v2, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 199
    return-void
.end method

.method private loadFromResources(Landroid/content/res/Resources;)V
    .locals 9
    .parameter "resources"

    .prologue
    .line 345
    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_1

    .line 346
    const v4, 0x7f070007

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, ids:[Ljava/lang/String;
    const v4, 0x7f070006

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, labels:[Ljava/lang/String;
    array-length v3, v1

    .line 350
    .local v3, length:I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    .line 352
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_0

    .line 353
    const-string v4, "TimezoneAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ids length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") and labels length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") should be equal but aren\'t."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 357
    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    aget-object v5, v1, v0

    new-instance v6, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    aget-object v7, v1, v0

    aget-object v8, v2, v0

    invoke-direct {v6, v7, v8}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v0           #i:I
    .end local v1           #ids:[Ljava/lang/String;
    .end local v2           #labels:[Ljava/lang/String;
    .end local v3           #length:I
    :cond_1
    return-void
.end method


# virtual methods
.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 333
    const/4 v7, 0x2

    sget-object v8, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    const-class v8, Ljava/lang/CharSequence;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/CharSequence;

    .line 334
    .local v5, timeZones:[[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    .local v3, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 336
    .local v6, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/TimezoneAdapter$TimezoneRow;>;"
    const/4 v0, 0x0

    .line 337
    .local v0, i:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 338
    .local v4, row:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    aput-object p0, v7, v0

    .line 339
    const/4 v7, 0x1

    aget-object v7, v5, v7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 341
    .end local v4           #row:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    :cond_0
    return-object v5
.end method

.method public getRowById(Ljava/lang/String;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 209
    sget-object v1, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 210
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    if-nez v0, :cond_0

    .line 211
    const/4 v1, -0x1

    .line 213
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/TimezoneAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public saveRecentTimezone(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x3

    .line 306
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_recent_timezones"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, recentsString:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .local v1, recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_1

    .line 317
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 312
    .end local v1           #recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1       #recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 319
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/android/calendar/Utils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    iget-object v3, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    const-string v4, "preferences_recent_timezones"

    invoke-static {v3, v4, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public setCurrentTimezone(Ljava/lang/String;)V
    .locals 1
    .parameter "currentTimezone"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 292
    iget-boolean v0, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 295
    :cond_0
    return-void
.end method

.method public showAllTimezones()V
    .locals 4

    .prologue
    .line 275
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    .local v2, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/TimezoneAdapter$TimezoneRow;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->clear()V

    .line 278
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 279
    .local v1, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    invoke-virtual {p0, v1}, Lcom/android/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    .end local v1           #timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 282
    return-void
.end method

.method public showInitialTimezones()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 229
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/android/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v1, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 239
    const-string v2, "preferences_recent_timezones"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_0

    .line 241
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 242
    array-length v2, v1

    move v3, v7

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 243
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/TimezoneAdapter;->clear()V

    .line 249
    const-class v1, Lcom/android/calendar/TimezoneAdapter;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/calendar/TimezoneAdapter;->loadFromResources(Landroid/content/res/Resources;)V

    .line 251
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 252
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 255
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 259
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 260
    sget-object v5, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    new-instance v6, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v0, v4}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_2
    sget-object v4, Lcom/android/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    iput-boolean v7, p0, Lcom/android/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 269
    return-void
.end method
