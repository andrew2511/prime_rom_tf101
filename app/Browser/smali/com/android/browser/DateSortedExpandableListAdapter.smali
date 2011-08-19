.class public Lcom/android/browser/DateSortedExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DateSortedExpandableListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field mDataSetObserver:Landroid/database/DataSetObserver;

.field mDataValid:Z

.field private mDateIndex:I

.field private mDateSorter:Landroid/webkit/DateSorter;

.field private mIdIndex:I

.field private mItemMap:[I

.field private mNumberOfBins:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "dateIndex"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 49
    new-instance v0, Lcom/android/browser/DateSortedExpandableListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/browser/DateSortedExpandableListAdapter$1;-><init>(Lcom/android/browser/DateSortedExpandableListAdapter;)V

    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 64
    iput-object p1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    .line 66
    iput p2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 69
    return-void
.end method

.method private buildMap()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 77
    new-array v0, v7, [I

    .line 79
    .local v0, array:[I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 80
    aput v6, v0, v5

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iput v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 83
    const/4 v3, -0x1

    .line 84
    .local v3, dateIndex:I
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 85
    :goto_1
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 86
    iget v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateIndex:I

    invoke-virtual {p0, v6}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v1

    .line 87
    .local v1, date:J
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {v6, v1, v2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    .line 88
    .local v4, index:I
    if-le v4, v3, :cond_3

    .line 89
    iget v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    .line 90
    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 93
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v0, v4

    .line 103
    .end local v1           #date:J
    .end local v4           #index:I
    :cond_1
    iput-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    .line 104
    return-void

    .line 97
    .restart local v1       #date:J
    .restart local v4       #index:I
    :cond_2
    move v3, v4

    .line 99
    :cond_3
    aget v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v3

    .line 100
    iget-object v6, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private groupPositionToBin(I)I
    .locals 4
    .parameter "groupPosition"

    .prologue
    const/4 v3, 0x5

    const/4 v2, -0x1

    .line 195
    iget-boolean v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 215
    :goto_0
    return v1

    .line 196
    :cond_0
    if-ltz p1, :cond_1

    if-lt p1, v3, :cond_2

    .line 197
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "group position out of range"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 199
    :cond_2
    iget v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-eq v3, v1, :cond_3

    iget v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    if-nez v1, :cond_4

    :cond_3
    move v1, p1

    .line 206
    goto :goto_0

    .line 208
    :cond_4
    const/4 v0, -0x1

    .line 209
    .local v0, arrayPosition:I
    :cond_5
    :goto_1
    if-le p1, v2, :cond_6

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    iget-object v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v1, v1, v0

    if-eqz v1, :cond_5

    .line 212
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_6
    move v1, v0

    .line 215
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 261
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_1
    iput-object p1, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    .line 264
    if-eqz p1, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 266
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    .line 268
    invoke-direct {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->buildMap()V

    .line 270
    invoke-virtual {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 272
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/browser/DateSortedExpandableListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const-wide/16 v1, 0x0

    .line 342
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    move-wide v0, v1

    .line 346
    :goto_0
    return-wide v0

    .line 343
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/DateSortedExpandableListAdapter;->moveCursorToChildPosition(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mIdIndex:I

    invoke-virtual {p0, v0}, Lcom/android/browser/DateSortedExpandableListAdapter;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v1

    .line 346
    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCombinedChildId(JJ)J
    .locals 2
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 365
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p3

    goto :goto_0
.end method

.method public getCombinedGroupId(J)J
    .locals 2
    .parameter "groupId"

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 371
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p1

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mNumberOfBins:I

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 337
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 282
    iget-boolean v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Data is not valid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_0
    if-eqz p3, :cond_1

    instance-of v4, p3, Landroid/widget/TextView;

    if-nez v4, :cond_2

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 286
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f040016

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 290
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .local v2, item:Landroid/widget/TextView;
    :goto_0
    iget-object v4, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, label:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    return-object v2

    .line 288
    .end local v2           #item:Landroid/widget/TextView;
    .end local v3           #label:Ljava/lang/String;
    :cond_2
    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .restart local v2       #item:Landroid/widget/TextView;
    goto :goto_0
.end method

.method getLong(I)J
    .locals 2
    .parameter "cursorIndex"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 142
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveCursorToChildPosition(II)Z
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 244
    iget-boolean v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    :cond_0
    const/4 v2, 0x0

    .line 252
    :goto_0
    return v2

    .line 247
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/browser/DateSortedExpandableListAdapter;->groupPositionToBin(I)I

    move-result p1

    .line 248
    move v1, p2

    .line 249
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 250
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mItemMap:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/android/browser/DateSortedExpandableListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 360
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 356
    return-void
.end method
