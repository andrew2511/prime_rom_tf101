.class public Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;
.super Landroid/app/Fragment;
.source "SelectCalendarsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION_ARGS:[Ljava/lang/String;

.field private static mQueryToken:I

.field private static mUpdateToken:I


# instance fields
.field private mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

.field private mContext:Landroid/app/Activity;

.field private mList:Landroid/widget/ListView;

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_sync_account"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selected"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(_sync_account=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;)Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    return-object v0
.end method


# virtual methods
.method public eventsChanged()V
    .locals 8

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mQueryToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/AsyncQueryService;->cancelOperation(I)I

    .line 145
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mQueryToken:I

    .line 146
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mQueryToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=?"

    sget-object v6, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "_sync_account"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 153
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 158
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->eventsChanged()V

    .line 161
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mContext:Landroid/app/Activity;

    const v2, 0x7f040020

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    .line 107
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 78
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mContext:Landroid/app/Activity;

    .line 79
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment$1;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 96
    const v0, 0x7f040024

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mList:Landroid/widget/ListView;

    .line 98
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 100
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getCount()I

    move-result v0

    if-gt v0, p3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->toggleVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mQueryToken:I

    .line 122
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mQueryToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=?"

    sget-object v6, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "_sync_account"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public toggleVisibility(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 130
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toggling calendar at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mUpdateToken:I

    .line 132
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 133
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .local v4, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getVisible(I)I

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    .line 136
    .local v9, visibility:I
    const-string v0, "selected"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mUpdateToken:I

    const-wide/16 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 138
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, p1, v9}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->setVisible(II)V

    .line 139
    return-void
.end method
