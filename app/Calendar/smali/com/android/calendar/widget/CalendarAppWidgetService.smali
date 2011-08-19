.class public Lcom/android/calendar/widget/CalendarAppWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "CalendarAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;
    }
.end annotation


# static fields
.field static final EVENT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "color"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 107
    return-void
.end method

.method static formatDebugTime(JJ)Ljava/lang/String;
    .locals 11
    .parameter "unixTime"
    .parameter "now"

    .prologue
    const-wide/32 v9, 0xea60

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 468
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 469
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 471
    sub-long v0, p0, p2

    .line 472
    .local v0, delta:J
    cmp-long v3, v0, v9

    if-lez v3, :cond_0

    .line 473
    div-long/2addr v0, v9

    .line 474
    const-string v3, "[%d] %s (%+d mins)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 478
    :goto_0
    return-object v3

    .line 477
    :cond_0
    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 478
    const-string v3, "[%d] %s (%+d secs)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .parameter "intent"

    .prologue
    .line 104
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
