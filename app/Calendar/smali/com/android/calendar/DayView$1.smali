.class Lcom/android/calendar/DayView$1;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/calendar/DayView$1;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/calendar/DayView$1;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, v1, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/DayView$1;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, v1, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/android/calendar/DayView$1;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, v1, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 188
    iget-object v1, p0, Lcom/android/calendar/DayView$1;->this$0:Lcom/android/calendar/DayView;

    invoke-static {v1}, Lcom/android/calendar/DayView;->access$100(Lcom/android/calendar/DayView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/calendar/DayView$1;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v1}, Lcom/android/calendar/DayView;->invalidate()V

    .line 190
    return-void
.end method
