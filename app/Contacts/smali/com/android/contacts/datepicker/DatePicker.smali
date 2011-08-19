.class public Lcom/android/contacts/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePicker$SavedState;,
        Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;
    }
.end annotation


# instance fields
.field private mDay:I

.field private final mDayPicker:Landroid/widget/NumberPicker;

.field private mHasYear:Z

.field private mMonth:I

.field private final mMonthPicker:Landroid/widget/NumberPicker;

.field private mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

.field private mYear:I

.field private mYearOptional:Z

.field private final mYearPicker:Landroid/widget/NumberPicker;

.field private final mYearToggle:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 105
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040019

    const/4 v9, 0x1

    invoke-virtual {v4, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 107
    const v8, 0x7f070061

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 108
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v9, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 109
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 110
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$1;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$1;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 116
    const v8, 0x7f070060

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 117
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v9, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 118
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 119
    .local v2, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, months:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 127
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 128
    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 131
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 138
    .end local v3           #i:I
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0xc8

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 139
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$2;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$2;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 152
    const v8, 0x7f070062

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 153
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 154
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$3;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$3;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 164
    const v8, 0x7f07005e

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    .line 165
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/contacts/datepicker/DatePicker$4;

    invoke-direct {v9, p0}, Lcom/android/contacts/datepicker/DatePicker$4;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    sget-object v8, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x1

    const/16 v9, 0x76c

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 181
    .local v6, mStartYear:I
    const/4 v8, 0x2

    const/16 v9, 0x834

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 183
    .local v5, mEndYear:I
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 184
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 190
    .local v1, cal:Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 193
    invoke-direct {p0, v7}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 196
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePicker;->setEnabled(Z)V

    .line 198
    :cond_1
    return-void

    .line 133
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v5           #mEndYear:I
    .end local v6           #mStartYear:I
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 134
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 135
    iget-object v8, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v7}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic access$002(Lcom/android/contacts/datepicker/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/datepicker/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/contacts/datepicker/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/contacts/datepicker/DatePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method private adjustMaxDay()V
    .locals 4

    .prologue
    .line 465
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 467
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 468
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 469
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 470
    .local v1, max:I
    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-le v2, v1, :cond_0

    .line 471
    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 473
    :cond_0
    return-void

    .line 467
    .end local v1           #max:I
    :cond_1
    const/16 v3, 0x7d0

    goto :goto_0
.end method

.method private getCurrentYear()I
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_0

    .line 477
    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 478
    .local v0, year:I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V

    .line 480
    .end local v0           #year:I
    :cond_0
    return-void

    .line 477
    :cond_1
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    move v0, v1

    goto :goto_0
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 12
    .parameter "months"

    .prologue
    const/4 v11, 0x0

    .line 219
    aget-object v9, p1, v11

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 225
    .local v4, format:Ljava/text/DateFormat;
    :goto_0
    instance-of v9, v4, Ljava/text/SimpleDateFormat;

    if-eqz v9, :cond_3

    .line 226
    check-cast v4, Ljava/text/SimpleDateFormat;

    .end local v4           #format:Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, order:Ljava/lang/String;
    :goto_1
    const v9, 0x7f07005f

    invoke-virtual {p0, v9}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 236
    .local v7, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 238
    const/4 v8, 0x0

    .line 239
    .local v8, quoted:Z
    const/4 v1, 0x0

    .local v1, didDay:Z
    const/4 v2, 0x0

    .local v2, didMonth:Z
    const/4 v3, 0x0

    .line 241
    .local v3, didYear:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 242
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 244
    .local v0, c:C
    const/16 v9, 0x27

    if-ne v0, v9, :cond_0

    .line 245
    if-nez v8, :cond_4

    const/4 v9, 0x1

    move v8, v9

    .line 248
    :cond_0
    :goto_3
    if-nez v8, :cond_1

    .line 249
    const/16 v9, 0x64

    if-ne v0, v9, :cond_5

    if-nez v1, :cond_5

    .line 250
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    const/4 v1, 0x1

    .line 241
    :cond_1
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 222
    .end local v0           #c:C
    .end local v1           #didDay:Z
    .end local v2           #didMonth:Z
    .end local v3           #didYear:Z
    .end local v5           #i:I
    .end local v6           #order:Ljava/lang/String;
    .end local v7           #parent:Landroid/widget/LinearLayout;
    .end local v8           #quoted:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .restart local v4       #format:Ljava/text/DateFormat;
    goto :goto_0

    .line 229
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    .restart local v6       #order:Ljava/lang/String;
    goto :goto_1

    .end local v4           #format:Ljava/text/DateFormat;
    .restart local v0       #c:C
    .restart local v1       #didDay:Z
    .restart local v2       #didMonth:Z
    .restart local v3       #didYear:Z
    .restart local v5       #i:I
    .restart local v7       #parent:Landroid/widget/LinearLayout;
    .restart local v8       #quoted:Z
    :cond_4
    move v8, v11

    .line 245
    goto :goto_3

    .line 252
    :cond_5
    const/16 v9, 0x4d

    if-eq v0, v9, :cond_6

    const/16 v9, 0x4c

    if-ne v0, v9, :cond_7

    :cond_6
    if-nez v2, :cond_7

    .line 253
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    const/4 v2, 0x1

    goto :goto_4

    .line 255
    :cond_7
    const/16 v9, 0x79

    if-ne v0, v9, :cond_1

    if-nez v3, :cond_1

    .line 256
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    const/4 v3, 0x1

    goto :goto_4

    .line 263
    .end local v0           #c:C
    :cond_8
    if-nez v2, :cond_9

    .line 264
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    :cond_9
    if-nez v1, :cond_a

    .line 267
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    :cond_a
    if-nez v3, :cond_b

    .line 270
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    :cond_b
    return-void
.end method

.method private updateDaySpinner()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 439
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 441
    .local v0, cal:Ljava/util/Calendar;
    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 442
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 443
    .local v1, max:I
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 444
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 445
    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 446
    return-void

    .line 441
    .end local v1           #max:I
    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 426
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    .line 427
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 430
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 436
    return-void

    :cond_0
    move v1, v3

    .line 428
    goto :goto_0

    :cond_1
    move v1, v3

    .line 430
    goto :goto_1
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/datepicker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 373
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0
.end method

.method public init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 6
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 403
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 404
    return-void
.end method

.method public init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 2
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "yearOptional"
    .parameter "onDateChangedListener"

    .prologue
    const/4 v1, 0x1

    .line 416
    if-eqz p4, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 417
    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 418
    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 419
    iput-boolean p4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    .line 420
    if-eqz p4, :cond_2

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 421
    iput-object p5, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    .line 422
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 423
    return-void

    :cond_0
    move v0, p1

    .line 416
    goto :goto_0

    .line 420
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isYearOptional()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 384
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    move-object v1, v0

    .line 385
    .local v1, ss:Lcom/android/contacts/datepicker/DatePicker$SavedState;
    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 386
    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getYear()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    .line 387
    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getMonth()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    .line 388
    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getDay()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    .line 389
    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->hasYear()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    .line 390
    invoke-virtual {v1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->isYearOptional()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    .line 391
    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    .line 392
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 377
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 379
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iget-boolean v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    iget-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZLcom/android/contacts/datepicker/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 206
    return-void
.end method
