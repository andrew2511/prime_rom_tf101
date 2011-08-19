.class public Lcom/android/calendar/agenda/AgendaWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

.field private mContext:Landroid/content/Context;

.field private mDoneSettingUpHeaderFooter:Z

.field private mEmptyCursorCount:I

.field private mFooterView:Landroid/widget/TextView;

.field private mFormatter:Ljava/util/Formatter;

.field private mHeaderView:Landroid/widget/TextView;

.field private mHideDeclined:Z

.field private mIsMultipane:Z

.field private mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

.field private mNewerRequests:I

.field private mNewerRequestsProcessed:I

.field private mOlderRequests:I

.field private mOlderRequestsProcessed:I

.field private mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

.field private final mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mSearchQuery:Ljava/lang/String;

.field private final mSelectedAgendaItemColor:I

.field private mSelectedInstanceId:J

.field private mShuttingDown:Z

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/agenda/AgendaListView;Z)V
    .locals 6
    .parameter "context"
    .parameter "agendaListView"
    .parameter "isMultipane"

    .prologue
    const v5, 0x7f040002

    const/4 v4, 0x0

    .line 288
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 137
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 139
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    .line 170
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 185
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 289
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 290
    iput-boolean p3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsMultipane:Z

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    .line 292
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedAgendaItemColor:I

    .line 294
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    .line 295
    iput-object p2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .line 296
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 299
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    .line 301
    iput-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 303
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 305
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    .line 306
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    .line 307
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    const v2, 0x7f0a0048

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->addHeaderView(Landroid/view/View;)V

    .line 309
    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    return p1
.end method

