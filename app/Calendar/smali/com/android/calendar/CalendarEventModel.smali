.class public Lcom/android/calendar/CalendarEventModel;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarEventModel$Attendee;
    }
.end annotation


# instance fields
.field public mAllDay:Z

.field public mAttendeesList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public mCalendarAccessLevel:I

.field public mCalendarColor:I

.field public mCalendarDisplayName:Ljava/lang/String;

.field public mCalendarId:J

.field public mDescription:Ljava/lang/String;

.field public mDuration:Ljava/lang/String;

.field public mEnd:J

.field public mGuestsCanInviteOthers:Z

.field public mGuestsCanModify:Z

.field public mGuestsCanSeeGuests:Z

.field public mHasAlarm:Z

.field public mHasAttendeeData:Z

.field public mId:J

.field public mIsFirstEventInSeries:Z

.field public mIsOrganizer:Z

.field public mLocation:Ljava/lang/String;

.field public mModelUpdatedWithEventCursor:Z

.field public mOrganizer:Ljava/lang/String;

.field public mOrganizerCanRespond:Z

.field public mOrganizerDisplayName:Ljava/lang/String;

.field public mOriginalAllDay:Ljava/lang/Boolean;

.field public mOriginalEnd:J

.field public mOriginalEvent:Ljava/lang/String;

.field public mOriginalStart:J

.field public mOriginalTime:Ljava/lang/Long;

.field public mOwnerAccount:Ljava/lang/String;

.field public mOwnerAttendeeId:I

.field public mReminderMinutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRrule:Ljava/lang/String;

.field public mSelfAttendeeStatus:I

.field public mStart:J

.field public mSyncAccount:Ljava/lang/String;

.field public mSyncAccountType:Ljava/lang/String;

.field public mSyncId:Ljava/lang/String;

.field public mTimezone:Ljava/lang/String;

.field public mTimezone2:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mTransparency:Z

