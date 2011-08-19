.class public Lcom/android/calendar/EventInfoFragment;
.super Landroid/app/DialogFragment;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventInfoFragment$Attendee;,
        Lcom/android/calendar/EventInfoFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static DIALOG_HEIGHT:I

.field private static DIALOG_WIDTH:I

.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field mAcceptedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoFragment$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mAttendeeResponseFromIntent:I

.field private mAttendees:Landroid/widget/TextView;

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendar:Landroid/widget/TextView;

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCanModifyCalendar:Z

.field private mColor:I

.field private mCurrentQuery:I

.field mDeclinedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoFragment$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissOnResume:Z

.field private mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventId:J

.field private mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

.field private mHasAttendeeData:Z

.field private mIsBusyFreeCalendar:Z

.field private mIsDialog:Z

.field private mIsOrganizer:Z

.field private mIsPCSyncAccount:Z

.field private mIsPaused:Z

.field private mIsRepeating:Z

.field mNoResponseAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoFragment$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfAttendees:I

.field private mOriginalAttendeeResponse:I

.field private mOwnerCanRespond:Z

.field private mStartMillis:J

.field private mTZUpdater:Ljava/lang/Runnable;

.field mTentativeAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoFragment$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;

.field private mWhat:Landroid/widget/TextView;

.field private mWhen:Landroid/widget/TextView;

.field private mWhere:Landroid/widget/TextView;

.field private mWildcardPattern:Ljava/util/regex/Pattern;

.field private mX:I

.field private mY:I

.field private onDeleteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "calendar_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "originalEvent"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_sync_account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 146
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

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 164
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "organizerCanRespond"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 228
    const/16 v0, 0x1f4

    sput v0, Lcom/android/calendar/EventInfoFragment;->DIALOG_WIDTH:I

    .line 229
    const/16 v0, 0x258

    sput v0, Lcom/android/calendar/EventInfoFragment;->DIALOG_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 330
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 110
    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 190
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 196
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsPCSyncAccount:Z

    .line 201
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 211
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWildcardPattern:Ljava/util/regex/Pattern;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Lcom/android/calendar/EventInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$1;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 230
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 232
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 233
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 234
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 466
    new-instance v0, Lcom/android/calendar/EventInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$3;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJJI)V
    .locals 8
    .parameter "context"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "attendeeResponse"

    .prologue
    .line 349
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p4

    move-wide v5, p6

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;Landroid/net/Uri;JJI)V

    .line 351
    iput-wide p2, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 352
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JJI)V
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "attendeeResponse"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 335
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 110
    iput v2, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 190
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 196
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsPCSyncAccount:Z

    .line 201
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 211
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWildcardPattern:Ljava/util/regex/Pattern;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Lcom/android/calendar/EventInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$1;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 230
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 231
    iput-boolean v4, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 232
    iput-boolean v2, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    .line 233
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 234
    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 466
    new-instance v0, Lcom/android/calendar/EventInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$3;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/EventInfoFragment;->DIALOG_WIDTH:I

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/EventInfoFragment;->DIALOG_HEIGHT:I

    .line 340
    invoke-virtual {p0, v4, v2}, Lcom/android/calendar/EventInfoFragment;->setStyle(II)V

    .line 341
    iput-object p2, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 342
    iput-wide p3, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 343
    iput-wide p5, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 344
    iput p7, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 345
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateEvent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/EventInfoFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->initAttendeesCursor(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/EventInfoFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->doEdit()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->initEventCursor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateCalendar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->updateTitle()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/EventInfoFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/EventInfoFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    return-wide v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/calendar/EventInfoFragment;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoFragment$Attendee;I)V
    .locals 3
    .parameter "values"
    .parameter
    .parameter "eventIdIndex"
    .parameter "attendee"
    .parameter "attendeeStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Lcom/android/calendar/EventInfoFragment$Attendee;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 739
    const-string v1, "attendeeName"

    iget-object v2, p4, Lcom/android/calendar/EventInfoFragment$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v1, "attendeeEmail"

    iget-object v2, p4, Lcom/android/calendar/EventInfoFragment$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    const-string v1, "attendeeType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    const-string v1, "attendeeStatus"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    sget-object v1, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 746
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 747
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    return-void
.end method

