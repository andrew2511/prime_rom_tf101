.class public Lcom/google/android/maps/rideabout/view/j;
.super Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;LB/c;LB/l;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0300f9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/j;->setContentView(I)V

    const/16 v0, 0x384

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/j;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f02e8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v1, LB/r;

    invoke-direct {v1, p2}, LB/r;-><init>(LB/c;)V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v1}, LB/r;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, LB/r;->a()LB/l;

    move-result-object v4

    invoke-virtual {p3, v4}, LB/l;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_1
    new-instance v5, Lcom/google/android/maps/rideabout/view/i;

    const/4 v6, 0x0

    invoke-direct {v5, p2, v4, v6}, Lcom/google/android/maps/rideabout/view/i;-><init>(LB/c;LB/l;F)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, LB/r;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/google/android/maps/rideabout/view/i;

    const/high16 v6, 0x3f00

    invoke-direct {v5, p2, v4, v6}, Lcom/google/android/maps/rideabout/view/i;-><init>(LB/c;LB/l;F)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, p1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v4, 0x1090009

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    const v1, 0x7f0f02e7

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x1080025

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v3, Lcom/google/android/maps/rideabout/view/m;

    invoke-direct {v3, p0, v0}, Lcom/google/android/maps/rideabout/view/m;-><init>(Lcom/google/android/maps/rideabout/view/j;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f02e9

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x1080022

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v3, Lcom/google/android/maps/rideabout/view/n;

    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/maps/rideabout/view/n;-><init>(Lcom/google/android/maps/rideabout/view/j;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f028b

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/google/android/maps/rideabout/view/p;

    invoke-direct {v2, p0, v0}, Lcom/google/android/maps/rideabout/view/p;-><init>(Lcom/google/android/maps/rideabout/view/j;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
