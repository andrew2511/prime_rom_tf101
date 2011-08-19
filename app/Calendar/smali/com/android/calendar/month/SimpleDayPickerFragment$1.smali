.class Lcom/android/calendar/month/SimpleDayPickerFragment$1;
.super Ljava/lang/Object;
.source "SimpleDayPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/SimpleDayPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$1;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    new-instance v2, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$1;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v5, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    iget-object v5, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, midnight:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 132
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 134
    .local v0, currentMillis:J
    iput v6, v2, Landroid/text/format/Time;->hour:I

    .line 135
    iput v6, v2, Landroid/text/format/Time;->minute:I

    .line 136
    iput v6, v2, Landroid/text/format/Time;->second:I

    .line 137
    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 138
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    sub-long v3, v5, v0

    .line 139
    .local v3, millisToMidnight:J
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$1;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v5, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$1;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v5, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-eqz v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$1;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v5, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v5}, Lcom/android/calendar/month/SimpleWeeksAdapter;->notifyDataSetChanged()V

    .line 144
    :cond_0
    return-void
.end method
