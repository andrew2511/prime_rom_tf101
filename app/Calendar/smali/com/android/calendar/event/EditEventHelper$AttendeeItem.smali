.class public Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
.super Ljava/lang/Object;
.source "EditEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttendeeItem"
.end annotation


# instance fields
.field public mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

.field public mBadge:Landroid/graphics/drawable/Drawable;

.field public mPresence:I

.field public mRemoved:Z

.field public mUpdateCounts:I

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarEventModel$Attendee;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "attendee"
    .parameter "presence"
    .parameter "badge"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 223
    iput p2, p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mPresence:I

    .line 224
    iput-object p3, p0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 225
    return-void
.end method
