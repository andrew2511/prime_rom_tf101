.class public Lcom/android/deskclock/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DigitalClock$FormatChangeObserver;,
        Lcom/android/deskclock/DigitalClock$AmPm;
    }
.end annotation


# instance fields
.field private mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Lcom/android/deskclock/AndroidClockTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/android/deskclock/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DigitalClock$1;-><init>(Lcom/android/deskclock/DigitalClock;)V

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mFormat:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/deskclock/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 178
    return-void

    .line 176
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 171
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mTimeDisplay:Lcom/android/deskclock/AndroidClockTextView;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/AndroidClockTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    iget-object v2, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/deskclock/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 173
    return-void

    .line 172
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 121
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 125
    iget-boolean v1, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 126
    :cond_0
    iput-boolean v4, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    .line 128
    iget-boolean v1, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/android/deskclock/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/deskclock/DigitalClock$FormatChangeObserver;-><init>(Lcom/android/deskclock/DigitalClock;)V

    iput-object v1, p0, Lcom/android/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 139
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 149
    iget-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mAttached:Z

    .line 152
    iget-boolean v0, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 112
    const/high16 v0, 0x7f0e

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/AndroidClockTextView;

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mTimeDisplay:Lcom/android/deskclock/AndroidClockTextView;

    .line 113
    new-instance v0, Lcom/android/deskclock/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mAmPm:Lcom/android/deskclock/DigitalClock$AmPm;

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 116
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->setDateFormat()V

    .line 117
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/deskclock/DigitalClock;->mLive:Z

    .line 182
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 162
    invoke-direct {p0}, Lcom/android/deskclock/DigitalClock;->updateTime()V

    .line 163
    return-void
.end method