.method private addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 950
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    const-string v0, ". "

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    :cond_0
    return-void
.end method

.method private applyDialogParams()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v4, -0x1

    .line 368
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 369
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 371
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 372
    .local v2, window:Landroid/view/Window;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 374
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 375
    .local v0, a:Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3ecccccd

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 377
    sget v3, Lcom/android/calendar/EventInfoFragment;->DIALOG_WIDTH:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 378
    sget v3, Lcom/android/calendar/EventInfoFragment;->DIALOG_HEIGHT:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 380
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    if-eq v3, v4, :cond_2

    .line 381
    :cond_0
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 382
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v3, :cond_1

    .line 383
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    add-int/lit8 v3, v3, 0x40

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 385
    :cond_1
    iget v3, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 386
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 389
    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 390
    return-void
.end method

.method private createExceptionResponse(JJI)V
    .locals 21
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 682
    .local v4, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 683
    .local v20, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 684
    .local v19, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 685
    .local v16, calendarId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v15, v3

    .line 686
    .local v15, allDay:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v5, 0x6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 688
    .local v18, syncId:Ljava/lang/String;
    const-string v3, "title"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v3, "eventTimezone"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v3, "allDay"

    if-eqz v15, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const-string v3, "calendar_id"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    const-string v3, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    move-wide v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 693
    const-string v3, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    move-wide v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 694
    const-string v3, "originalEvent"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v3, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    move-wide v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 696
    const-string v3, "originalAllDay"

    if-eqz v15, :cond_4

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v3, "eventStatus"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string v3, "selfAttendeeStatus"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 703
    .local v6, eventIdIndex:I
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EventInfoFragment;->mHasAttendeeData:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/EventInfoFragment$Attendee;

    .line 708
    .local v7, attendee:Lcom/android/calendar/EventInfoFragment$Attendee;
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/calendar/EventInfoFragment;->addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoFragment$Attendee;I)V

    goto :goto_4

    .line 685
    .end local v5           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #eventIdIndex:I
    .end local v7           #attendee:Lcom/android/calendar/EventInfoFragment$Attendee;
    .end local v15           #allDay:Z
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #syncId:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_1

    .line 690
    .restart local v15       #allDay:Z
    .restart local v18       #syncId:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 696
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 711
    .restart local v5       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6       #eventIdIndex:I
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/EventInfoFragment$Attendee;

    .line 712
    .restart local v7       #attendee:Lcom/android/calendar/EventInfoFragment$Attendee;
    const/4 v8, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/calendar/EventInfoFragment;->addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoFragment$Attendee;I)V

    goto :goto_5

    .line 715
    .end local v7           #attendee:Lcom/android/calendar/EventInfoFragment$Attendee;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/EventInfoFragment$Attendee;

    .line 716
    .restart local v7       #attendee:Lcom/android/calendar/EventInfoFragment$Attendee;
    const/4 v8, 0x4

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/calendar/EventInfoFragment;->addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoFragment$Attendee;I)V

    goto :goto_6

    .line 719
    .end local v7           #attendee:Lcom/android/calendar/EventInfoFragment$Attendee;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/EventInfoFragment$Attendee;

    .line 720
    .restart local v7       #attendee:Lcom/android/calendar/EventInfoFragment$Attendee;
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/calendar/EventInfoFragment;->addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoFragment$Attendee;I)V

    goto :goto_7

    .line 725
    .end local v7           #attendee:Lcom/android/calendar/EventInfoFragment$Attendee;
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->getNextToken()I

    move-result v9

    const/4 v10, 0x0

    const-string v11, "com.android.calendar"

    const-wide/16 v13, 0x0

    move-object v12, v5

    invoke-virtual/range {v8 .. v14}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    goto/16 :goto_0
.end method

