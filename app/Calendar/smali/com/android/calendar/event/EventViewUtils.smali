.class public Lcom/android/calendar/event/EventViewUtils;
.super Ljava/lang/Object;
.source "EventViewUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 101
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 120
    .end local p0
    :goto_0
    return-void

    .line 108
    .restart local p0
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, p3, v4}, Lcom/android/calendar/event/EventViewUtils;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, label:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 110
    .local v3, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p3, v4, :cond_1

    .line 112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    invoke-virtual {p2, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p2, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static addReminder(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter "activity"
    .parameter "view"
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 130
    const/4 p0, 0x0

    .line 156
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 133
    .restart local p0
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 134
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0e005f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/LinearLayout;

    .line 135
    .local p1, parent:Landroid/widget/LinearLayout;
    const v1, 0x7f040019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 137
    .local v0, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    const p1, 0x7f0e0077

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .end local p1           #parent:Landroid/widget/LinearLayout;
    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 140
    .local v2, spinner:Landroid/widget/Spinner;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 141
    .local p1, res:Landroid/content/res/Resources;
    const v1, 0x7f0a003a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1           #res:Landroid/content/res/Resources;
    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 142
    const v1, 0x1090008

    .line 143
    .local v1, resource:I
    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-direct {p1, p0, v1, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 144
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const p0, 0x1090009

    invoke-virtual {p1, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 145
    .end local p0
    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 148
    const p0, 0x7f0e0078

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    .line 149
    .local p0, reminderRemoveButton:Landroid/widget/ImageButton;
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-static {p4, p6}, Lcom/android/calendar/event/EventViewUtils;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result p0

    .line 152
    .local p0, index:I
    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 154
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 p0, 0x1

    goto :goto_0
.end method

.method public static constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "minutes"
    .parameter "abbrev"

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 46
    .local v2, resources:Landroid/content/res/Resources;
    rem-int/lit8 v4, p1, 0x3c

    if-eqz v4, :cond_1

    .line 47
    move v3, p1

    .line 48
    .local v3, value:I
    if-eqz p2, :cond_0

    .line 49
    const v1, 0x7f0b0001

    .line 61
    .local v1, resId:I
    :goto_0
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, format:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 51
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_0
    const/high16 v1, 0x7f0b

    .restart local v1       #resId:I
    goto :goto_0

    .line 53
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_1
    rem-int/lit16 v4, p1, 0x5a0

    if-eqz v4, :cond_2

    .line 54
    div-int/lit8 v3, p1, 0x3c

    .line 55
    .restart local v3       #value:I
    const v1, 0x7f0b0002

    .restart local v1       #resId:I
    goto :goto_0

    .line 57
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_2
    div-int/lit16 v3, p1, 0x5a0

    .line 58
    .restart local v3       #value:I
    const v1, 0x7f0b0003

    .restart local v1       #resId:I
    goto :goto_0
.end method

.method public static findMinutesInReminderList(Ljava/util/ArrayList;I)I
    .locals 4
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 74
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 76
    const-string v1, "Cal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find minutes ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public static reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, reminderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p1, reminderValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 85
    .local v2, len:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v4, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 88
    .local v1, layout:Landroid/widget/LinearLayout;
    const v6, 0x7f0e0077

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 89
    .local v5, spinner:Landroid/widget/Spinner;
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 90
    .local v3, minutes:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1           #layout:Landroid/widget/LinearLayout;
    .end local v3           #minutes:I
    .end local v5           #spinner:Landroid/widget/Spinner;
    :cond_0
    return-object v4
.end method