.method static synthetic access$1404(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    return v0
.end method

.method static synthetic access$1608(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->updateHeaderFooter(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$2112(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/text/format/Time;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsMultipane:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/database/Cursor;Z)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;Z)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return p1
.end method

.method private buildEventInfoFromCursor(Landroid/database/Cursor;Z)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 8
    .parameter "cursor"
    .parameter "isDayHeader"

    .prologue
    const/4 v7, 0x0

    .line 495
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    invoke-direct {v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 496
    .local v1, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 497
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    .line 499
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 500
    .local v0, allDay:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 501
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, time:Landroid/text/format/Time;
    iget-wide v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 503
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 513
    .end local v2           #time:Landroid/text/format/Time;
    :cond_0
    :goto_1
    if-nez p2, :cond_1

    .line 514
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    .line 515
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    .line 517
    :cond_1
    return-object v1

    .end local v0           #allDay:Z
    :cond_2
    move v0, v7

    .line 499
    goto :goto_0

    .line 504
    .restart local v0       #allDay:Z
    :cond_3
    if-eqz p2, :cond_0

    .line 505
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 506
    .restart local v2       #time:Landroid/text/format/Time;
    iget-wide v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 507
    iput v7, v2, Landroid/text/format/Time;->hour:I

    .line 508
    iput v7, v2, Landroid/text/format/Time;->minute:I

    .line 509
    iput v7, v2, Landroid/text/format/Time;->second:I

    .line 510
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_1
.end method

.method private buildQuerySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v0, :cond_0

    .line 599
    const-string v0, "selected=1 AND selfAttendeeStatus!=2"

    .line 603
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "selected=1"

    goto :goto_0
.end method

.method private buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "start"
    .parameter "end"
    .parameter "searchQuery"

    .prologue
    .line 608
    if-nez p3, :cond_1

    sget-object v2, Landroid/provider/Calendar$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    move-object v1, v2

    .line 611
    .local v1, rootUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 612
    .local v0, builder:Landroid/net/Uri$Builder;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 613
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 614
    if-eqz p3, :cond_0

    .line 615
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 617
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 608
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #rootUri:Landroid/net/Uri;
    :cond_1
    sget-object v2, Landroid/provider/Calendar$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    move-object v1, v2

    goto :goto_0
.end method

.method private calculateQueryDuration(II)I
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 630
    const/16 v0, 0x3c

    .line 631
    .local v0, queryDuration:I
    iget v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    if-eqz v1, :cond_0

    .line 632
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 635
    :cond_0
    const/16 v1, 0x3c

    if-le v0, v1, :cond_2

    .line 636
    const/16 v0, 0x3c

    .line 641
    :cond_1
    :goto_0
    return v0

    .line 637
    :cond_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 638
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    .locals 11
    .parameter "queryData"

    .prologue
    const/4 v1, 0x0

    .line 670
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v10, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 672
    .local v10, start:I
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v8, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 673
    .local v8, end:I
    invoke-direct {p0, v10, v8}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v9

    .line 674
    .local v9, queryDuration:I
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v0, :pswitch_data_0

    .line 695
    .end local v8           #end:I
    .end local v9           #queryDuration:I
    .end local v10           #start:I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 698
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iget v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 700
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    sget-object v4, Lcom/android/calendar/agenda/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void

    .line 676
    .end local v3           #queryUri:Landroid/net/Uri;
    .restart local v8       #end:I
    .restart local v9       #queryDuration:I
    .restart local v10       #start:I
    :pswitch_0
    const/4 v0, 0x1

    sub-int v0, v10, v0

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 677
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    sub-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_0

    .line 680
    :pswitch_1
    add-int/lit8 v0, v8, 0x1

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 681
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 3
    .parameter "time"

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 427
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 428
    iget v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v2

    add-int/2addr v1, v2

    .line 430
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private formatDateString(I)Ljava/lang/String;
    .locals 9
    .parameter "julianDay"

    .prologue
    const/4 v1, 0x0

    .line 706
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 707
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 708
    invoke-virtual {v8, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 709
    .local v2, millis:J
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 710
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    const v6, 0x10014

    iget-object v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 5
    .parameter "position"

    .prologue
    .line 435
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 436
    :try_start_0
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v3, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v3, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v2

    move-object v2, v3

    .line 448
    :goto_0
    return-object v2

    .line 440
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 441
    .local v1, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v3, p1, :cond_1

    iget v3, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_1

    .line 443
    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 444
    monitor-exit v2

    move-object v2, v1

    goto :goto_0

    .line 447
    .end local v1           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :cond_2
    monitor-exit v2

    .line 448
    const/4 v2, 0x0

    goto :goto_0

    .line 447
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .parameter "time"

    .prologue
    .line 454
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 455
    .local v5, tmpTime:Landroid/text/format/Time;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 456
    .local v3, timeInMillis:J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 457
    .local v0, day:I
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 458
    :try_start_0
    iget-object v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 459
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget v7, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v7, v0, :cond_0

    iget v7, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-ge v0, v7, :cond_0

    .line 460
    monitor-exit v6

    move-object v6, v2

    .line 464
    .end local v2           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    return-object v6

    .line 463
    :cond_1
    monitor-exit v6

    .line 464
    const/4 v6, 0x0

    goto :goto_0

    .line 463
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private isInRange(II)Z
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v2, 0x0

    .line 621
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    monitor-exit v1

    move v0, v2

    .line 625
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    .line 625
    goto :goto_1
.end method

.method private pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .parameter "queryType"

    .prologue
    .line 552
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 553
    const/4 v3, 0x0

    .line 554
    .local v3, recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 555
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_3

    .line 556
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 557
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 563
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 564
    iget-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 565
    iget-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_1
    monitor-exit v6

    move-object v4, v3

    .line 591
    .end local v3           #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_1
    return-object v4

    .line 558
    .end local v4           #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :cond_2
    if-nez p1, :cond_0

    .line 559
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 561
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 571
    :cond_3
    :try_start_1
    iget v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    .line 572
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    .line 573
    const/4 v1, 0x0

    .line 576
    .local v1, deletedRows:I
    :cond_5
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 577
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_6

    .line 579
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 580
    iget v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 581
    move-object v3, v2

    .line 583
    :cond_6
    if-nez v2, :cond_5

    .line 585
    if-eqz v3, :cond_7

    .line 586
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 587
    iput v1, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 591
    .end local v1           #deletedRows:I
    .end local v2           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .end local v3           #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4       #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    goto :goto_1
.end method

.method private queueQuery(IILandroid/text/format/Time;Ljava/lang/String;I)Z
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "goToTime"
    .parameter "searchQuery"
    .parameter "queryType"

    .prologue
    .line 646
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, p5}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 647
    .local v0, queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    iput-object p3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 648
    iput p1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 649
    iput p2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 650
    iput-object p4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 651
    invoke-direct {p0, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z
    .locals 4
    .parameter "queryData"

    .prologue
    .line 655
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 657
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2

    .line 658
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 659
    .local v1, queuedQuery:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 660
    .local v0, doQueryNow:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 661
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 662
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    .line 665
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 665
    .end local v0           #doQueryNow:Ljava/lang/Boolean;
    .end local v1           #queuedQuery:Ljava/lang/Boolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private updateHeaderFooter(II)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 716
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0049

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a004a

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z

    .line 545
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 546
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 549
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method public getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 7
    .parameter "positionInListView"

    .prologue
    const/4 v6, 0x0

    .line 470
    const/4 v4, 0x1

    sub-int v3, p1, v4

    .line 471
    .local v3, positionInAdapter:I
    invoke-direct {p0, v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 472
    .local v1, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v1, :cond_0

    move-object v4, v6

    .line 491
    :goto_0
    return-object v4

    .line 476
    :cond_0
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v5, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 477
    .local v0, cursorPosition:I
    const/high16 v4, -0x8000

    if-ne v0, v4, :cond_1

    move-object v4, v6

    .line 478
    goto :goto_0

    .line 481
    :cond_1
    const/4 v2, 0x0

    .line 482
    .local v2, isDayHeader:Z
    if-gez v0, :cond_2

    .line 483
    neg-int v0, v0

    .line 484
    const/4 v2, 0x1

    .line 487
    :cond_2
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 488
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 489
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;Z)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v6

    .line 491
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 353
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 356
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 369
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 370
    iget v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0x14

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    .line 372
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 327
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 328
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v1

    .line 330
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSelectedInstanceId()J
    .locals 2

    .prologue
    .line 995
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v15, 0x0

    const/4 v14, 0x1

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    move v10, v0

    sub-int/2addr v10, v14

    move/from16 v0, p1

    move v1, v10

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    move v11, v0

    if-gt v10, v11, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    move v10, v0

    add-int/lit8 v10, v10, 0x1

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    .line 382
    new-instance v10, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v10, v14}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    .line 385
    :cond_0
    move/from16 v0, p1

    move v1, v14

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    move v11, v0

    if-gt v10, v11, :cond_1

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    move v10, v0

    add-int/lit8 v10, v10, 0x1

    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    .line 389
    new-instance v10, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v10, v15}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    .line 393
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v4

    .line 394
    .local v4, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v4, :cond_3

    .line 395
    iget-object v10, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v11, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v11, p1, v11

    move-object v0, v10

    move v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 406
    .local v7, v:Landroid/view/View;
    :goto_0
    const/4 v5, 0x0

    .line 407
    .local v5, selected:Z
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 408
    .local v9, yy:Ljava/lang/Object;
    instance-of v10, v9, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v10, :cond_2

    .line 409
    move-object v0, v9

    check-cast v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-object v8, v0

    .line 410
    .local v8, vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    move-wide v10, v0

    iget-wide v12, v8, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    move v5, v14

    .line 411
    :goto_1
    iget-object v10, v8, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->selectedMarker:Landroid/view/View;

    if-eqz v5, :cond_5

    move v11, v15

    :goto_2
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 412
    if-eqz v5, :cond_2

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedAgendaItemColor:I

    move v10, v0

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 420
    .end local v8           #vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_2
    return-object v7

    .line 399
    .end local v5           #selected:Z
    .end local v7           #v:Landroid/view/View;
    .end local v9           #yy:Ljava/lang/Object;
    :cond_3
    const-string v10, "AgendaWindowAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BUG: getAdapterInfoByPosition returned null!!! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    move-object v10, v0

    invoke-direct {v6, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 401
    .local v6, tv:Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bug! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    move-object v7, v6

    .restart local v7       #v:Landroid/view/View;
    goto :goto_0

    .end local v6           #tv:Landroid/widget/TextView;
    .restart local v5       #selected:Z
    .restart local v8       #vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .restart local v9       #yy:Ljava/lang/Object;
    :cond_4
    move v5, v15

    .line 410
    goto :goto_1

    .line 411
    :cond_5
    const/16 v11, 0x8

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 338
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 339
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isEnabled(I)Z

    move-result v1

    .line 341
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 979
    return-void
.end method

.method public refresh(Landroid/text/format/Time;Ljava/lang/String;Z)V
    .locals 7
    .parameter "goToTime"
    .parameter "searchQuery"
    .parameter "forced"

    .prologue
    .line 521
    if-eqz p2, :cond_0

    .line 522
    iput-object p2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 529
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-wide v5, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 531
    .local v1, startDay:I
    if-nez p3, :cond_1

    invoke-direct {p0, v1, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/calendar/agenda/AgendaListView;->setSelection(I)V

    .line 541
    :goto_0
    return-void

    .line 538
    :cond_1
    add-int/lit8 v2, v1, 0x7

    .line 540
    .local v2, endDay:I
    const/4 v5, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 0
    .parameter "hideDeclined"

    .prologue
    .line 982
    iput-boolean p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHideDeclined:Z

    .line 983
    return-void
.end method

.method public setSelectedInstanceId(J)V
    .locals 0
    .parameter "selectedInstanceId"

    .prologue
    .line 999
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 1000
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 986
    if-eqz p1, :cond_0

    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 988
    .local v0, vh:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 989
    check-cast v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .end local v0           #vh:Ljava/lang/Object;
    iget-wide v1, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    iput-wide v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 992
    :cond_0
    return-void
.end method
