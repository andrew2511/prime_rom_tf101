.class public Lcom/android/contacts/datepicker/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mTitleDateFormat:Ljava/text/DateFormat;

.field private final mWeekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 9
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "yearOptional"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 147
    iput-object p3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    .line 148
    iput p4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    .line 149
    iput p5, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    .line 150
    iput p6, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    .line 151
    new-instance v7, Ljava/text/DateFormatSymbols;

    invoke-direct {v7}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 152
    .local v7, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 157
    iget v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    .line 159
    const/4 v0, -0x1

    const v1, 0x1040379

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/contacts/datepicker/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 161
    const/4 v0, -0x2

    const/high16 v1, 0x104

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 p2, 0x0

    check-cast p2, Landroid/content/DialogInterface$OnClickListener;

    .end local p2
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/contacts/datepicker/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 164
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 166
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f04001a

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 167
    .local v8, view:Landroid/view/View;
    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 168
    const v0, 0x7f070063

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/contacts/datepicker/DatePicker;

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    .line 169
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    move/from16 v4, p7

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 8
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "yearOptional"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const v0, 0x10301de

    move v2, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 110
    return-void

    .line 106
    :cond_0
    const v0, 0x10301d0

    move v2, v0

    goto :goto_0
.end method

.method private updateTitle(III)V
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 207
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 208
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 209
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/datepicker/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->clearFocus()V

    .line 188
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v3}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v4}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/android/contacts/datepicker/DatePicker;III)V

    .line 191
    :cond_0
    return-void
.end method

.method public onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 0
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 195
    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    .line 196
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 225
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 226
    .local v1, year:I
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, month:I
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, day:I
    const-string v0, "year_optional"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 229
    .local v4, yearOptional:Z
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 230
    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    .line 231
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v1, "month"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v1, "day"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v1, "year_optional"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->isYearOptional()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    return-object v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 180
    const v1, 0x1020209

    invoke-virtual {p0, v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 181
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 182
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 183
    return-void
.end method
