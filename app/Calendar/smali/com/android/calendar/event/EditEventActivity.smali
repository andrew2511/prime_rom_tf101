.class public Lcom/android/calendar/event/EditEventActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "EditEventActivity.java"


# instance fields
.field private mEditFragment:Lcom/android/calendar/event/EditEventFragment;

.field private mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

.field private mView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    return-void
.end method

.method private getEventInfoFromIntent(Landroid/os/Bundle;)Lcom/android/calendar/CalendarController$EventInfo;
    .locals 12
    .parameter "icicle"

    .prologue
    const-wide/16 v10, -0x1

    .line 76
    new-instance v7, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v7}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 77
    .local v7, info:Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v5, -0x1

    .line 78
    .local v5, eventId:J
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 79
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 80
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_3

    .line 82
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 92
    :cond_0
    :goto_0
    const-string v9, "beginTime"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 93
    .local v0, begin:J
    const-string v9, "endTime"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 94
    .local v3, end:J
    cmp-long v9, v3, v10

    if-eqz v9, :cond_1

    .line 95
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    iput-object v9, v7, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 96
    iget-object v9, v7, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v9, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 98
    :cond_1
    cmp-long v9, v0, v10

    if-eqz v9, :cond_2

    .line 99
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    iput-object v9, v7, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 100
    iget-object v9, v7, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 102
    :cond_2
    iput-wide v5, v7, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 104
    return-object v7

    .line 88
    .end local v0           #begin:J
    .end local v3           #end:J
    :cond_3
    if-eqz p1, :cond_0

    const-string v9, "key_event_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 89
    const-string v9, "key_event_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    .line 83
    :catch_0
    move-exception v9

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x0

    const v4, 0x7f0e0032

    .line 51
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/EditEventActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0, v4}, Lcom/android/calendar/event/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mView:Landroid/widget/FrameLayout;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EditEventActivity;->getEventInfoFromIntent(Landroid/os/Bundle;)Lcom/android/calendar/CalendarController$EventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/EditEventFragment;

    iput-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 59
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 62
    iget-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/android/calendar/event/EditEventFragment;

    iget-object v2, p0, Lcom/android/calendar/event/EditEventActivity;->mEventInfo:Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v1, v2, v5}, Lcom/android/calendar/event/EditEventFragment;-><init>(Lcom/android/calendar/CalendarController$EventInfo;Z)V

    iput-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    .line 65
    iget-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "editMode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/calendar/event/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/calendar/event/EditEventActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 69
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v0, v4, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 70
    iget-object v1, p0, Lcom/android/calendar/event/EditEventActivity;->mEditFragment:Lcom/android/calendar/event/EditEventFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 71
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 73
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, launchIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "content://com.android.calendar/time"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    const/high16 v1, 0x420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EditEventActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    const/4 v1, 0x1

    .line 118
    .end local v0           #launchIntent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
