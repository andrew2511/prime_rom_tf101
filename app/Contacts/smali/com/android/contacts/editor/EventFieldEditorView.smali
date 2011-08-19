.class public Lcom/android/contacts/editor/EventFieldEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "EventFieldEditorView.java"


# instance fields
.field private final DEFAULT_HOUR:I

.field private mDateView:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 52
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->DEFAULT_HOUR:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->DEFAULT_HOUR:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->DEFAULT_HOUR:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/EventFieldEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    return-void
.end method

.method private createDatePickerDialog()Landroid/app/Dialog;
    .locals 15

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v8, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 207
    .local v8, column:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 208
    .local v13, oldValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v12

    .line 210
    .local v12, kind:Lcom/android/contacts/model/AccountType$DataKind;
    sget-object v1, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v7

    .line 211
    .local v7, calendar:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 214
    .local v11, defaultYear:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v6

    .line 217
    .local v6, isYearOptional:Z
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    move v3, v11

    .line 220
    .local v3, oldYear:I
    const/4 v4, 0x0

    .line 221
    .local v4, oldMonth:I
    const/4 v5, 0x1

    .line 245
    .local v5, oldDay:I
    :goto_0
    new-instance v2, Lcom/android/contacts/editor/EventFieldEditorView$2;

    invoke-direct {v2, p0, v6, v12, v8}, Lcom/android/contacts/editor/EventFieldEditorView$2;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/AccountType$DataKind;Ljava/lang/String;)V

    .line 268
    .local v2, callBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    new-instance v0, Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .local v0, resultDialog:Lcom/android/contacts/datepicker/DatePickerDialog;
    move-object v1, v0

    .line 270
    .end local v0           #resultDialog:Lcom/android/contacts/datepicker/DatePickerDialog;
    .end local v2           #callBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    .end local v3           #oldYear:I
    .end local v4           #oldMonth:I
    .end local v5           #oldDay:I
    :goto_1
    return-object v1

    .line 223
    :cond_0
    new-instance v14, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 225
    .local v14, position:Ljava/text/ParsePosition;
    iget-object v1, v12, Lcom/android/contacts/model/AccountType$DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v13, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v9

    .line 226
    .local v9, date1:Ljava/util/Date;
    if-nez v9, :cond_1

    .line 228
    invoke-static {v13}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 230
    :cond_1
    if-eqz v9, :cond_2

    .line 231
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 233
    .restart local v3       #oldYear:I
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 234
    .restart local v4       #oldMonth:I
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .restart local v5       #oldDay:I
    goto :goto_0

    .line 236
    .end local v3           #oldYear:I
    .end local v4           #oldMonth:I
    .end local v5           #oldDay:I
    :cond_2
    iget-object v1, v12, Lcom/android/contacts/model/AccountType$DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v13, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 238
    .local v10, date2:Ljava/util/Date;
    if-nez v10, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 239
    :cond_3
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 240
    if-eqz v6, :cond_4

    const/4 v1, 0x0

    move v3, v1

    .line 241
    .restart local v3       #oldYear:I
    :goto_2
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 242
    .restart local v4       #oldMonth:I
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .restart local v5       #oldDay:I
    goto :goto_0

    .end local v3           #oldYear:I
    .end local v4           #oldMonth:I
    .end local v5           #oldDay:I
    :cond_4
    move v3, v11

    .line 240
    goto :goto_2
.end method

.method private rebuildDateView()V
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditField;

    .line 147
    .local v2, editField:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v0, v2, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 148
    .local v0, column:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, data:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    const-string v1, " "

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method


# virtual methods
.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 157
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    const-string v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, dialogId:I
    packed-switch v0, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 161
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001c
        :pswitch_0
    .end packed-switch
.end method

.method public getBaseline(I)I
    .locals 4
    .parameter "row"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->getBaseline(I)I

    move-result v0

    .line 71
    .local v0, baseline:I
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/EventFieldEditorView;->getLineItemHeight(I)I

    move-result v1

    .line 74
    .local v1, lineItemHeight:I
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v2, v3, 0x2

    .line 75
    .local v2, offset:I
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBaseline()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 77
    .end local v1           #lineItemHeight:I
    .end local v2           #offset:I
    :cond_0
    return v0
