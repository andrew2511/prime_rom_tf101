.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSimpleAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;,
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static COLOR_CHIP_LEFT_MARGIN:I

.field private static COLOR_CHIP_RIGHT_MARGIN:I

.field private static COLOR_CHIP_TOP_OFFSET:I

.field private static SELECTED_COLOR_CHIP_SIZE:I

.field private static UNSELECTED_COLOR_CHIP_SIZE:I


# instance fields
.field private mBackgrounds:[Landroid/graphics/drawable/Drawable;

.field private mColorColumn:I

.field private mCursor:Landroid/database/Cursor;

.field private mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I

.field private mNameColumn:I

.field private mOrientation:I

.field private mRowCount:I

.field private mScale:F

.field private mSelectedColumn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 39
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 40
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 41
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 42
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    const/16 v1, 0x10

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 71
    iput v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    .line 82
    iput p2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    .line 84
    invoke-direct {p0, p3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 85
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, res:Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    .line 89
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 90
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 91
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 92
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 93
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    .line 95
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initBackgrounds(Landroid/content/res/Resources;)V

    .line 96
    return-void
.end method

.method private initBackgrounds(Landroid/content/res/Resources;)V
    .locals 8
    .parameter "res"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020010

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 105
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02000f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 109
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v4

    aput-object v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02000b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 113
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    aput-object v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xd

    const v2, 0x7f02000a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 117
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    const v2, 0x7f02000e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02000c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 126
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    aput-object v2, v0, v1

    .line 128
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xc

    const v2, 0x7f02000d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 130
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 133
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020011

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 135
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v7

    aput-object v2, v0, v1

    .line 136
    return-void
.end method

.method private initData(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 139
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eq p1, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_0
    if-nez p1, :cond_2

    .line 143
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 144
    iput v4, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 145
    iput-object v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .line 167
    :cond_1
    return-void

    .line 149
    :cond_2
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 150
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    .line 151
    const-string v1, "displayName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    .line 152
    const-string v1, "color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    .line 153
    const-string v1, "selected"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mSelectedColumn:I

    .line 155
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .line 157
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, p:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    new-instance v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    invoke-direct {v2, p0, v5}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;)V

    aput-object v2, v1, v0

    .line 161
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    .line 162
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    .line 164
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mSelectedColumn:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 164
    goto :goto_1
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 230
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->notifyDataSetChanged()V

    .line 172
    return-void
.end method

.method protected getBackground(IZ)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "position"
    .parameter "selected"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    if-eqz p2, :cond_2

    move v0, v2

    .line 222
    .local v0, bg:I
    :goto_0
    if-nez p1, :cond_3

    move v1, v4

    :goto_1
    or-int/2addr v0, v1

    .line 223
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_4

    const/4 v1, 0x4

    :goto_2
    or-int/2addr v0, v1

    .line 224
    if-nez p1, :cond_0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    if-eq v1, v4, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-lez p1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    sub-int v2, p1, v2

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v1, :cond_5

    :cond_1
    const/16 v1, 0x8

    :goto_3
    or-int/2addr v0, v1

    .line 226
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mBackgrounds:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    return-object v1

    .end local v0           #bg:I
    :cond_2
    move v0, v3

    .line 221
    goto :goto_0

    .restart local v0       #bg:I
    :cond_3
    move v1, v3

    .line 222
    goto :goto_1

    :cond_4
    move v1, v3

    .line 223
    goto :goto_2

    :cond_5
    move v1, v3

    .line 224
    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 242
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    if-lt p1, v1, :cond_0

    .line 243
    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v1, p1

    .local v0, item:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    move-object v1, v0

    .line 246
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 250
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    if-lt p1, v0, :cond_0

    .line 251
    const-wide/16 v0, 0x0

    .line 253
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 175
    iget v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    if-lt p1, v7, :cond_0

    .line 176
    const/4 v7, 0x0

    .line 211
    :goto_0
    return-object v7

    .line 178
    :cond_0
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v7, v7, p1

    iget-object v3, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 179
    .local v3, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v7, v7, p1

    iget-boolean v5, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 180
    .local v5, selected:Z
    invoke-virtual {p0, p1, v5}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getBackground(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v7, v7, p1

    iget v1, v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    .line 185
    .local v1, color:I
    if-nez p2, :cond_2

    .line 186
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 191
    .local v6, view:Landroid/view/View;
    :goto_1
    const v7, 0x7f0e0024

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 192
    .local v2, colorView:Landroid/view/View;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v8, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v4, params:Landroid/widget/RelativeLayout$LayoutParams;
    sget v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 195
    sget v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 198
    sget v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 199
    if-nez v5, :cond_1

    .line 200
    sget v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 201
    sget v7, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 202
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v8, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v9, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 203
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v8, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v9, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 205
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    const v7, 0x7f0e0028

    invoke-static {v6, v7, v3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 209
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    move-object v7, v6

    .line 211
    goto :goto_0

    .line 188
    .end local v2           #colorView:Landroid/view/View;
    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #view:Landroid/view/View;
    :cond_2
    move-object v6, p2

    .restart local v6       #view:Landroid/view/View;
    goto :goto_1
.end method

.method public getVisible(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public setVisible(II)V
    .locals 2
    .parameter "position"
    .parameter "visible"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v0, p1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 258
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->notifyDataSetChanged()V

    .line 259
    return-void

    .line 257
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
