.class public Lcom/google/android/gm/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/NumberPicker$NumberRangeKeyListener;,
        Lcom/google/android/gm/NumberPicker$NumberPickerInputFilter;,
        Lcom/google/android/gm/NumberPicker$Formatter;,
        Lcom/google/android/gm/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Lcom/google/android/gm/NumberPicker$Formatter;


# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lcom/google/android/gm/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mEnd:I

.field private mFormatter:Lcom/google/android/gm/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lcom/google/android/gm/NumberPickerButton;

.field private mListener:Lcom/google/android/gm/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/gm/NumberPicker$1;

    invoke-direct {v0}, Lcom/google/android/gm/NumberPicker$1;-><init>()V

    sput-object v0, Lcom/google/android/gm/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/google/android/gm/NumberPicker$Formatter;

    .line 399
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gm/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v5, Lcom/google/android/gm/NumberPicker$2;

    invoke-direct {v5, p0}, Lcom/google/android/gm/NumberPicker$2;-><init>(Lcom/google/android/gm/NumberPicker;)V

    iput-object v5, p0, Lcom/google/android/gm/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 121
    const-wide/16 v5, 0x12c

    iput-wide v5, p0, Lcom/google/android/gm/NumberPicker;->mSpeed:J

    .line 141
    invoke-virtual {p0, v7}, Lcom/google/android/gm/NumberPicker;->setOrientation(I)V

    .line 142
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 144
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040023

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/google/android/gm/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/google/android/gm/NumberPicker$3;

    invoke-direct {v0, p0}, Lcom/google/android/gm/NumberPicker$3;-><init>(Lcom/google/android/gm/NumberPicker;)V

    .line 161
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    new-instance v1, Lcom/google/android/gm/NumberPicker$4;

    invoke-direct {v1, p0}, Lcom/google/android/gm/NumberPicker$4;-><init>(Lcom/google/android/gm/NumberPicker;)V

    .line 173
    .local v1, focusListener:Landroid/view/View$OnFocusChangeListener;
    new-instance v4, Lcom/google/android/gm/NumberPicker$5;

    invoke-direct {v4, p0}, Lcom/google/android/gm/NumberPicker$5;-><init>(Lcom/google/android/gm/NumberPicker;)V

    .line 195
    .local v4, longClickListener:Landroid/view/View$OnLongClickListener;
    new-instance v3, Lcom/google/android/gm/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v3, p0, v9}, Lcom/google/android/gm/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/google/android/gm/NumberPicker;Lcom/google/android/gm/NumberPicker$1;)V

    .line 196
    .local v3, inputFilter:Landroid/text/InputFilter;
    new-instance v5, Lcom/google/android/gm/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v5, p0, v9}, Lcom/google/android/gm/NumberPicker$NumberRangeKeyListener;-><init>(Lcom/google/android/gm/NumberPicker;Lcom/google/android/gm/NumberPicker$1;)V

    iput-object v5, p0, Lcom/google/android/gm/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 197
    const v5, 0x7f0e0065

    invoke-virtual {p0, v5}, Lcom/google/android/gm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/NumberPickerButton;

    iput-object v5, p0, Lcom/google/android/gm/NumberPicker;->mIncrementButton:Lcom/google/android/gm/NumberPickerButton;

    .line 198
    iget-object v5, p0, Lcom/google/android/gm/NumberPicker;->mIncrementButton:Lcom/google/android/gm/NumberPickerButton;

    invoke-virtual {v5, v0}, Lcom/google/android/gm/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v5, p0, Lcom/google/android/gm/NumberPicker;->mIncrementButton:Lcom/google/android/gm/NumberPickerButton;

    invoke-virtual {v5, v4}, Lcom/google/android/gm/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    iget-object v5, p0, Lcom/google/android/gm/NumberPicker;->mIncrementButton:Lcom/google/android/gm/NumberPickerButton;

    invoke-virtual {v5, p0}, Lcom/google/android/gm/NumberPickerButton;->setNumberPicker(Lcom/google/android/gm/NumberPicker;)V

    .line 202
    const v5, 0x7f0e0067

    invoke-virtual {p0, v5}, Lcom/google/android/gm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/NumberPickerButton;

    iput-object v5, p0, Lcom/google/android/gm/NumberPicker;->mDecrementButton:Lcom/google/android/gm/NumberPickerButton;

    .line 203
    iget-object v5, p0, Lcom/google/android/gm/NumberPicker;->mDecrementButton:Lcom/google/android/gm/NumberPickerButton;

    invoke-virtual {v5, v0}, Lcom/google/android/gm/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v5, p0, Lcom/google/android/gm/NumberPicker;->mDecrementButton:Lcom/google/android/gm/NumberPickerButton;

    invoke-virtual {v5, v4}, Lcom/google/android/gm/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 205
    iget-object v5, p0, Lcom/google/android/gm/NumberPicker;->mDecrementButton:Lcom/google/android/gm/NumberPickerButton;

    invoke-virtual {v5, p0}, Lcom/google/android/gm/NumberPickerButton;->setNumberPicker(Lcom/google/android/gm/NumberPicker;)V

    .line 207
    const v5, 0x7f0e0066

    invoke-virtual {p0, v5}, Lcom/google/android/gm/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    .line 208
    iget-object v5, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 209
    iget-object v5, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v6, v7, [Landroid/text/InputFilter;

    aput-object v3, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 210
    iget-object v5, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gm/NumberPicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    invoke-virtual {p0, v8}, Lcom/google/android/gm/NumberPicker;->setEnabled(Z)V

    .line 215
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/gm/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/gm/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/gm/NumberPicker;->mIncrement:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/gm/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/gm/NumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$1200()[C
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/gm/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/gm/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gm/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/gm/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/gm/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/gm/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/NumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/gm/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/gm/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/gm/NumberPicker;->mDecrement:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/gm/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gm/NumberPicker;->validateInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gm/NumberPicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mFormatter:Lcom/google/android/gm/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mFormatter:Lcom/google/android/gm/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/google/android/gm/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/google/android/gm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 473
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 494
    :goto_0
    return v1

    .line 475
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/gm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 479
    iget-object v1, p0, Lcom/google/android/gm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    iget v1, p0, Lcom/google/android/gm/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 475
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 494
    iget v1, p0, Lcom/google/android/gm/NumberPicker;->mStart:I

    goto :goto_0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mListener:Lcom/google/android/gm/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mListener:Lcom/google/android/gm/NumberPicker$OnChangedListener;

    iget v1, p0, Lcom/google/android/gm/NumberPicker;->mPrevious:I

    iget v2, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/gm/NumberPicker$OnChangedListener;->onChanged(Lcom/google/android/gm/NumberPicker;II)V

    .line 339
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Lcom/google/android/gm/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 358
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    iget v3, p0, Lcom/google/android/gm/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 361
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gm/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 362
    .local v0, val:I
    iget v1, p0, Lcom/google/android/gm/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gm/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_0

    .line 363
    iget v1, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_0

    .line 364
    iget v1, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    iput v1, p0, Lcom/google/android/gm/NumberPicker;->mPrevious:I

    .line 365
    iput v0, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    .line 366
    invoke-direct {p0}, Lcom/google/android/gm/NumberPicker;->notifyChange()V

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/NumberPicker;->updateView()V

    .line 370
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 373
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/google/android/gm/NumberPicker;->updateView()V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gm/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/NumberPicker;->mDecrement:Z

    .line 397
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/NumberPicker;->mIncrement:Z

    .line 390
    return-void
.end method

.method protected changeCurrent(I)V
    .locals 1
    .parameter "current"

    .prologue
    .line 320
    iget v0, p0, Lcom/google/android/gm/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 321
    iget p1, p0, Lcom/google/android/gm/NumberPicker;->mStart:I

    .line 325
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    iput v0, p0, Lcom/google/android/gm/NumberPicker;->mPrevious:I

    .line 326
    iput p1, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    .line 327
    invoke-direct {p0}, Lcom/google/android/gm/NumberPicker;->notifyChange()V

    .line 328
    invoke-direct {p0}, Lcom/google/android/gm/NumberPicker;->updateView()V

    .line 329
    return-void

    .line 322
    :cond_1
    iget v0, p0, Lcom/google/android/gm/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 323
    iget p1, p0, Lcom/google/android/gm/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    return v0
.end method

.method public setCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/gm/NumberPicker;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current should be >= start and <= end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    iput p1, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    .line 289
    invoke-direct {p0}, Lcom/google/android/gm/NumberPicker;->updateView()V

    .line 290
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mIncrementButton:Lcom/google/android/gm/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/NumberPickerButton;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mDecrementButton:Lcom/google/android/gm/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/NumberPickerButton;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/google/android/gm/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 229
    return-void
.end method

.method public setOnChangeListener(Lcom/google/android/gm/NumberPicker$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/gm/NumberPicker;->mListener:Lcom/google/android/gm/NumberPicker$OnChangedListener;

    .line 237
    return-void
.end method

.method public setRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gm/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 269
    iput-object p3, p0, Lcom/google/android/gm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 270
    iput p1, p0, Lcom/google/android/gm/NumberPicker;->mStart:I

    .line 271
    iput p2, p0, Lcom/google/android/gm/NumberPicker;->mEnd:I

    .line 272
    iput p1, p0, Lcom/google/android/gm/NumberPicker;->mCurrent:I

    .line 273
    invoke-direct {p0}, Lcom/google/android/gm/NumberPicker;->updateView()V

    .line 274
    return-void
.end method
