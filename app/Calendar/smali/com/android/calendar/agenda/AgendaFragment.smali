.class public Lcom/android/calendar/agenda/AgendaFragment;
.super Landroid/app/Fragment;
.source "AgendaFragment.java"

# interfaces
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

.field private mInitialTimeMillis:J

.field private mIsMultipane:Z

.field private mQuery:Ljava/lang/String;

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(J)V

    .line 65
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "timeMillis"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .parameter "timeMillis"
    .parameter "isMultipane"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/calendar/agenda/AgendaFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaFragment$1;-><init>(Lcom/android/calendar/agenda/AgendaFragment;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 72
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    .line 73
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    .line 74
    iput-boolean p3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mIsMultipane:Z

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/calendar/agenda/AgendaFragment;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method private goTo(Landroid/text/format/Time;Z)V
    .locals 3
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 3
    .parameter "query"
    .parameter "time"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v0, :cond_1

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public eventsChanged()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaListView;->refresh(Z)V

    .line 194
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 198
    const-wide/16 v0, 0x1a0

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 203
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->goTo(Landroid/text/format/Time;Z)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->eventsChanged()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    .line 82
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v1, 0x400000

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, context:Landroid/content/Context;
    const-wide/16 v1, -0x1

    .line 103
    .local v1, instanceId:J
    if-eqz p3, :cond_0

    .line 104
    const-string v3, "key_restore_instance_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 107
    :cond_0
    new-instance v3, Lcom/android/calendar/agenda/AgendaListView;

    iget-boolean v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mIsMultipane:Z

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/calendar/agenda/AgendaListView;-><init>(Landroid/content/Context;JZ)V

    iput-object v3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .line 108
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;Ljava/lang/String;Z)V

    .line 109
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    return-object v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->onPause()V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 115
    sget-boolean v2, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 116
    sget-object v2, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnResume to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "preferences_hide_declined"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 124
    .local v0, hideDeclined:Z
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v2, v0}, Lcom/android/calendar/agenda/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 125
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;Ljava/lang/String;Z)V

    .line 126
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v2}, Lcom/android/calendar/agenda/AgendaListView;->onResume()V

    .line 136
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "outState"

    .prologue
    const-wide/16 v7, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 143
    .local v0, firstVisibleTime:J
    cmp-long v4, v0, v7

    if-lez v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 145
    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    sget-boolean v4, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 147
    sget-object v4, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSaveInstanceState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedInstanceId()J

    move-result-wide v2

    .line 152
    .local v2, selectedInstance:J
    cmp-long v4, v2, v7

    if-ltz v4, :cond_1

    .line 153
    const-string v4, "key_restore_instance_id"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    :cond_1
    return-void
.end method
