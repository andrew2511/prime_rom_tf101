.class public Lcom/android/calendar/CalendarController$EventInfo;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public endTime:Landroid/text/format/Time;

.field public eventType:J

.field public extraLong:J

.field public id:J

.field public query:Ljava/lang/String;

.field public selectedTime:Landroid/text/format/Time;

.field public startTime:Landroid/text/format/Time;

.field public viewType:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