.field public mUri:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 78
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 79
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 83
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 98
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 99
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 103
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 104
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 108
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 109
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 110
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mTransparency:Z

    .line 119
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 120
    iput v6, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 121
    iput v6, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 122
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 124
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    .line 125
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 130
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 136
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mVisibility:I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 146
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/calendar/CalendarEventModel;-><init>()V

    .line 152
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 154
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_default_reminder"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, defaultReminder:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, defaultReminderMins:I
    if-eqz v1, :cond_0

    .line 158
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 159
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V
    .locals 2
    .parameter "attendee"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method protected checkOriginalModelFields(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 5
    .parameter "originalModel"

    .prologue
    const/4 v4, 0x0

    .line 438
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eq v0, v1, :cond_0

    move v0, v4

    .line 617
    :goto_0
    return v0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    move v0, v4

    .line 443
    goto :goto_0

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    .line 446
    goto :goto_0

    .line 449
    :cond_2
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    move v0, v4

    .line 450
    goto :goto_0

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 454
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v4

    .line 455
    goto :goto_0

    .line 457
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    .line 458
    goto :goto_0

    .line 461
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 462
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-eqz v0, :cond_7

    move v0, v4

    .line 463
    goto :goto_0

    .line 465
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v4

    .line 466
    goto :goto_0

    .line 469
    :cond_7
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-eq v0, v1, :cond_8

    move v0, v4

    .line 470
    goto :goto_0

    .line 472
    :cond_8
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    if-eq v0, v1, :cond_9

    move v0, v4

    .line 473
    goto :goto_0

    .line 475
    :cond_9
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    if-eq v0, v1, :cond_a

    move v0, v4

    .line 476
    goto :goto_0

    .line 478
    :cond_a
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eq v0, v1, :cond_b

    move v0, v4

    .line 479
    goto :goto_0

    .line 481
    :cond_b
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    iget v1, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    if-eq v0, v1, :cond_c

    move v0, v4

    .line 482
    goto :goto_0

    .line 484
    :cond_c
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-eq v0, v1, :cond_d

    move v0, v4

    .line 485
    goto :goto_0

    .line 487
    :cond_d
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eq v0, v1, :cond_e

    move v0, v4

    .line 488
    goto/16 :goto_0

    .line 490
    :cond_e
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eq v0, v1, :cond_f

    move v0, v4

    .line 491
    goto/16 :goto_0

    .line 493
    :cond_f
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    move v0, v4

    .line 494
    goto/16 :goto_0

    .line 496
    :cond_10
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-eq v0, v1, :cond_11

    move v0, v4

    .line 497
    goto/16 :goto_0

    .line 500
    :cond_11
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 501
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_13

    move v0, v4

    .line 502
    goto/16 :goto_0

    .line 504
    :cond_12
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v4

    .line 505
    goto/16 :goto_0

    .line 508
    :cond_13
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 509
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-eqz v0, :cond_15

    move v0, v4

    .line 510
    goto/16 :goto_0

    .line 512
    :cond_14
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v4

    .line 513
    goto/16 :goto_0

    .line 516
    :cond_15
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    .line 517
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    move v0, v4

    .line 518
    goto/16 :goto_0

    .line 520
    :cond_16
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v4

    .line 521
    goto/16 :goto_0

    .line 524
    :cond_17
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v0, :cond_18

    .line 525
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-eqz v0, :cond_19

    move v0, v4

    .line 526
    goto/16 :goto_0

    .line 528
    :cond_18
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v4

    .line 529
    goto/16 :goto_0

    .line 532
    :cond_19
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 533
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v0, :cond_1b

    move v0, v4

    .line 534
    goto/16 :goto_0

    .line 536
    :cond_1a
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v4

    .line 537
    goto/16 :goto_0

    .line 540
    :cond_1b
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 541
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    move v0, v4

    .line 542
    goto/16 :goto_0

    .line 544
    :cond_1c
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v4

    .line 545
    goto/16 :goto_0

    .line 548
    :cond_1d
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    iget v1, p1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    if-eq v0, v1, :cond_1e

    move v0, v4

    .line 549
    goto/16 :goto_0

    .line 551
    :cond_1e
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    iget v1, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    if-eq v0, v1, :cond_1f

    move v0, v4

    .line 552
    goto/16 :goto_0

    .line 554
    :cond_1f
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 555
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-eqz v0, :cond_21

    move v0, v4

    .line 556
    goto/16 :goto_0

    .line 558
    :cond_20
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v4

    .line 559
    goto/16 :goto_0

    .line 562
    :cond_21
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 563
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-eqz v0, :cond_23

    move v0, v4

    .line 564
    goto/16 :goto_0

    .line 566
    :cond_22
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    move v0, v4

    .line 567
    goto/16 :goto_0

    .line 570
    :cond_23
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 571
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-eqz v0, :cond_25

    move v0, v4

    .line 572
    goto/16 :goto_0

    .line 574
    :cond_24
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v4

    .line 575
    goto/16 :goto_0

    .line 578
    :cond_25
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 579
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-eqz v0, :cond_27

    move v0, v4

    .line 580
    goto/16 :goto_0

    .line 582
    :cond_26
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v4

    .line 583
    goto/16 :goto_0

    .line 586
    :cond_27
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 587
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-eqz v0, :cond_29

    move v0, v4

    .line 588
    goto/16 :goto_0

    .line 590
    :cond_28
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v4

    .line 591
    goto/16 :goto_0

    .line 594
    :cond_29
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 595
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2b

    move v0, v4

    .line 596
    goto/16 :goto_0

    .line 598
    :cond_2a
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v4

    .line 599
    goto/16 :goto_0

    .line 602
    :cond_2b
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mTransparency:Z

    iget-boolean v1, p1, Lcom/android/calendar/CalendarEventModel;->mTransparency:Z

    if-eq v0, v1, :cond_2c

    move v0, v4

    .line 603
    goto/16 :goto_0

    .line 606
    :cond_2c
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 607
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_2e

    move v0, v4

    .line 608
    goto/16 :goto_0

    .line 610
    :cond_2d
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    move v0, v4

    .line 611
    goto/16 :goto_0

    .line 614
    :cond_2e
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mVisibility:I

    iget v1, p1, Lcom/android/calendar/CalendarEventModel;->mVisibility:I

    if-eq v0, v1, :cond_2f

    move v0, v4

    .line 615
    goto/16 :goto_0

    .line 617
    :cond_2f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 225
    iput-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 226
    iput-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 228
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 233
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 236
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 237
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 239
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 240
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 242
    iput-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 243
    iput-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 244
    iput-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 245
    iput-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 246
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    .line 249
    iput-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 250
    iput-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 252
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 253
    iput v5, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 254
    iput v5, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 255
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 257
    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    .line 259
    iput-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    .line 260
    iput-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 261
    iput-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    .line 262
    iput v1, p0, Lcom/android/calendar/CalendarEventModel;->mVisibility:I

    .line 263
    iput-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 264
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 265
    iput-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    .line 268
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 269
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 341
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 388
    :goto_0
    return v2

    .line 344
    :cond_0
    if-nez p1, :cond_1

    move v2, v6

    .line 345
    goto :goto_0

    .line 347
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/CalendarEventModel;

    if-nez v2, :cond_2

    move v2, v6

    .line 348
    goto :goto_0

    .line 351
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/CalendarEventModel;

    move-object v1, v0

    .line 352
    .local v1, other:Lcom/android/calendar/CalendarEventModel;
    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarEventModel;->checkOriginalModelFields(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v6

    .line 353
    goto :goto_0

    .line 356
    :cond_3
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    iget-wide v4, v1, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v2, v6

    .line 357
    goto :goto_0

    .line 359
    :cond_4
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    iget-boolean v3, v1, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    if-eq v2, v3, :cond_5

    move v2, v6

    .line 360
    goto :goto_0

    .line 362
    :cond_5
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    iget-wide v4, v1, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v2, v6

    .line 363
    goto :goto_0

    .line 366
    :cond_6
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    iget-wide v4, v1, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v2, v6

    .line 367
    goto :goto_0

    .line 369
    :cond_7
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-wide v4, v1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    move v2, v6

    .line 370
    goto :goto_0

    .line 373
    :cond_8
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 374
    iget-object v2, v1, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v2, v6

    .line 375
    goto :goto_0

    .line 377
    :cond_9
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v6

    .line 378
    goto :goto_0

    .line 381
    :cond_a
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 382
    iget-object v2, v1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v2, :cond_c

    move v2, v6

    .line 383
    goto :goto_0

    .line 385
    :cond_b
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v6

    .line 386
    goto :goto_0

    :cond_c
    move v2, v7

    .line 388
    goto :goto_0
.end method

.method public getAttendeesString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v1, b:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 282
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 283
    .local v4, name:Ljava/lang/String;
    iget-object v2, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 284
    .local v2, email:Ljava/lang/String;
    iget v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, status:Ljava/lang/String;
    const-string v6, "name:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v6, " email:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v6, " status:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 289
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v2           #email:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x4d5

    const/16 v8, 0x4cf

    const/4 v7, 0x0

    .line 294
    const/16 v0, 0x1f

    .line 295
    .local v0, prime:I
    const/4 v1, 0x1

    .line 296
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_0

    move v2, v8

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 297
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_1

    move v3, v7

    :goto_1
    add-int v1, v2, v3

    .line 298
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    iget-wide v5, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    ushr-long/2addr v5, v10

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 299
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v7

    :goto_2
    add-int v1, v2, v3

    .line 300
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v7

    :goto_3
    add-int v1, v2, v3

    .line 301
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    iget-wide v5, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    ushr-long/2addr v5, v10

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 302
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-eqz v3, :cond_4

    move v3, v8

    :goto_4
    add-int v1, v2, v3

    .line 303
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    if-eqz v3, :cond_5

    move v3, v8

    :goto_5
    add-int v1, v2, v3

    .line 304
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    if-eqz v3, :cond_6

    move v3, v8

    :goto_6
    add-int v1, v2, v3

    .line 305
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eqz v3, :cond_7

    move v3, v8

    :goto_7
    add-int v1, v2, v3

    .line 306
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-eqz v3, :cond_8

    move v3, v8

    :goto_8
    add-int v1, v2, v3

    .line 307
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    add-int v1, v2, v3

    .line 308
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v3, :cond_9

    move v3, v8

    :goto_9
    add-int v1, v2, v3

    .line 309
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v3, :cond_a

    move v3, v8

    :goto_a
    add-int v1, v2, v3

    .line 310
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-wide v5, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    ushr-long/2addr v5, v10

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 311
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    if-eqz v3, :cond_b

    move v3, v8

    :goto_b
    add-int v1, v2, v3

    .line 312
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v3, :cond_c

    move v3, v8

    :goto_c
    add-int v1, v2, v3

    .line 313
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v3, :cond_d

    move v3, v7

    :goto_d
    add-int v1, v2, v3

    .line 314
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v3, :cond_e

    move v3, v7

    :goto_e
    add-int v1, v2, v3

    .line 315
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v3, :cond_f

    move v3, v7

    :goto_f
    add-int v1, v2, v3

    .line 316
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    iget-wide v5, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    ushr-long/2addr v5, v10

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 317
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    if-nez v3, :cond_10

    move v3, v7

    :goto_10
    add-int v1, v2, v3

    .line 318
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    iget-wide v5, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    ushr-long/2addr v5, v10

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 319
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v3, :cond_11

    move v3, v7

    :goto_11
    add-int v1, v2, v3

    .line 320
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v3, :cond_12

    move v3, v7

    :goto_12
    add-int v1, v2, v3

    .line 321
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    if-nez v3, :cond_13

    move v3, v7

    :goto_13
    add-int v1, v2, v3

    .line 322
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v3, :cond_14

    move v3, v7

    :goto_14
    add-int v1, v2, v3

    .line 323
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    add-int v1, v2, v3

    .line 324
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    add-int v1, v2, v3

    .line 325
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-wide v5, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    ushr-long/2addr v5, v10

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 326
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v7

    :goto_15
    add-int v1, v2, v3

    .line 327
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v3, :cond_16

    move v3, v7

    :goto_16
    add-int v1, v2, v3

    .line 328
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v3, :cond_17

    move v3, v7

    :goto_17
    add-int v1, v2, v3

    .line 329
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v3, :cond_18

    move v3, v7

    :goto_18
    add-int v1, v2, v3

    .line 330
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v3, :cond_19

    move v3, v7

    :goto_19
    add-int v1, v2, v3

    .line 331
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_1a

    move v3, v7

    :goto_1a
    add-int v1, v2, v3

    .line 332
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mTransparency:Z

    if-eqz v3, :cond_1b

    move v3, v8

    :goto_1b
    add-int v1, v2, v3

    .line 333
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v3, :cond_1c

    move v3, v7

    :goto_1c
    add-int v1, v2, v3

    .line 334
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mVisibility:I

    add-int v1, v2, v3

    .line 335
    return v1

    :cond_0
    move v2, v9

    .line 296
    goto/16 :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_1

    .line 299
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 300
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_3

    :cond_4
    move v3, v9

    .line 302
    goto/16 :goto_4

    :cond_5
    move v3, v9

    .line 303
    goto/16 :goto_5

    :cond_6
    move v3, v9

    .line 304
    goto/16 :goto_6

    :cond_7
    move v3, v9

    .line 305
    goto/16 :goto_7

    :cond_8
    move v3, v9

    .line 306
    goto/16 :goto_8

    :cond_9
    move v3, v9

    .line 308
    goto/16 :goto_9

    :cond_a
    move v3, v9

    .line 309
    goto/16 :goto_a

    :cond_b
    move v3, v9

    .line 311
    goto/16 :goto_b

    :cond_c
    move v3, v9

    .line 312
    goto/16 :goto_c

    .line 313
    :cond_d
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_d

    .line 314
    :cond_e
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_e

    .line 315
    :cond_f
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto/16 :goto_f

    .line 317
    :cond_10
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_10

    .line 319
    :cond_11
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto/16 :goto_11

    .line 320
    :cond_12
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_12

    .line 321
    :cond_13
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    goto/16 :goto_13

    .line 322
    :cond_14
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_14

    .line 326
    :cond_15
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_15

    .line 327
    :cond_16
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_16

    .line 328
    :cond_17
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_17

    .line 329
    :cond_18
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_18

    .line 330
    :cond_19
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_19

    .line 331
    :cond_1a
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_1a

    :cond_1b
    move v3, v9

    .line 332
    goto/16 :goto_1b

    .line 333
    :cond_1c
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_1c
.end method

.method public isUnchanged(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 6
    .parameter "originalModel"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 398
    if-ne p0, p1, :cond_0

    move v0, v5

    .line 425
    :goto_0
    return v0

    .line 401
    :cond_0
    if-nez p1, :cond_1

    move v0, v4

    .line 402
    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarEventModel;->checkOriginalModelFields(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    .line 406
    goto :goto_0

    .line 408
    :cond_2
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    move v0, v4

    .line 409
    goto :goto_0

    .line 411
    :cond_3
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    move v0, v4

    .line 412
    goto :goto_0

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 416
    iget-object v0, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 417
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    move v0, v4

    .line 418
    goto :goto_0

    .line 421
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v4

    .line 422
    goto :goto_0

    :cond_7
    move v0, v5

    .line 425
    goto :goto_0
.end method

.method public isValid()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v0, v4

    .line 204
    :goto_0
    return v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 202
    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