.method private doEdit()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 787
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 790
    .local v14, c:Landroid/content/Context;
    if-eqz v14, :cond_0

    .line 791
    invoke-static {v14}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x4

    iget-wide v4, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v6, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    iget-wide v8, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    const-wide/16 v12, -0x1

    move-object v1, p0

    move v11, v10

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 794
    :cond_0
    return-void
.end method

.method public static findButtonIdForResponse(I)I
    .locals 1
    .parameter "response"

    .prologue
    .line 770
    packed-switch p0, :pswitch_data_0

    .line 781
    :pswitch_0
    const/4 v0, -0x1

    .line 783
    .local v0, buttonId:I
    :goto_0
    return v0

    .line 772
    .end local v0           #buttonId:I
    :pswitch_1
    const v0, 0x7f0e006a

    .line 773
    .restart local v0       #buttonId:I
    goto :goto_0

    .line 775
    .end local v0           #buttonId:I
    :pswitch_2
    const v0, 0x7f0e006b

    .line 776
    .restart local v0       #buttonId:I
    goto :goto_0

    .line 778
    .end local v0           #buttonId:I
    :pswitch_3
    const v0, 0x7f0e006c

    .line 779
    .restart local v0       #buttonId:I
    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private formatAttendees(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoFragment$Attendee;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1026
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1063
    :goto_0
    :pswitch_0
    return-void

    .line 1030
    :cond_0
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1031
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 1033
    :goto_1
    if-nez v1, :cond_1

    .line 1034
    add-int/lit8 v0, v0, 0x2

    .line 1037
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/EventInfoFragment$Attendee;

    .line 1038
    if-eqz v1, :cond_3

    move v1, v4

    .line 1044
    :goto_3
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 1045
    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_2
    move v1, v4

    .line 1031
    goto :goto_1

    .line 1041
    :cond_3
    const-string v3, ", "

    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 1048
    :cond_4
    packed-switch p3, :pswitch_data_0

    .line 1059
    :goto_4
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x666667

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x22

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 1052
    :pswitch_1
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 1048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getResponseFromButtonId(I)I
    .locals 1
    .parameter "buttonId"

    .prologue
    .line 752
    packed-switch p0, :pswitch_data_0

    .line 763
    const/4 v0, 0x0

    .line 765
    .local v0, response:I
    :goto_0
    return v0

    .line 754
    .end local v0           #response:I
    :pswitch_0
    const/4 v0, 0x1

    .line 755
    .restart local v0       #response:I
    goto :goto_0

    .line 757
    .end local v0           #response:I
    :pswitch_1
    const/4 v0, 0x4

    .line 758
    .restart local v0       #response:I
    goto :goto_0

    .line 760
    .end local v0           #response:I
    :pswitch_2
    const/4 v0, 0x2

    .line 761
    .restart local v0       #response:I
    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e006a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initAttendeesCursor(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 524
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 525
    iput-wide v7, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 526
    iput v5, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 527
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 528
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    .line 529
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 530
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 531
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 533
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 536
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 537
    .local v2, status:I
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, email:Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    .line 543
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 562
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 565
    invoke-direct {p0, p1}, Lcom/android/calendar/EventInfoFragment;->updateAttendees(Landroid/view/View;)V

    .line 568
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #status:I
    :cond_1
    return-void

    .line 548
    .restart local v0       #email:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #status:I
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 559
    :pswitch_0
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/EventInfoFragment$Attendee;

    invoke-direct {v4, v1, v0}, Lcom/android/calendar/EventInfoFragment$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :pswitch_1
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/EventInfoFragment$Attendee;

    invoke-direct {v4, v1, v0}, Lcom/android/calendar/EventInfoFragment$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :pswitch_2
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/EventInfoFragment$Attendee;

    invoke-direct {v4, v1, v0}, Lcom/android/calendar/EventInfoFragment$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    :pswitch_3
    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/EventInfoFragment$Attendee;

    invoke-direct {v4, v1, v0}, Lcom/android/calendar/EventInfoFragment$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initEventCursor()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 494
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    .line 501
    :goto_0
    return v1

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 498
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 499
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, rRule:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    move v1, v3

    .line 501
    goto :goto_0

    :cond_2
    move v1, v3

    .line 500
    goto :goto_1
.end method

.method private saveResponse()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 611
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 652
    :goto_0
    return v0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 616
    .local v6, radioGroup:Landroid/widget/RadioGroup;
    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v5

    .line 617
    .local v5, status:I
    if-nez v5, :cond_2

    move v0, v4

    .line 618
    goto :goto_0

    .line 622
    :cond_2
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    if-ne v5, v0, :cond_3

    move v0, v4

    .line 623
    goto :goto_0

    .line 627
    :cond_3
    iget-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    move v0, v4

    .line 628
    goto :goto_0

    .line 631
    :cond_4
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v0, :cond_5

    .line 633
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v0, v8

    .line 634
    goto :goto_0

    .line 638
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v7

    .line 639
    .local v7, whichEvents:I
    packed-switch v7, :pswitch_data_0

    .line 649
    const-string v0, "EventInfoFragment"

    const-string v1, "Unexpected choice for updating invitation response"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 652
    goto :goto_0

    :pswitch_0
    move v0, v4

    .line 641
    goto :goto_0

    .line 643
    :pswitch_1
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->createExceptionResponse(JJI)V

    move v0, v8

    .line 644
    goto :goto_0

    .line 646
    :pswitch_2
    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventInfoFragment;->updateResponse(JJI)V

    move v0, v8

    .line 647
    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendAccessibilityEvent()V
    .locals 7

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 918
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    :goto_0
    return-void

    .line 922
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 923
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 924
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 925
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    .line 927
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;)V

    .line 928
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendar:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;)V

    .line 929
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWhen:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;)V

    .line 930
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;)V

    .line 931
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWhat:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;)V

    .line 932
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendees:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lcom/android/calendar/EventInfoFragment;->addFieldToAccessibilityEvent(Ljava/util/List;Landroid/widget/TextView;)V

    .line 934
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0e0069

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 935
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 936
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    .line 937
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0e0068

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    check-cast p0, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0
.end method