.end method

.method protected getLineItemHeight(I)I
    .locals 2
    .parameter "row"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 106
    .local v0, height:I
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->getLineItemHeight(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 105
    .end local v0           #height:I
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic getType()Lcom/android/contacts/model/AccountType$EditType;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Lcom/android/contacts/model/AccountType$EventEditType;
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getType()Lcom/android/contacts/model/AccountType$EditType;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/AccountType$EventEditType;

    return-object p0
.end method

.method protected onLabelRebuilt()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v7, v2, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 176
    .local v7, column:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, oldValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v10

    .line 179
    .local v10, kind:Lcom/android/contacts/model/AccountType$DataKind;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 180
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 183
    .local v1, defaultYear:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v9

    .line 185
    .local v9, isYearOptional:Z
    if-nez v9, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    new-instance v12, Ljava/text/ParsePosition;

    invoke-direct {v12, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 187
    .local v12, position:Ljava/text/ParsePosition;
    iget-object v2, v10, Lcom/android/contacts/model/AccountType$DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    .line 190
    .local v8, date2:Ljava/util/Date;
    if-nez v8, :cond_1

    .line 200
    .end local v8           #date2:Ljava/util/Date;
    .end local v12           #position:Ljava/text/ParsePosition;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v8       #date2:Ljava/util/Date;
    .restart local v12       #position:Ljava/text/ParsePosition;
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 194
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 197
    iget-object v2, v10, Lcom/android/contacts/model/AccountType$DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/editor/EventFieldEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->onLayout(ZIIII)V

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getPaddingLeft()I

    move-result v3

    .line 85
    .local v3, l1:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getPaddingTop()I

    move-result v7

    .line 86
    .local v7, t1:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getPaddingRight()I

    move-result v10

    sub-int v5, v9, v10

    .line 90
    .local v5, r1:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getLabel()Landroid/widget/Spinner;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getLabel()Landroid/widget/Spinner;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v9

    move v4, v9

    .line 91
    .local v4, labelWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getDelete()Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getDelete()Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v9

    move v1, v9

    .line 92
    .local v1, deleteWidth:I
    :goto_1
    sub-int v9, v5, v1

    sub-int v6, v9, v4

    .line 93
    .local v6, r2:I
    iget-object v9, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 94
    iget-object v9, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    .line 95
    .local v2, height:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/contacts/editor/EventFieldEditorView;->getBaseline(I)I

    move-result v0

    .line 96
    .local v0, baseline:I
    add-int v9, v7, v0

    iget-object v10, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getBaseline()I

    move-result v10

    sub-int v8, v9, v10

    .line 97
    .local v8, top:I
    iget-object v9, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    add-int v10, v8, v2

    invoke-virtual {v9, v3, v8, v6, v10}, Landroid/widget/Button;->layout(IIII)V

    .line 101
    .end local v0           #baseline:I
    .end local v2           #height:I
    .end local v8           #top:I
    :cond_0
    return-void

    .line 90
    .end local v1           #deleteWidth:I
    .end local v4           #labelWidth:I
    .end local v6           #r2:I
    :cond_1
    const/4 v9, 0x0

    move v4, v9

    goto :goto_0

    .line 91
    .restart local v4       #labelWidth:I
    :cond_2
    const/4 v9, 0x0

    move v1, v9

    goto :goto_1
.end method

.method protected requestFocusForFirstEditField()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 112
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    :cond_0
    return-void

    .line 118
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 5
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    const/4 v4, 0x1

    .line 124
    iget-object v0, p1, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "kind must have 1 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010081

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p4, :cond_2

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/editor/EventFieldEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/EventFieldEditorView$1;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/EventFieldEditorView;->addView(Landroid/view/View;)V

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    .line 143
    return-void

    .line 132
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
