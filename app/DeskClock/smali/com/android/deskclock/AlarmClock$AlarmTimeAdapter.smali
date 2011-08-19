.class Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmTimeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    .line 73
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 74
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 88
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, p3}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 90
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    const v8, 0x7f0e0009

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 93
    .local v6, indicator:Landroid/view/View;
    const v8, 0x7f0e000a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 95
    .local v2, clockOnOff:Landroid/widget/CheckBox;
    iget-boolean v8, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    new-instance v8, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter$1;

    invoke-direct {v8, p0, v2, v0}, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter$1;-><init>(Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;Landroid/widget/CheckBox;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v8, 0x7f0e000b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/DigitalClock;

    .line 109
    .local v5, digitalClock:Lcom/android/deskclock/DigitalClock;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 110
    .local v1, c:Ljava/util/Calendar;
    const/16 v8, 0xb

    iget v9, v0, Lcom/android/deskclock/Alarm;->hour:I

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/16 v8, 0xc

    iget v9, v0, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 112
    invoke-virtual {v5, v1}, Lcom/android/deskclock/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 115
    const v8, 0x7f0e000d

    invoke-virtual {v5, v8}, Lcom/android/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 117
    .local v4, daysOfWeekView:Landroid/widget/TextView;
    iget-object v8, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v9, p0, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-virtual {v8, v9, v10}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, daysOfWeekStr:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 120
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_0
    const v8, 0x7f0e000c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 129
    .local v7, labelView:Landroid/widget/TextView;
    iget-object v8, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 130
    iget-object v8, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :goto_1
    return-void

    .line 123
    .end local v7           #labelView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 133
    .restart local v7       #labelView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    invoke-static {v2}, Lcom/android/deskclock/AlarmClock;->access$000(Lcom/android/deskclock/AlarmClock;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040002

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, ret:Landroid/view/View;
    const v2, 0x7f0e000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DigitalClock;

    .line 82
    .local v0, digitalClock:Lcom/android/deskclock/DigitalClock;
    invoke-virtual {v0, v4}, Lcom/android/deskclock/DigitalClock;->setLive(Z)V

    .line 83
    return-object v1
.end method
