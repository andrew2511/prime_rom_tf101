.class Lcom/android/calendar/month/SimpleDayPickerFragment$2;
.super Landroid/database/DataSetObserver;
.source "SimpleDayPickerFragment.java"


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
    .line 148
    iput-object p1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$2;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 151
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$2;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v0, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v6

    .line 152
    .local v6, day:Landroid/text/format/Time;
    iget v0, v6, Landroid/text/format/Time;->year:I

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$2;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, v6, Landroid/text/format/Time;->yearDay:I

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$2;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v1, v1, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v0, v1, :cond_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$2;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    invoke-virtual {v6, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)V

    .line 155
    :cond_1
    return-void
.end method
