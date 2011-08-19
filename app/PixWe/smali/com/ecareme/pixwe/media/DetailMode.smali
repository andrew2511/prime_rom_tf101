.class public final Lcom/ecareme/pixwe/media/DetailMode;
.super Ljava/lang/Object;
.source "DetailMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populateDetailModeStrings(Landroid/content/Context;Ljava/util/ArrayList;)[Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    const/4 v9, 0x1

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 36
    .local v5, numBuckets:I
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MediaBucketList;->isSetSelection(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v5, v9, :cond_0

    .line 40
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MediaBucketList;->getFirstSetSelection(Ljava/util/ArrayList;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v8

    invoke-static {p0, v8, v9}, Lcom/ecareme/pixwe/media/DetailMode;->populateSetViewDetailModeStrings(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaSet;I)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 66
    :goto_0
    return-object v8

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MediaBucketList;->isSetSelection(Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {p1}, Lcom/ecareme/pixwe/media/MediaBucketList;->isMultipleItemSelection(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 43
    :cond_1
    new-instance v7, Lcom/ecareme/pixwe/media/MediaSet;

    invoke-direct {v7}, Lcom/ecareme/pixwe/media/MediaSet;-><init>()V

    .line 44
    .local v7, selectedItemsSet:Lcom/ecareme/pixwe/media/MediaSet;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v5, :cond_2

    .line 64
    invoke-static {p0, v7, v5}, Lcom/ecareme/pixwe/media/DetailMode;->populateSetViewDetailModeStrings(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaSet;I)[Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 46
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    const/4 v1, 0x0

    .line 47
    .local v1, currItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    const/4 v6, 0x0

    .line 48
    .local v6, numCurrItems:I
    invoke-static {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->isSetSelection(Lcom/ecareme/pixwe/media/MediaBucket;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 49
    iget-object v2, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 50
    .local v2, currSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v2, :cond_3

    .line 51
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 52
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v6

    .line 58
    .end local v2           #currSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 59
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    if-lt v4, v6, :cond_6

    .line 44
    .end local v4           #j:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    :cond_5
    iget-object v1, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_2

    .line 60
    .restart local v4       #j:I
    :cond_6
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v7, v8}, Lcom/ecareme/pixwe/media/MediaSet;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 66
    .end local v0           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v1           #currItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v6           #numCurrItems:I
    .end local v7           #selectedItemsSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_7
    invoke-static {p1}, Lcom/ecareme/pixwe/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/ecareme/pixwe/media/DetailMode;->populateItemViewDetailModeStrings(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItem;)[Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_0
.end method

.method private static populateItemViewDetailModeStrings(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItem;)[Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "item"

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const/4 p0, 0x0

    .line 200
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 143
    .restart local p0
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 144
    .local v3, resources:Landroid/content/res/Resources;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 145
    .local v4, strings:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f06002e

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 146
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f06002f

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaItem;->getDisplayMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 148
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 150
    .local v2, dateTimeFormat:Ljava/text/DateFormat;
    iget-object v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLocaltime:Ljava/util/Date;

    if-nez v0, :cond_2

    .line 151
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v5, p1, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, exif:Landroid/media/ExifInterface;
    const-string v5, "DateTime"

    invoke-virtual {v0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, localtime:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 156
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v1, v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .end local v0           #localtime:Ljava/lang/String;
    iput-object v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLocaltime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLocaltime:Ljava/util/Date;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 162
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'_\'HHmmss"

    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    iget-object v1, p1, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .end local v0           #formatter:Ljava/text/SimpleDateFormat;
    iput-object v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLocaltime:Ljava/util/Date;

    .line 168
    :cond_2
    iget-object v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLocaltime:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 169
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const v5, 0x7f060030

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLocaltime:Ljava/util/Date;

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #dateTimeFormat:Ljava/text/DateFormat;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 188
    :goto_2
    iget-object v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 189
    .local v0, parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-nez v0, :cond_9

    .line 190
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v0           #parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    const v2, 0x7f060029

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 194
    :goto_3
    invoke-static {p0}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->getReverseGeocoder()Lcom/ecareme/pixwe/media/ReverseGeocoder;

    move-result-object v0

    .line 195
    .local v0, reverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;
    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/MediaItem;->getReverseGeocodedLocation(Lcom/ecareme/pixwe/media/ReverseGeocoder;)Ljava/lang/String;

    move-result-object p1

    .line 196
    .local p1, locationString:Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #reverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;
    if-nez v0, :cond_a

    .line 197
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const p1, 0x7f06002d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #locationString:Ljava/lang/String;
    move-result-object p0

    .line 199
    .local p0, locationString:Ljava/lang/String;
    :goto_4
    const/4 p1, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f06002c

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #locationString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, p1

    move-object p0, v4

    .line 200
    goto/16 :goto_0

    .line 170
    .restart local v2       #dateTimeFormat:Ljava/text/DateFormat;
    .local p0, context:Landroid/content/Context;
    .local p1, item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_4
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaItem;->isDateTakenValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    iget-wide v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    .line 172
    .local v0, dateTaken:J
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaItem;->isPicassaItem()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    sget-object v5, Lcom/ecareme/pixwe/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v5, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v0, v5

    .line 175
    :cond_5
    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x7f060030

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #dateTaken:J
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    goto/16 :goto_2

    .line 176
    :cond_6
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaItem;->isDateAddedValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 177
    iget-wide v0, p1, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    .line 178
    .local v0, dateAdded:J
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaItem;->isPicassaItem()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 179
    sget-object v5, Lcom/ecareme/pixwe/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v5, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v0, v5

    .line 184
    :cond_7
    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x7f060030

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #dateAdded:J
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    goto/16 :goto_2

    .line 186
    :cond_8
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f060030

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v2           #dateTimeFormat:Ljava/text/DateFormat;
    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f06003b

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto/16 :goto_2

    .line 192
    .local v0, parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_9
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    const v5, 0x7f060029

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .end local v0           #parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    goto/16 :goto_3

    .line 158
    .restart local v1       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v2       #dateTimeFormat:Ljava/text/DateFormat;
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    .end local v2           #dateTimeFormat:Ljava/text/DateFormat;
    .local p1, locationString:Ljava/lang/String;
    :cond_a
    move-object p0, p1

    .end local p1           #locationString:Ljava/lang/String;
    .local p0, locationString:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method private static populateSetViewDetailModeStrings(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaSet;I)[Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "selectedItemsSet"
    .parameter "numOriginalSets"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const/4 p0, 0x0

    .line 136
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 74
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 75
    .local v4, resources:Landroid/content/res/Resources;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v5, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    const-string v0, "1 "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v0, 0x7f060025

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_1
    iget p2, p1, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    .line 86
    .local p2, numItems:I
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #numItems:I
    const-string v0, "1 "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v0, 0x7f060026

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_2
    const/4 p2, 0x2

    const/4 v0, 0x3

    invoke-static {p2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p2

    .line 95
    .local p2, dateTimeFormat:Ljava/text/DateFormat;
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaSet;->areTimestampsAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    iget-wide v2, p1, Lcom/ecareme/pixwe/media/MediaSet;->mMinTimestamp:J

    .line 97
    .local v2, minTimestamp:J
    iget-wide v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mMaxTimestamp:J

    .line 98
    .local v0, maxTimestamp:J
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaSet;->isPicassaSet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    sget-object v6, Lcom/ecareme/pixwe/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v2, v6

    .line 100
    sget-object v6, Lcom/ecareme/pixwe/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v0, v6

    .line 102
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x7f06002a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #minTimestamp:J
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f06002b

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .end local p2           #dateTimeFormat:Ljava/text/DateFormat;
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v0           #maxTimestamp:J
    :goto_3
    const/4 p2, 0x0

    .line 120
    .local p2, locationString:Ljava/lang/String;
    iget-boolean v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mLatLongDetermined:Z

    if-eqz v0, :cond_9

    .line 121
    iget-object p2, p1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 122
    if-nez p2, :cond_9

    .line 124
    invoke-static {p0}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/app/App;->getReverseGeocoder()Lcom/ecareme/pixwe/media/ReverseGeocoder;

    move-result-object p0

    .line 125
    .local p0, reverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->computeMostGranularCommonLocation(Lcom/ecareme/pixwe/media/MediaSet;)Ljava/lang/String;

    move-result-object p0

    .line 128
    .end local p2           #locationString:Ljava/lang/String;
    .local p0, locationString:Ljava/lang/String;
    :goto_4
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1
    if-lez p1, :cond_2

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    const p2, 0x7f06002c

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #locationString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 132
    .local p1, numStrings:I
    new-array p2, p1, [Ljava/lang/CharSequence;

    .line 133
    .local p2, stringsArr:[Ljava/lang/CharSequence;
    const/4 p0, 0x0

    .local p0, i:I
    :goto_5
    if-lt p0, p1, :cond_8

    move-object p0, p2

    .line 136
    goto/16 :goto_0

    .line 81
    .local p0, context:Landroid/content/Context;
    .local p1, selectedItemsSet:Lcom/ecareme/pixwe/media/MediaSet;
    .local p2, numOriginalSets:I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2           #numOriginalSets:I
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const v0, 0x7f060027

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 89
    .local p2, numItems:I
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2           #numItems:I
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const v0, 0x7f060028

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 104
    .local p2, dateTimeFormat:Ljava/text/DateFormat;
    :cond_5
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaSet;->areAddedTimestampsAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    iget-wide v2, p1, Lcom/ecareme/pixwe/media/MediaSet;->mMinAddedTimestamp:J

    .line 106
    .restart local v2       #minTimestamp:J
    iget-wide v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mMaxAddedTimestamp:J

    .line 107
    .restart local v0       #maxTimestamp:J
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaSet;->isPicassaSet()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 108
    sget-object v6, Lcom/ecareme/pixwe/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v2, v6

    .line 109
    sget-object v6, Lcom/ecareme/pixwe/app/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v0, v6

    .line 111
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x7f06002a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #minTimestamp:J
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f06002b

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .end local p2           #dateTimeFormat:Ljava/text/DateFormat;
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 114
    .end local v0           #maxTimestamp:J
    .restart local p2       #dateTimeFormat:Ljava/text/DateFormat;
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #dateTimeFormat:Ljava/text/DateFormat;
    const v0, 0x7f06002a

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const v0, 0x7f06003b

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    const v0, 0x7f06002b

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const v0, 0x7f06003b

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 134
    .local p0, i:I
    .local p1, numStrings:I
    .local p2, stringsArr:[Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    aput-object v0, p2, p0

    .line 133
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_5

    .local p0, context:Landroid/content/Context;
    .local p1, selectedItemsSet:Lcom/ecareme/pixwe/media/MediaSet;
    .local p2, locationString:Ljava/lang/String;
    :cond_9
    move-object p0, p2

    .end local p2           #locationString:Ljava/lang/String;
    .local p0, locationString:Ljava/lang/String;
    goto/16 :goto_4
.end method
