.class Lcom/android/calendar/DayView$GotoBroadcaster;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GotoBroadcaster"
.end annotation


# instance fields
.field private final mCounter:I

.field private final mEnd:Landroid/text/format/Time;

.field private final mStart:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/DayView;Landroid/text/format/Time;Landroid/text/format/Time;)V
    .locals 1
    .parameter
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1530
    invoke-static {}, Lcom/android/calendar/DayView;->access$604()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mCounter:I

    .line 1531
    iput-object p2, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mStart:Landroid/text/format/Time;

    .line 1532
    iput-object p3, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mEnd:Landroid/text/format/Time;

    .line 1533
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 15
    .parameter "animation"

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$700(Lcom/android/calendar/DayView;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/DayView;

    .line 1538
    .local v14, view:Lcom/android/calendar/DayView;
    const/4 v0, 0x0

    invoke-static {v14, v0}, Lcom/android/calendar/DayView;->access$802(Lcom/android/calendar/DayView;I)I

    .line 1539
    iget-object v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$700(Lcom/android/calendar/DayView;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v14

    .end local v14           #view:Lcom/android/calendar/DayView;
    check-cast v14, Lcom/android/calendar/DayView;

    .line 1540
    .restart local v14       #view:Lcom/android/calendar/DayView;
    const/4 v0, 0x0

    invoke-static {v14, v0}, Lcom/android/calendar/DayView;->access$802(Lcom/android/calendar/DayView;I)I

    .line 1542
    iget v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mCounter:I

    invoke-static {}, Lcom/android/calendar/DayView;->access$600()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v0}, Lcom/android/calendar/DayView;->access$900(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    const-wide/16 v2, 0x20

    iget-object v4, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mStart:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/DayView$GotoBroadcaster;->mEnd:Landroid/text/format/Time;

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1546
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1550
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1554
    return-void
.end method
