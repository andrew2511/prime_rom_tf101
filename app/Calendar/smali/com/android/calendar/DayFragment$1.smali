.class Lcom/android/calendar/DayFragment$1;
.super Ljava/lang/Object;
.source "DayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/calendar/DayFragment$1;->this$0:Lcom/android/calendar/DayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/calendar/DayFragment$1;->this$0:Lcom/android/calendar/DayFragment;

    invoke-virtual {v1}, Lcom/android/calendar/DayFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/DayFragment$1;->this$0:Lcom/android/calendar/DayFragment;

    invoke-virtual {v1}, Lcom/android/calendar/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/DayFragment$1;->this$0:Lcom/android/calendar/DayFragment;

    invoke-static {v2}, Lcom/android/calendar/DayFragment;->access$000(Lcom/android/calendar/DayFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/DayFragment$1;->this$0:Lcom/android/calendar/DayFragment;

    iget-object v1, v1, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/android/calendar/DayFragment$1;->this$0:Lcom/android/calendar/DayFragment;

    iget-object v1, v1, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method