.method private sendAccessibilityEventIfQueryDone(I)V
    .locals 2
    .parameter "token"

    .prologue
    .line 324
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    .line 325
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mCurrentQuery:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEvent()V

    .line 328
    :cond_0
    return-void
.end method

.method private setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 1101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1102
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setVisibilityCommon(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 1108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1109
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :cond_0
    return-void
.end method

.method private updateAttendees(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1005
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendees:Landroid/widget/TextView;

    .line 1006
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1007
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v1, v6}, Lcom/android/calendar/EventInfoFragment;->formatAttendees(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;I)V

    .line 1008
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mDeclinedAttendees:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v1, v3}, Lcom/android/calendar/EventInfoFragment;->formatAttendees(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;I)V

    .line 1009
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mTentativeAttendees:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v3}, Lcom/android/calendar/EventInfoFragment;->formatAttendees(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;I)V

    .line 1010
    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v1, v5}, Lcom/android/calendar/EventInfoFragment;->formatAttendees(Ljava/util/ArrayList;Landroid/text/SpannableStringBuilder;I)V

    .line 1012
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1016
    invoke-virtual {v1, v5, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1017
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, " "

    invoke-virtual {v1, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1018
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1021
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    :cond_0
    return-void
.end method

.method private updateCalendar(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v10, 0xa

    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 958
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 959
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 960
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 961
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 962
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 963
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    .line 965
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 968
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "displayName=?"

    new-array v6, v8, [Ljava/lang/String;

    aput-object v7, v6, v9

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 973
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    .line 974
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAttendeeData:Z

    .line 975
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_5

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    .line 977
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_6

    move v0, v8

    :goto_3
    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    .line 981
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-static {v0}, Lcom/android/calendar/event/EditEventHelper;->isPCSyncAccount(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPCSyncAccount:Z

    .line 984
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 986
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 987
    new-instance v1, Lcom/android/calendar/EventInfoFragment$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/EventInfoFragment$5;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-nez v0, :cond_2

    .line 996
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1002
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v0, v9

    .line 963
    goto/16 :goto_0

    :cond_4
    move v0, v9

    .line 974
    goto :goto_1

    :cond_5
    move v0, v9

    .line 975
    goto :goto_2

    :cond_6
    move v0, v9

    .line 977
    goto :goto_3

    .line 999
    :cond_7
    const v0, 0x7f0e0028

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1000
    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoFragment;->sendAccessibilityEventIfQueryDone(I)V

    goto :goto_4
.end method

.method private updateEvent(Landroid/view/View;)V
    .locals 22
    .parameter "view"

    .prologue
    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 802
    .local v13, eventName:Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 803
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 806
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move v10, v4

    .line 807
    .local v10, allDay:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 808
    .local v15, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 809
    .local v12, description:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 810
    .local v17, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v5, 0xb

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const v5, -0x44000001

    and-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/EventInfoFragment;->mColor:I

    .line 812
    const v4, 0x7f0e0024

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EventInfoFragment;->mColor:I

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v5, 0xf

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 820
    .local v19, syncAccountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v5, 0xe

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 821
    .local v16, originalEvent:Ljava/lang/String;
    if-eqz v16, :cond_4

    invoke-static/range {v19 .. v19}, Lcom/android/calendar/event/EditEventHelper;->isPCSyncAccount(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 822
    const v4, 0x7f0e0080

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 828
    :cond_4
    if-eqz v13, :cond_5

    .line 829
    const v4, 0x7f0e0007

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 834
    :cond_5
    const/16 v9, 0x10

    .line 835
    .local v9, flags:I
    if-eqz v10, :cond_b

    .line 836
    or-int/lit16 v9, v9, 0x2002

    .line 843
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v21

    .line 844
    .local v21, when:Ljava/lang/String;
    const v4, 0x7f0e0008

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 868
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 869
    new-instance v14, Landroid/pim/EventRecurrence;

    invoke-direct {v14}, Landroid/pim/EventRecurrence;-><init>()V

    .line 870
    .local v14, eventRecurrence:Landroid/pim/EventRecurrence;
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 871
    new-instance v11, Landroid/text/format/Time;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mTZUpdater:Ljava/lang/Runnable;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 872
    .local v11, date:Landroid/text/format/Time;
    if-eqz v10, :cond_7

    .line 873
    const-string v4, "UTC"

    iput-object v4, v11, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 875
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    move-wide v4, v0

    invoke-virtual {v11, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 876
    invoke-virtual {v14, v11}, Landroid/pim/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v14}, Lcom/android/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Landroid/pim/EventRecurrence;)Ljava/lang/String;

    move-result-object v18

    .line 879
    .local v18, repeatString:Ljava/lang/String;
    const v4, 0x7f0e007d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 880
    const v4, 0x7f0e007c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 886
    .end local v11           #date:Landroid/text/format/Time;
    .end local v14           #eventRecurrence:Landroid/pim/EventRecurrence;
    .end local v18           #repeatString:Ljava/lang/String;
    :goto_3
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    .line 887
    :cond_8
    const v4, 0x7f0e0009

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 911
    :cond_9
    :goto_4
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 912
    const v4, 0x7f0e005a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setTextCommon(Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 806
    .end local v9           #flags:I
    .end local v10           #allDay:Z
    .end local v12           #description:Ljava/lang/String;
    .end local v15           #location:Ljava/lang/String;
    .end local v16           #originalEvent:Ljava/lang/String;
    .end local v17           #rRule:Ljava/lang/String;
    .end local v19           #syncAccountType:Ljava/lang/String;
    .end local v21           #when:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_1

    .line 838
    .restart local v9       #flags:I
    .restart local v10       #allDay:Z
    .restart local v12       #description:Ljava/lang/String;
    .restart local v15       #location:Ljava/lang/String;
    .restart local v16       #originalEvent:Ljava/lang/String;
    .restart local v17       #rRule:Ljava/lang/String;
    .restart local v19       #syncAccountType:Ljava/lang/String;
    :cond_b
    or-int/lit8 v9, v9, 0x1

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 840
    or-int/lit16 v9, v9, 0x80

    goto/16 :goto_2

    .line 882
    .restart local v21       #when:Ljava/lang/String;
    :cond_c
    const v4, 0x7f0e007c

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    goto :goto_3

    .line 889
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    move-object/from16 v20, v0

    .line 890
    .local v20, textView:Landroid/widget/TextView;
    if-eqz v20, :cond_9

    .line 891
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 892
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    const/16 v4, 0xb

    move-object/from16 v0, v20

    move v1, v4

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoFragment;->mWildcardPattern:Ljava/util/regex/Pattern;

    move-object v4, v0

    const-string v5, "geo:0,0?q="

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 897
    :cond_e
    new-instance v4, Lcom/android/calendar/EventInfoFragment$4;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EventInfoFragment$4;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4
.end method

.method private updateResponse(JJI)V
    .locals 9
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 658
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 660
    .local v4, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    const-string v0, "attendeeEmail"

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_0
    const-string v0, "attendeeStatus"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    const-string v0, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 666
    sget-object v0, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 668
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-virtual {v1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->getNextToken()I

    move-result v1

    const-wide/16 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 670
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 481
    .local v0, res:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 1173
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1178
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v3, 0x80

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 358
    if-eqz p1, :cond_0

    .line 359
    const-string v0, "key_fragment_is_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    if-eqz v0, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->applyDialogParams()V

    .line 365
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 424
    new-instance v0, Lcom/android/calendar/EditResponseHelper;

    invoke-direct {v0, p1}, Lcom/android/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    .line 425
    new-instance v0, Lcom/android/calendar/EventInfoFragment$QueryHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    .line 426
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsRepeating:Z

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 431
    const v0, 0x7f04001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    .line 432
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;

    .line 433
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWhen:Landroid/widget/TextView;

    .line 434
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWhere:Landroid/widget/TextView;

    .line 435
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mWhat:Landroid/widget/TextView;

    .line 436
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendees:Landroid/widget/TextView;

    .line 437
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendar:Landroid/widget/TextView;

    .line 439
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 441
    const-string v0, "key_event_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    .line 442
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    .line 443
    const-string v0, "key_start_millis"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    .line 444
    const-string v0, "key_end_millis"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 452
    .local v8, b:Landroid/widget/Button;
    new-instance v0, Lcom/android/calendar/EventInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoFragment$2;-><init>(Lcom/android/calendar/EventInfoFragment;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_2
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 601
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/calendar/EventInfoFragment;->saveResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a002a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 586
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 587
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 1154
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1155
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 1156
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1160
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 1161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPaused:Z

    .line 1162
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mDismissOnResume:Z

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment;->mHandler:Lcom/android/calendar/EventInfoFragment$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment;->onDeleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 1165
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 573
    const-string v0, "key_event_id"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEventId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 574
    const-string v0, "key_start_millis"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mStartMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 575
    const-string v0, "key_end_millis"

    iget-wide v1, p0, Lcom/android/calendar/EventInfoFragment;->mEndMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 577
    const-string v0, "key_fragment_is_dialog"

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 578
    return-void
.end method

.method public setDialogParams(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsDialog:Z

    .line 394
    iput p1, p0, Lcom/android/calendar/EventInfoFragment;->mX:I

    .line 395
    iput p2, p0, Lcom/android/calendar/EventInfoFragment;->mY:I

    .line 396
    return-void
.end method

.method updateResponse(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0e007e

    .line 1078
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mCanModifyCalendar:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mHasAttendeeData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mNumOfAttendees:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsOrganizer:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mOwnerCanRespond:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoFragment;->mIsPCSyncAccount:Z

    if-eqz v0, :cond_3

    .line 1080
    :cond_2
    const/16 v0, 0x8

    invoke-direct {p0, p1, v2, v0}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1098
    :goto_0
    return-void

    .line 1084
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V

    .line 1088
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1089
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mAttendeeResponseFromIntent:I

    .line 1094
    :goto_1
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v1

    .line 1095
    const v0, 0x7f0e0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 1096
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 1097
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_0

    .line 1091
    :cond_4
    iget v0, p0, Lcom/android/calendar/EventInfoFragment;->mOriginalAttendeeResponse:I

    goto :goto_1
.end method
