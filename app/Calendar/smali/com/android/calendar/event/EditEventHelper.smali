.class public Lcom/android/calendar/event/EditEventHelper;
.super Ljava/lang/Object;
.source "EditEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;,
        Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    }
.end annotation


# static fields
.field static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field public static final ATTENDEE_VALUES:[I

.field static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field protected static DEFAULT_DOMAIN:Ljava/lang/String;

.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field public static final REMINDERS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmailValidator:Lcom/android/common/Rfc822Validator;

.field protected mEventOk:Z

.field private mService:Lcom/android/calendar/AsyncQueryService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "eventLocation"

    aput-object v1, v0, v6

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "transparency"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "originalEvent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "_sync_account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 109
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 152
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->ATTENDEE_VALUES:[I

    .line 167
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "color"

    aput-object v1, v0, v6

    const-string v1, "organizerCanRespond"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "selected"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_sync_account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 191
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void

    .line 152
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/CalendarEventModel;)V
    .locals 2
    .parameter "context"
    .parameter "model"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventHelper;->mEventOk:Z

    .line 229
    iput-object p1, p0, Lcom/android/calendar/event/EditEventHelper;->mContext:Landroid/content/Context;

    .line 230
    new-instance v0, Lcom/android/calendar/AsyncQueryService;

    invoke-direct {v0, p1}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 232
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/EditEventHelper;->setDomainFromModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 233
    return-void
.end method

.method public static canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 2
    .parameter "model"

    .prologue
    .line 1114
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 4
    .parameter "model"

    .prologue
    .line 1109
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 1
    .parameter "model"

    .prologue
    .line 1104
    invoke-static {p0}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canRespond(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 3
    .parameter "model"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1179
    invoke-static {p0}, Lcom/android/calendar/event/EditEventHelper;->isPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1201
    :goto_0
    return v0

    .line 1183
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1184
    goto :goto_0

    .line 1187
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_2

    move v0, v2

    .line 1188
    goto :goto_0

    .line 1191
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    if-nez v0, :cond_3

    move v0, v1

    .line 1192
    goto :goto_0

    .line 1197
    :cond_3
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1198
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1201
    goto :goto_0
.end method

.method public static extractDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 1298
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1299
    .local v0, separator:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1300
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1302
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAddressesFromList(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Ljava/util/LinkedHashSet;
    .locals 6
    .parameter "list"
    .parameter "validator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/common/Rfc822Validator;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 558
    .local v2, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 559
    if-nez p1, :cond_1

    .line 573
    :cond_0
    return-object v2

    .line 565
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 566
    .local v1, addressIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/text/util/Rfc822Token;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 568
    .local v0, address:Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 569
    const-string v3, "EditEventHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping invalid attendee email address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static isExceptionEventInPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 3
    .parameter "model"

    .prologue
    const/4 v2, 0x0

    .line 1136
    if-nez p0, :cond_0

    move v0, v2

    .line 1141
    :goto_0
    return v0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    const-string v1, "com.asus.pcsync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1139
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1141
    goto :goto_0
.end method

.method static isFirstEventInSeries(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z
    .locals 4
    .parameter "model"
    .parameter "originalModel"

    .prologue
    .line 866
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 3
    .parameter "model"

    .prologue
    const/4 v2, 0x0

    .line 1118
    if-nez p0, :cond_0

    move v0, v2

    .line 1123
    :goto_0
    return v0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    const-string v1, "com.asus.pcsync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1123
    goto :goto_0
.end method

.method public static isPCSyncAccount(Ljava/lang/String;)Z
    .locals 2
    .parameter "accountType"

    .prologue
    const/4 v1, 0x0

    .line 1128
    if-eqz p0, :cond_1

    .line 1129
    const-string v0, "com.asus.pcsync"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1131
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1129
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1131
    goto :goto_0
.end method

.method public static isRepeatingEventWithExceptionsInPCSyncAccount(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 3
    .parameter "model"

    .prologue
    const/4 v2, 0x0

    .line 1147
    if-nez p0, :cond_0

    move v0, v2

    .line 1160
    :goto_0
    return v0

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    const-string v1, "com.asus.pcsync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1158
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1160
    goto :goto_0
.end method

.method public static isSameEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z
    .locals 6
    .parameter "model"
    .parameter "originalModel"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 760
    if-nez p1, :cond_0

    move v0, v5

    .line 771
    :goto_0
    return v0

    .line 764
    :cond_0
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v0, v4

    .line 765
    goto :goto_0

    .line 767
    :cond_1
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    move v0, v4

    .line 768
    goto :goto_0

    :cond_2
    move v0, v5

    .line 771
    goto :goto_0
.end method

.method public static saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 10
    .parameter
    .parameter "eventId"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 789
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p5, :cond_0

    move v7, v8

    .line 815
    :goto_0
    return v7

    .line 794
    :cond_0
    const-string v6, "event_id=?"

    .line 795
    .local v6, where:Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v8

    .line 796
    .local v0, args:[Ljava/lang/String;
    sget-object v7, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 798
    .local v1, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v1, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 799
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 802
    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 805
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 806
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 808
    .local v4, minutes:I
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 809
    const-string v7, "minutes"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 810
    const-string v7, "method"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 811
    const-string v7, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 812
    sget-object v7, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 813
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #minutes:I
    :cond_1
    move v7, v9

    .line 815
    goto :goto_0
.end method

.method public static setModelFromCalendarCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)Z
    .locals 6
    .parameter "model"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1067
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1068
    :cond_0
    const-string v0, "EditEventHelper"

    const-string v1, "Attempted to build non-existent model or from an incorrect query."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 1100
    :goto_0
    return v0

    .line 1072
    :cond_1
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    move v0, v4

    .line 1073
    goto :goto_0

    .line 1076
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-nez v0, :cond_3

    .line 1077
    const-string v0, "EditEventHelper"

    const-string v1, "Can\'t update model with a Calendar cursor until it has seen an Event cursor."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 1079
    goto :goto_0

    .line 1082
    :cond_3
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1083
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1084
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1088
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 1090
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 1091
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 1092
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 1096
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    move v0, v5

    .line 1098
    goto :goto_0

    :cond_5
    move v0, v4

    .line 1088
    goto :goto_1

    :cond_6
    move v0, v4

    .line 1100
    goto :goto_0
.end method

.method public static setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V
    .locals 7
    .parameter "model"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1004
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 1005
    :cond_0
    const-string v3, "EditEventHelper"

    const-string v4, "Attempted to build non-existent model or from an incorrect query."

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :goto_0
    return-void

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/CalendarEventModel;->clear()V

    .line 1010
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1012
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 1013
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1014
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1015
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1016
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 1017
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    :goto_2
    iput-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 1018
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1019
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 1020
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1021
    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, rRule:Ljava/lang/String;
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1023
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 1024
    const/16 v3, 0xd

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_3
    iput-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mTransparency:Z

    .line 1025
    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1026
    .local v2, visibility:I
    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 1027
    const/16 v3, 0x10

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    :goto_4
    iput-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 1028
    const/16 v3, 0x11

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEvent:Ljava/lang/String;

    .line 1029
    const/16 v3, 0x12

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1030
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 1031
    const/16 v3, 0x13

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_5
    iput-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    .line 1033
    if-lez v2, :cond_2

    .line 1037
    add-int/lit8 v2, v2, -0x1

    .line 1039
    :cond_2
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mVisibility:I

    .line 1041
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move v0, v5

    .line 1044
    .local v0, hasRRule:Z
    :goto_6
    if-eqz v0, :cond_9

    .line 1045
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 1050
    :goto_7
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 1054
    const/16 v3, 0x14

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0           #hasRRule:Z
    .end local v1           #rRule:Ljava/lang/String;
    .end local v2           #visibility:I
    :cond_3
    move v3, v6

    .line 1016
    goto/16 :goto_1

    :cond_4
    move v3, v6

    .line 1017
    goto/16 :goto_2

    .restart local v1       #rRule:Ljava/lang/String;
    :cond_5
    move v3, v6

    .line 1024
    goto :goto_3

    .restart local v2       #visibility:I
    :cond_6
    move v3, v6

    .line 1027
    goto :goto_4

    :cond_7
    move v3, v6

    .line 1031
    goto :goto_5

    :cond_8
    move v0, v6

    .line 1041
    goto :goto_6

    .line 1047
    .restart local v0       #hasRRule:Z
    :cond_9
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_7
.end method

.method static updateRecurrenceRule(ILcom/android/calendar/CalendarEventModel;I)V
    .locals 6
    .parameter "selection"
    .parameter "model"
    .parameter "weekStart"

    .prologue
    .line 916
    new-instance v3, Landroid/pim/EventRecurrence;

    invoke-direct {v3}, Landroid/pim/EventRecurrence;-><init>()V

    .line 918
    .local v3, eventRecurrence:Landroid/pim/EventRecurrence;
    if-nez p0, :cond_1

    .line 919
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 993
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 921
    .restart local p0
    :cond_1
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    .line 924
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 925
    const/4 p0, 0x4

    iput p0, v3, Landroid/pim/EventRecurrence;->freq:I

    .line 991
    .end local p0
    :cond_2
    :goto_1
    invoke-static {p2}, Landroid/pim/EventRecurrence;->calendarDay2Day(I)I

    move-result p0

    iput p0, v3, Landroid/pim/EventRecurrence;->wkst:I

    .line 992
    invoke-virtual {v3}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    goto :goto_0

    .line 926
    .restart local p0
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    .line 927
    const/4 p0, 0x5

    iput p0, v3, Landroid/pim/EventRecurrence;->freq:I

    .line 928
    .end local p0
    const/4 v2, 0x5

    .line 929
    .local v2, dayCount:I
    new-array p0, v2, [I

    .line 930
    .local p0, byday:[I
    new-array v0, v2, [I

    .line 932
    .local v0, bydayNum:[I
    const/4 v1, 0x0

    const/high16 v4, 0x2

    aput v4, p0, v1

    .line 933
    const/4 v1, 0x1

    const/high16 v4, 0x4

    aput v4, p0, v1

    .line 934
    const/4 v1, 0x2

    const/high16 v4, 0x8

    aput v4, p0, v1

    .line 935
    const/4 v1, 0x3

    const/high16 v4, 0x10

    aput v4, p0, v1

    .line 936
    const/4 v1, 0x4

    const/high16 v4, 0x20

    aput v4, p0, v1

    .line 937
    const/4 v1, 0x0

    .local v1, day:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 938
    const/4 v4, 0x0

    aput v4, v0, v1

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 941
    :cond_4
    iput-object p0, v3, Landroid/pim/EventRecurrence;->byday:[I

    .line 942
    iput-object v0, v3, Landroid/pim/EventRecurrence;->bydayNum:[I

    .line 943
    iput v2, v3, Landroid/pim/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 944
    .end local v0           #bydayNum:[I
    .end local v1           #day:I
    .end local v2           #dayCount:I
    .local p0, selection:I
    :cond_5
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    .line 945
    const/4 p0, 0x5

    iput p0, v3, Landroid/pim/EventRecurrence;->freq:I

    .line 946
    .end local p0           #selection:I
    const/4 p0, 0x1

    new-array v1, p0, [I

    .line 947
    .local v1, days:[I
    const/4 p0, 0x1

    .line 948
    .local p0, dayCount:I
    new-array v0, p0, [I

    .line 949
    .local v0, dayNum:[I
    new-instance v2, Landroid/text/format/Time;

    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 950
    .local v2, startTime:Landroid/text/format/Time;
    iget-wide v4, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 952
    const/4 v4, 0x0

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    .end local v2           #startTime:Landroid/text/format/Time;
    invoke-static {v2}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v2

    aput v2, v1, v4

    .line 954
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v0, v2

    .line 956
    iput-object v1, v3, Landroid/pim/EventRecurrence;->byday:[I

    .line 957
    iput-object v0, v3, Landroid/pim/EventRecurrence;->bydayNum:[I

    .line 958
    iput p0, v3, Landroid/pim/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 959
    .end local v0           #dayNum:[I
    .end local v1           #days:[I
    .local p0, selection:I
    :cond_6
    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    .line 960
    const/4 p0, 0x6

    iput p0, v3, Landroid/pim/EventRecurrence;->freq:I

    .line 961
    .end local p0           #selection:I
    const/4 p0, 0x0

    iput p0, v3, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 962
    const/4 p0, 0x1

    iput p0, v3, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    .line 963
    const/4 p0, 0x1

    new-array p0, p0, [I

    .line 964
    .local p0, bymonthday:[I
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, startTime:Landroid/text/format/Time;
    iget-wide v1, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 966
    const/4 v1, 0x0

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    .end local v0           #startTime:Landroid/text/format/Time;
    aput v0, p0, v1

    .line 967
    iput-object p0, v3, Landroid/pim/EventRecurrence;->bymonthday:[I

    goto/16 :goto_1

    .line 968
    .local p0, selection:I
    :cond_7
    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    .line 969
    const/4 p0, 0x6

    iput p0, v3, Landroid/pim/EventRecurrence;->freq:I

    .line 970
    .end local p0           #selection:I
    const/4 p0, 0x1

    iput p0, v3, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 971
    const/4 p0, 0x0

    iput p0, v3, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    .line 973
    const/4 p0, 0x1

    new-array p0, p0, [I

    .line 974
    .local p0, byday:[I
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 975
    .local v0, bydayNum:[I
    new-instance v2, Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 976
    .restart local v2       #startTime:Landroid/text/format/Time;
    iget-wide v4, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 978
    iget v1, v2, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    .line 979
    .local v1, dayCount:I
    const/4 v4, 0x5

    if-ne v1, v4, :cond_8

    .line 980
    const/4 v1, -0x1

    .line 982
    :cond_8
    const/4 v4, 0x0

    aput v1, v0, v4

    .line 983
    const/4 v1, 0x0

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    .end local v1           #dayCount:I
    .end local v2           #startTime:Landroid/text/format/Time;
    invoke-static {v2}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v2

    aput v2, p0, v1

    .line 984
    iput-object p0, v3, Landroid/pim/EventRecurrence;->byday:[I

    .line 985
    iput-object v0, v3, Landroid/pim/EventRecurrence;->bydayNum:[I

    goto/16 :goto_1

    .line 986
    .end local v0           #bydayNum:[I
    .local p0, selection:I
    :cond_9
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 987
    const/4 p0, 0x7

    iput p0, v3, Landroid/pim/EventRecurrence;->freq:I

    goto/16 :goto_1
.end method


# virtual methods
.method addRecurrenceRule(Landroid/content/ContentValues;Lcom/android/calendar/CalendarEventModel;)V
    .locals 18
    .parameter "values"
    .parameter "model"

    .prologue
    .line 871
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object v9, v0

    .line 873
    .local v9, rrule:Ljava/lang/String;
    const-string v14, "rrule"

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    move-wide v6, v0

    .line 875
    .local v6, end:J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide v12, v0

    .line 876
    .local v12, start:J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    move-object v5, v0

    .line 878
    .local v5, duration:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move v8, v0

    .line 879
    .local v8, isAllDay:Z
    cmp-long v14, v6, v12

    if-lez v14, :cond_2

    .line 880
    if-eqz v8, :cond_1

    .line 882
    sub-long v14, v6, v12

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    div-long v3, v14, v16

    .line 884
    .local v3, days:J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "P"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "D"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 900
    .end local v3           #days:J
    :cond_0
    :goto_0
    const-string v14, "duration"

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v14, "dtend"

    const/16 p0, 0x0

    check-cast p0, Ljava/lang/Long;

    .end local p0
    move-object/from16 v0, p1

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 902
    return-void

    .line 887
    .restart local p0
    :cond_1
    sub-long v14, v6, v12

    const-wide/16 v16, 0x3e8

    div-long v10, v14, v16

    .line 888
    .local v10, seconds:J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "P"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "S"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 889
    goto :goto_0

    .line 890
    .end local v10           #seconds:J
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 893
    if-eqz v8, :cond_3

    .line 894
    const-string v5, "P1D"

    goto :goto_0

    .line 896
    :cond_3
    const-string v5, "P3600S"

    goto :goto_0
.end method

.method checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V
    .locals 24
    .parameter "originalModel"
    .parameter "model"
    .parameter "values"
    .parameter "modifyWhich"

    .prologue
    .line 611
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-wide v13, v0

    .line 612
    .local v13, oldBegin:J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    move-wide v15, v0

    .line 613
    .local v15, oldEnd:J
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move v12, v0

    .line 614
    .local v12, oldAllDay:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 615
    .local v17, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 617
    .local v20, oldTimezone:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide v4, v0

    .line 618
    .local v4, newBegin:J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    move-wide v6, v0

    .line 619
    .local v6, newEnd:J
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move v3, v0

    .line 620
    .local v3, newAllDay:Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object v8, v0

    .line 621
    .local v8, newRrule:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object v9, v0

    .line 624
    .local v9, newTimezone:Ljava/lang/String;
    cmp-long v22, v13, v4

    if-nez v22, :cond_1

    cmp-long v22, v15, v6

    if-nez v22, :cond_1

    if-ne v12, v3, :cond_1

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 627
    const-string v22, "dtstart"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 628
    const-string v22, "dtend"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 629
    const-string v22, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 630
    const-string v22, "allDay"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 631
    const-string v22, "rrule"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 632
    const-string v22, "eventTimezone"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 647
    const/16 v22, 0x3

    move/from16 v0, p4

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 648
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide/from16 v18, v0

    .line 649
    .local v18, oldStartMillis:J
    cmp-long v22, v13, v4

    if-eqz v22, :cond_2

    .line 651
    sub-long v10, v4, v13

    .line 652
    .local v10, offset:J
    add-long v18, v18, v10

    .line 654
    .end local v10           #offset:J
    :cond_2
    if-eqz v3, :cond_3

    .line 655
    new-instance v21, Landroid/text/format/Time;

    const-string v22, "UTC"

    invoke-direct/range {v21 .. v22}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 656
    .local v21, time:Landroid/text/format/Time;
    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 657
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 658
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 659
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 660
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 662
    .end local v21           #time:Landroid/text/format/Time;
    :cond_3
    const-string v22, "dtstart"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method protected constructDefaultEndTime(J)J
    .locals 2
    .parameter "startTime"

    .prologue
    .line 603
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    return-wide v0
.end method

.method protected constructDefaultStartTime(J)J
    .locals 5
    .parameter "now"

    .prologue
    const/4 v4, 0x0

    .line 584
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 585
    .local v0, defaultStart:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 586
    iput v4, v0, Landroid/text/format/Time;->second:I

    .line 587
    const/16 v3, 0x1e

    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 588
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 589
    .local v1, defaultStartMillis:J
    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    move-wide v3, v1

    .line 592
    :goto_0
    return-wide v3

    :cond_0
    const-wide/32 v3, 0x1b7740

    add-long/2addr v3, v1

    goto :goto_0
.end method

.method getContentValuesFromModel(Lcom/android/calendar/CalendarEventModel;)Landroid/content/ContentValues;
    .locals 19
    .parameter "model"

    .prologue
    .line 1215
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object v14, v0

    .line 1216
    .local v14, title:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move v8, v0

    .line 1217
    .local v8, isAllDay:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object v9, v0

    .line 1218
    .local v9, rrule:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object v13, v0

    .line 1219
    .local v13, timezone:Ljava/lang/String;
    if-nez v13, :cond_0

    .line 1220
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    .line 1222
    :cond_0
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v12, startTime:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v7, endTime:Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide/from16 v17, v0

    move-object v0, v12

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1226
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    move-wide/from16 v17, v0

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1228
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1232
    .local v15, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    move-wide v3, v0

    .line 1233
    .local v3, calendarId:J
    if-eqz v8, :cond_3

    .line 1236
    const-string v13, "UTC"

    .line 1237
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1238
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1239
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1240
    iput-object v13, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1241
    const/16 v17, 0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 1243
    .local v10, startMillis:J
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v7

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1244
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v7

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1245
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v7

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1246
    iput-object v13, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1247
    const/16 v17, 0x1

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 1248
    .local v5, endMillis:J
    const-wide/32 v17, 0x5265c00

    add-long v17, v17, v10

    cmp-long v17, v5, v17

    if-gez v17, :cond_1

    .line 1251
    const-wide/32 v17, 0x5265c00

    add-long v5, v10, v17

    .line 1258
    :cond_1
    :goto_0
    const-string v17, "calendar_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1259
    const-string v17, "eventTimezone"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v17, "title"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v17, "allDay"

    if-eqz v8, :cond_4

    const/16 v18, 0x1

    :goto_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1262
    const-string v17, "dtstart"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1263
    const-string v17, "rrule"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1265
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/EditEventHelper;->addRecurrenceRule(Landroid/content/ContentValues;Lcom/android/calendar/CalendarEventModel;)V

    .line 1270
    .end local p0
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1271
    const-string v17, "description"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1276
    const-string v17, "eventLocation"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    :goto_4
    const-string v17, "transparency"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mTransparency:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    :goto_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    const-string v17, "hasAttendeeData"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    :goto_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1283
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mVisibility:I

    move/from16 v16, v0

    .line 1284
    .local v16, visibility:I
    if-lez v16, :cond_2

    .line 1287
    add-int/lit8 v16, v16, 0x1

    .line 1289
    :cond_2
    const-string v17, "visibility"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1291
    return-object v15

    .line 1254
    .end local v5           #endMillis:J
    .end local v10           #startMillis:J
    .end local v16           #visibility:I
    .restart local p0
    :cond_3
    const/16 v17, 0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 1255
    .restart local v10       #startMillis:J
    const/16 v17, 0x1

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .restart local v5       #endMillis:J
    goto/16 :goto_0

    .line 1261
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1267
    :cond_5
    const-string v17, "duration"

    const/16 p0, 0x0

    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v17, "dtend"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1273
    :cond_6
    const-string v17, "description"

    const/16 p0, 0x0

    check-cast p0, Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1278
    :cond_7
    const-string v17, "eventLocation"

    const/16 p0, 0x0

    check-cast p0, Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1280
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1281
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_6
.end method

.method public saveEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;I)Z
    .locals 46
    .parameter "model"
    .parameter "originalModel"
    .parameter "modifyWhich"

    .prologue
    .line 261
    const/4 v10, 0x0

    .line 267
    .local v10, forceSaveReminders:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/event/EditEventHelper;->mEventOk:Z

    move v5, v0

    if-nez v5, :cond_0

    .line 271
    const/4 v5, 0x0

    .line 552
    :goto_0
    return v5

    .line 276
    :cond_0
    if-nez p1, :cond_1

    .line 277
    const-string v5, "EditEventHelper"

    const-string v6, "Attempted to save null model."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v5, 0x0

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/CalendarEventModel;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 281
    const-string v5, "EditEventHelper"

    const-string v6, "Attempted to save invalid model."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v5, 0x0

    goto :goto_0

    .line 284
    :cond_2
    if-eqz p2, :cond_3

    invoke-static/range {p1 .. p2}, Lcom/android/calendar/event/EditEventHelper;->isSameEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 285
    const-string v5, "EditEventHelper"

    const-string v6, "Attempted to update existing event but models didn\'t refer to the same event."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v5, 0x0

    goto :goto_0

    .line 290
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v6, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, -0x1

    .line 293
    .local v7, eventIdIndex:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/event/EditEventHelper;->getContentValuesFromModel(Lcom/android/calendar/CalendarEventModel;)Landroid/content/ContentValues;

    move-result-object v45

    .line 295
    .local v45, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_4

    if-nez p2, :cond_4

    .line 296
    const-string v5, "EditEventHelper"

    const-string v6, "Existing event but no originalModel provided. Aborting save."

    .end local v6           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v5, 0x0

    goto :goto_0

    .line 299
    .restart local v6       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    const/16 v44, 0x0

    .line 300
    .local v44, uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 301
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 305
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    move-object v8, v0

    .line 306
    .local v8, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 307
    .local v35, len:I
    const-string v5, "hasAlarm"

    if-lez v35, :cond_d

    const/4 v9, 0x1

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    if-nez v44, :cond_e

    .line 311
    const-string v5, "hasAttendeeData"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v7           #eventIdIndex:I
    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v5, "eventStatus"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 314
    .restart local v7       #eventIdIndex:I
    sget-object v5, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    .line 316
    .local v26, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const/4 v10, 0x1

    .line 403
    .end local v26           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_6
    :goto_2
    const/4 v5, -0x1

    if-eq v7, v5, :cond_18

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 405
    .local v37, newEvent:Z
    :goto_3
    if-eqz p2, :cond_19

    .line 406
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    move-object v9, v0

    .line 411
    .local v9, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_4
    if-eqz v37, :cond_1a

    move-object/from16 v5, p0

    .line 412
    invoke-virtual/range {v5 .. v10}, Lcom/android/calendar/event/EditEventHelper;->saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 420
    :cond_7
    :goto_5
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    move/from16 v30, v0

    .line 423
    .local v30, hasAttendeeData:Z
    if-eqz v30, :cond_1b

    if-eqz v37, :cond_1b

    .line 424
    invoke-virtual/range {v45 .. v45}, Landroid/content/ContentValues;->clear()V

    .line 426
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 427
    .local v41, ownerEmail:Ljava/lang/String;
    if-eqz v41, :cond_a

    .line 428
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v45

    move-object v1, v5

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v5, "attendeeRelationship"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v8           #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-result-object v8

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string v5, "attendeeType"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const/16 v34, 0x1

    .line 432
    .local v34, initialStatus:I
    if-eqz p2, :cond_8

    .line 433
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    move/from16 v34, v0

    .line 437
    :cond_8
    const-string v5, "calendar.google.com"

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 438
    const/16 v34, 0x0

    .line 440
    :cond_9
    const-string v5, "attendeeStatus"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    .line 443
    .restart local v26       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "event_id"

    move-object/from16 v0, v26

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 444
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v26           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v34           #initialStatus:I
    .end local v41           #ownerEmail:Ljava/lang/String;
    :cond_a
    :goto_6
    if-eqz v30, :cond_24

    if-nez v37, :cond_b

    if-eqz v44, :cond_24

    .line 464
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v25

    .line 466
    .local v25, attendees:Ljava/lang/String;
    if-eqz p2, :cond_1c

    .line 467
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v39

    .line 473
    .local v39, originalAttendeesString:Ljava/lang/String;
    :goto_7
    if-nez v37, :cond_c

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 477
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/event/EditEventHelper;->setDomainFromModel(Lcom/android/calendar/CalendarEventModel;)V

    .line 478
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    move-object/from16 v36, v0

    .line 479
    .local v36, newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    new-instance v43, Ljava/util/LinkedList;

    invoke-direct/range {v43 .. v43}, Ljava/util/LinkedList;-><init>()V

    .line 483
    .local v43, removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v44, :cond_1d

    invoke-static/range {v44 .. v44}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    move-wide v12, v14

    .line 488
    .local v12, eventId:J
    :goto_8
    if-nez v37, :cond_22

    .line 489
    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedList;->clear()V

    .line 490
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    move-object/from16 v38, v0

    .line 491
    .local v38, originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    invoke-virtual/range {v38 .. v38}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 492
    .local v40, originalEmail:Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 494
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 307
    .end local v9           #originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12           #eventId:J
    .end local v25           #attendees:Ljava/lang/String;
    .end local v30           #hasAttendeeData:Z
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v36           #newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .end local v37           #newEvent:Z
    .end local v38           #originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .end local v39           #originalAttendeesString:Ljava/lang/String;
    .end local v40           #originalEmail:Ljava/lang/String;
    .end local v43           #removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v8       #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 319
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v45

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 322
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 324
    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 327
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 329
    :cond_10
    const/4 v5, 0x1

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_12

    .line 332
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-wide/from16 v27, v0

    .line 333
    .local v27, begin:J
    const-string v5, "originalEvent"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object v7, v0

    .end local v7           #eventIdIndex:I
    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v5, "originalInstanceTime"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move/from16 v21, v0

    .line 336
    .local v21, allDay:Z
    const-string v5, "originalAllDay"

    if-eqz v21, :cond_11

    const/4 v7, 0x1

    :goto_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v5, "eventStatus"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 340
    .restart local v7       #eventIdIndex:I
    sget-object v5, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    .line 342
    .restart local v26       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const/4 v10, 0x1

    .line 345
    goto/16 :goto_2

    .line 336
    .end local v7           #eventIdIndex:I
    .end local v26           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_11
    const/4 v7, 0x0

    goto :goto_a

    .line 345
    .end local v21           #allDay:Z
    .end local v27           #begin:J
    .restart local v7       #eventIdIndex:I
    :cond_12
    const/4 v5, 0x2

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_16

    .line 347
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 352
    invoke-static/range {p1 .. p2}, Lcom/android/calendar/event/EditEventHelper;->isFirstEventInSeries(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 353
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :goto_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 360
    const-string v5, "eventStatus"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    sget-object v5, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :goto_c
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 357
    :cond_13
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-wide v14, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->updatePastEvents(Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel;J)V

    goto :goto_b

    .line 364
    :cond_14
    invoke-static/range {p1 .. p2}, Lcom/android/calendar/event/EditEventHelper;->isFirstEventInSeries(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 365
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v45

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 366
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    .line 368
    .restart local v26       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 372
    .end local v26           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_15
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-wide v14, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->updatePastEvents(Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel;J)V

    .line 375
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 376
    const-string v5, "eventStatus"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    sget-object v5, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 383
    :cond_16
    const/4 v5, 0x3

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_6

    .line 386
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 390
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 393
    sget-object v5, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 397
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v45

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 398
    invoke-static/range {v44 .. v44}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 403
    :cond_18
    const/4 v5, 0x0

    move/from16 v37, v5

    goto/16 :goto_3

    .line 408
    .restart local v37       #newEvent:Z
    :cond_19
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9       #originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_4

    .line 414
    :cond_1a
    if-eqz v44, :cond_7

    .line 415
    invoke-static/range {v44 .. v44}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .restart local v12       #eventId:J
    move-object v11, v6

    move-object v14, v8

    move-object v15, v9

    move/from16 v16, v10

    .line 416
    invoke-static/range {v11 .. v16}, Lcom/android/calendar/event/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    goto/16 :goto_5

    .line 446
    .end local v12           #eventId:J
    .restart local v30       #hasAttendeeData:Z
    :cond_1b
    if-eqz v30, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    move v8, v0

    .end local v8           #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eq v5, v8, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    move v5, v0

    const/4 v8, -0x1

    if-eq v5, v8, :cond_a

    .line 452
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    move v8, v0

    int-to-long v14, v8

    invoke-static {v5, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 454
    .local v23, attUri:Landroid/net/Uri;
    invoke-virtual/range {v45 .. v45}, Landroid/content/ContentValues;->clear()V

    .line 455
    const-string v5, "attendeeStatus"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    move v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v5, "event_id"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    move-wide v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 457
    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    .line 458
    .restart local v26       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 469
    .end local v23           #attUri:Landroid/net/Uri;
    .end local v26           #b:Landroid/content/ContentProviderOperation$Builder;
    .restart local v25       #attendees:Ljava/lang/String;
    :cond_1c
    const-string v39, ""

    .restart local v39       #originalAttendeesString:Ljava/lang/String;
    goto/16 :goto_7

    .line 483
    .restart local v36       #newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .restart local v43       #removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_1d
    const-wide/16 v14, -0x1

    move-wide v12, v14

    goto/16 :goto_8

    .line 497
    .restart local v12       #eventId:J
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v38       #originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .restart local v40       #originalEmail:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 502
    .end local v40           #originalEmail:Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_22

    .line 503
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    .line 505
    .restart local v26       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 506
    .local v22, args:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v22, v5

    .line 507
    const/16 v31, 0x1

    .line 508
    .local v31, i:I
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v5, "event_id=? AND attendeeEmail IN ("

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .local v29, deleteWhere:Ljava/lang/StringBuilder;
    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_d
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 510
    .local v42, removedAttendee:Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v31

    move v1, v5

    if-le v0, v1, :cond_20

    .line 511
    const-string v5, ","

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_20
    const-string v5, "?"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    add-int/lit8 v32, v31, 0x1

    .end local v31           #i:I
    .local v32, i:I
    aput-object v42, v22, v31

    move/from16 v31, v32

    .end local v32           #i:I
    .restart local v31       #i:I
    goto :goto_d

    .line 516
    .end local v42           #removedAttendee:Ljava/lang/String;
    :cond_21
    const-string v5, ")"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 518
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .end local v22           #args:[Ljava/lang/String;
    .end local v26           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v29           #deleteWhere:Ljava/lang/StringBuilder;
    .end local v31           #i:I
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v38           #originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    :cond_22
    invoke-virtual/range {v36 .. v36}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-lez v5, :cond_24

    .line 524
    invoke-virtual/range {v36 .. v36}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 525
    .local v24, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    invoke-virtual/range {v45 .. v45}, Landroid/content/ContentValues;->clear()V

    .line 526
    const-string v5, "attendeeName"

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v5, "attendeeRelationship"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string v5, "attendeeType"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const-string v5, "attendeeStatus"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    if-eqz v37, :cond_23

    .line 534
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    .line 536
    .restart local v26       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "event_id"

    move-object/from16 v0, v26

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 542
    :goto_f
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 538
    .end local v26           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_23
    const-string v5, "event_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 539
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v26

    .restart local v26       #b:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_f

    .line 549
    .end local v12           #eventId:J
    .end local v24           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v25           #attendees:Ljava/lang/String;
    .end local v26           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v36           #newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .end local v39           #originalAttendeesString:Ljava/lang/String;
    .end local v43           #removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v15

    const/16 v16, 0x0

    const-string v17, "com.android.calendar"

    const-wide/16 v19, 0x0

    move-object/from16 v18, v6

    invoke-virtual/range {v14 .. v20}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 552
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 9
    .parameter
    .parameter "eventIdIndex"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 834
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p5, :cond_0

    move v5, v8

    .line 859
    .end local p0
    :goto_0
    return v5

    .line 839
    .restart local p0
    :cond_0
    sget-object v5, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 841
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "event_id=?"

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 842
    invoke-virtual {v0, v8, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 843
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 846
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 849
    .local v2, len:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 850
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 852
    .local v3, minutes:I
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 853
    const-string v5, "minutes"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string v5, "method"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    sget-object v5, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 856
    const-string v5, "event_id"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 857
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #minutes:I
    :cond_1
    move v5, v7

    .line 859
    goto :goto_0
.end method

.method public setDomainFromModel(Lcom/android/calendar/CalendarEventModel;)V
    .locals 4
    .parameter "model"

    .prologue
    .line 237
    sget-object v0, Lcom/android/calendar/event/EditEventHelper;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 238
    .local v0, domain:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 239
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 240
    .local v1, ownerAccount:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    invoke-static {v1}, Lcom/android/calendar/event/EditEventHelper;->extractDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, ownerDomain:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    move-object v0, v2

    .line 247
    .end local v1           #ownerAccount:Ljava/lang/String;
    .end local v2           #ownerDomain:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/common/Rfc822Validator;

    invoke-direct {v3, v0}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/calendar/event/EditEventHelper;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    .line 248
    return-void
.end method

.method public updatePastEvents(Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel;J)V
    .locals 12
    .parameter
    .parameter "originalModel"
    .parameter "initialBeginTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/android/calendar/CalendarEventModel;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-boolean v0, p2, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 679
    .local v0, allDay:Z
    iget-object v6, p2, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 681
    .local v6, oldRrule:Ljava/lang/String;
    new-instance v5, Landroid/pim/EventRecurrence;

    invoke-direct {v5}, Landroid/pim/EventRecurrence;-><init>()V

    .line 682
    .local v5, eventRecurrence:Landroid/pim/EventRecurrence;
    invoke-virtual {v5, v6}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 684
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 685
    .local v8, untilTime:Landroid/text/format/Time;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 686
    .local v4, dtstart:Landroid/text/format/Time;
    move-wide v2, p3

    .line 687
    .local v2, begin:J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 693
    .local v7, oldValues:Landroid/content/ContentValues;
    const-string v9, "UTC"

    iput-object v9, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 694
    iget-object v9, p2, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iput-object v9, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 695
    iget-wide v9, p2, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v4, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 699
    const-wide/16 v9, 0x3e8

    sub-long v9, v2, v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 700
    if-eqz v0, :cond_0

    .line 701
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 702
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 703
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 704
    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/text/format/Time;->allDay:Z

    .line 705
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 707
    const/4 v9, 0x0

    iput v9, v4, Landroid/text/format/Time;->hour:I

    .line 708
    const/4 v9, 0x0

    iput v9, v4, Landroid/text/format/Time;->minute:I

    .line 709
    const/4 v9, 0x0

    iput v9, v4, Landroid/text/format/Time;->second:I

    .line 710
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/text/format/Time;->allDay:Z

    .line 711
    const-string v9, "UTC"

    iput-object v9, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 713
    :cond_0
    invoke-virtual {v8}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    .line 715
    const-string v9, "rrule"

    invoke-virtual {v5}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v9, "dtstart"

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    iget-object v9, p2, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 720
    .local v1, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    return-void
.end method
