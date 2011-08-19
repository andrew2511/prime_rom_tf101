.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSyncAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static COLOR_CHIP_SIZE:I


# instance fields
.field private mChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation
.end field

.field private mColorColumn:I

.field private mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNameColumn:I

.field private final mNotSyncedString:Ljava/lang/String;

.field private mRowCount:I

.field private mSyncedColumn:I

.field private final mSyncedString:Ljava/lang/String;

.field private r:Landroid/graphics/drawable/shapes/RectShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x1e

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 68
    invoke-direct {p0, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 69
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    .line 71
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    sget v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    .line 74
    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private initData(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 79
    iput v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 80
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 107
    :cond_0
    return-void

    .line 84
    :cond_1
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    .line 85
    const-string v3, "displayName"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    .line 86
    const-string v3, "color"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    .line 87
    const-string v3, "sync_events"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    .line 89
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 90
    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    new-array v3, v3, [Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 91
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, p:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 95
    .local v0, id:J
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    new-instance v4, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    invoke-direct {v4, p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;)V

    aput-object v4, v3, v2

    .line 96
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iput-wide v0, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    .line 97
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 98
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    .line 99
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    .line 100
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v4, v3, v2

    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    iget-boolean v3, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    iput-boolean v3, v4, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 105
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 106
    goto :goto_0

    :cond_2
    move v4, v6

    .line 99
    goto :goto_1

    .line 103
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    iput-boolean v4, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    goto :goto_2
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method

.method public getChanges()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 162
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v1, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 166
    :goto_0
    return-object v1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v1, p1

    .local v0, item:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    move-object v1, v0

    .line 166
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v0, :cond_0

    .line 171
    const-wide/16 v0, 0x0

    .line 173
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0e0029

    .line 115
    iget v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v6, :cond_0

    move-object v6, v10

    .line 146
    :goto_0
    return-object v6

    .line 118
    :cond_0
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget-object v3, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 119
    .local v3, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget-boolean v4, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 120
    .local v4, selected:Z
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget v1, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    .line 122
    .local v1, color:I
    if-nez p2, :cond_1

    .line 123
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04000e

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 128
    .local v5, view:Landroid/view/View;
    :goto_1
    const v6, 0x7f0e0027

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 130
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    if-eqz v4, :cond_2

    .line 136
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    invoke-static {v5, v9, v6}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 141
    :goto_2
    const v6, 0x7f0e0024

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, colorView:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    const v6, 0x7f0e0028

    invoke-static {v5, v6, v3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    move-object v6, v5

    .line 146
    goto :goto_0

    .line 125
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v2           #colorView:Landroid/view/View;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    move-object v5, p2

    .restart local v5       #view:Landroid/view/View;
    goto :goto_1

    .line 138
    .restart local v0       #cb:Landroid/widget/CheckBox;
    :cond_2
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    invoke-static {v5, v9, v6}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v3, 0x7f0e0029

    .line 187
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 188
    .local v0, row:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    iput-boolean p2, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 189
    if-eqz p2, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method
