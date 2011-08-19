.class public Lcom/google/googlenav/ui/view/android/al;
.super Lcom/google/googlenav/ui/view/android/a;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private f:Landroid/widget/Spinner;

.field private g:Ljava/util/Calendar;

.field private h:Ljava/text/DateFormat;

.field private i:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    const v0, 0x103000b

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->i:Landroid/app/Dialog;

    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->h:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()Lx/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object p0

    check-cast p0, Lx/c;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 7

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/view/android/al;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/al;->p()Lx/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/al;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f020174

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/al;->setContentView(I)V

    const v0, 0x7f0f026c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/al;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lx/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    iget-object v2, v1, Lx/c;->b:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->h:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->h:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    const v0, 0x7f0f0108

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/al;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p0}, Lcom/google/googlenav/ui/view/android/al;->a(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0f0109

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/al;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p0}, Lcom/google/googlenav/ui/view/android/al;->a(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    const v0, 0x7f0f010b

    iget-object v3, v1, Lx/c;->d:Lcom/google/googlenav/ui/bx;

    iget-object v3, v3, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-virtual {p0, v0, v3, p0}, Lcom/google/googlenav/ui/view/android/al;->a(I[Lcom/google/googlenav/ui/aI;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0f010c

    iget-object v3, v1, Lx/c;->e:Lcom/google/googlenav/ui/bx;

    iget-object v3, v3, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-virtual {p0, v0, v3, p0}, Lcom/google/googlenav/ui/view/android/al;->a(I[Lcom/google/googlenav/ui/aI;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/al;->k()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/al;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0f0106

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/al;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->f:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->f:Landroid/widget/Spinner;

    new-instance v3, Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/al;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lx/c;->a:Lx/B;

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/al;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/googlenav/ui/view/android/bb;-><init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->f:Landroid/widget/Spinner;

    new-instance v3, Lcom/google/googlenav/ui/view/android/aM;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/ui/view/android/aM;-><init>(Lcom/google/googlenav/ui/view/android/al;Landroid/widget/Button;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->f:Landroid/widget/Spinner;

    iget v1, v1, Lx/c;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method protected a(ILandroid/app/Dialog;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Landroid/app/TimePickerDialog;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/al;->p()Lx/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/al;->hide()V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/al;->b(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/ui/view/android/al;->a(ILandroid/app/Dialog;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->i:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/view/android/al;->b(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/googlenav/ui/view/android/al;->a(ILandroid/app/Dialog;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->i:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/al;->f:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Lu/s;->a(Ljava/util/Date;I)Lu/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/c;->a(Lu/s;)V

    iget-object v0, v0, Lx/c;->d:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/al;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, v0, Lx/c;->e:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/al;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f0108
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected b(I)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/al;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/al;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/d;->c()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v5, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    const v1, 0x7f0f0108

    const v0, 0x7f0f0107

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/al;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/al;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/view/android/al;->a(ILandroid/view/ViewGroup;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->g:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    const v1, 0x7f0f0109

    const v0, 0x7f0f0107

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/al;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/al;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/view/android/al;->a(ILandroid/view/ViewGroup;Ljava/lang/CharSequence;)V

    return-void
.end method
