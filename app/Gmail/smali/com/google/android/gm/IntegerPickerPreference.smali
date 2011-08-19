.class public Lcom/google/android/gm/IntegerPickerPreference;
.super Landroid/preference/DialogPreference;
.source "IntegerPickerPreference.java"


# instance fields
.field private mCaller:Lcom/google/android/gm/LabelsSynchronizationSettings;

.field private mConversationAgeDays:I

.field private mNumberPickerDaysView:Landroid/widget/TextView;

.field private mNumberPickerView:Lcom/google/android/gm/NumberPicker;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/LabelsSynchronizationSettings;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "caller"
    .parameter "attrs"
    .parameter "conversationAgeDays"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Lcom/google/android/gm/IntegerPickerPreference;->mCaller:Lcom/google/android/gm/LabelsSynchronizationSettings;

    .line 27
    iput p3, p0, Lcom/google/android/gm/IntegerPickerPreference;->mConversationAgeDays:I

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gm/LabelsSynchronizationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/google/android/gm/IntegerPickerPreference;->setDialogLayoutResource(I)V

    .line 30
    const v1, 0x7f0d00d5

    invoke-virtual {p0, v1}, Lcom/google/android/gm/IntegerPickerPreference;->setTitle(I)V

    .line 31
    const v1, 0x7f0f001b

    iget v2, p0, Lcom/google/android/gm/IntegerPickerPreference;->mConversationAgeDays:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gm/IntegerPickerPreference;->mConversationAgeDays:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/IntegerPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/IntegerPickerPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/gm/IntegerPickerPreference;->updateDays()V

    return-void
.end method

.method private updateDays()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gm/IntegerPickerPreference;->mNumberPickerDaysView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gm/IntegerPickerPreference;->mCaller:Lcom/google/android/gm/LabelsSynchronizationSettings;

    const v2, 0x7f0f001c

    iget-object v3, p0, Lcom/google/android/gm/IntegerPickerPreference;->mNumberPickerView:Lcom/google/android/gm/NumberPicker;

    invoke-virtual {v3}, Lcom/google/android/gm/NumberPicker;->getCurrent()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 46
    const v0, 0x7f0e004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/IntegerPickerPreference;->mNumberPickerDaysView:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0e004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/NumberPicker;

    iput-object v0, p0, Lcom/google/android/gm/IntegerPickerPreference;->mNumberPickerView:Lcom/google/android/gm/NumberPicker;

    .line 48
    iget-object v0, p0, Lcom/google/android/gm/IntegerPickerPreference;->mNumberPickerView:Lcom/google/android/gm/NumberPicker;

    const/4 v1, 0x1

    const/16 v2, 0x3e7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/NumberPicker;->setRange(II)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gm/IntegerPickerPreference;->mNumberPickerView:Lcom/google/android/gm/NumberPicker;

    iget v1, p0, Lcom/google/android/gm/IntegerPickerPreference;->mConversationAgeDays:I

    invoke-virtual {v0, v1}, Lcom/google/android/gm/NumberPicker;->setCurrent(I)V

    .line 50
    invoke-direct {p0}, Lcom/google/android/gm/IntegerPickerPreference;->updateDays()V

    .line 51
    iget-object v0, p0, Lcom/google/android/gm/IntegerPickerPreference;->mNumberPickerView:Lcom/google/android/gm/NumberPicker;

    new-instance v1, Lcom/google/android/gm/IntegerPickerPreference$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/IntegerPickerPreference$1;-><init>(Lcom/google/android/gm/IntegerPickerPreference;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/NumberPicker;->setOnChangeListener(Lcom/google/android/gm/NumberPicker$OnChangedListener;)V

    .line 56
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/gm/IntegerPickerPreference;->mNumberPickerView:Lcom/google/android/gm/NumberPicker;

    invoke-virtual {v0}, Lcom/google/android/gm/NumberPicker;->clearFocus()V

    .line 67
    iget-object v0, p0, Lcom/google/android/gm/IntegerPickerPreference;->mCaller:Lcom/google/android/gm/LabelsSynchronizationSettings;

    iget-object v1, p0, Lcom/google/android/gm/IntegerPickerPreference;->mNumberPickerView:Lcom/google/android/gm/NumberPicker;

    invoke-virtual {v1}, Lcom/google/android/gm/NumberPicker;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/LabelsSynchronizationSettings;->onConversationAgeDaysChanged(I)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gm/IntegerPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 41
    return-void
.end method
