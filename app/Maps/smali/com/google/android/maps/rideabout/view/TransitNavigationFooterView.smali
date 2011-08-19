.class public Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/maps/rideabout/view/k;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

.field private d:Lcom/google/googlenav/ui/view/android/rideabout/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300f2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f02d6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const v0, 0x7f0f02d8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->b:Landroid/widget/TextView;

    const v0, 0x7f0f02d9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/k;

    const v1, 0x7f0d0012

    const v2, 0x7f0d0013

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/k;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a(Lcom/google/android/maps/rideabout/app/k;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/rideabout/app/k;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v0, ""

    const-string v1, ""

    if-eqz p1, :cond_1

    sget-object v2, Lcom/google/android/maps/rideabout/view/q;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->j()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/o;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->e()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->e()I

    move-result v2

    invoke-static {v1, v2}, LK/j;->a(Landroid/content/Context;I)Landroid/text/Spannable;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setGravity(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/k;

    const/16 v2, 0x372

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/k;

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v5

    invoke-virtual {v5}, LB/u;->ai_()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/k;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/k;->b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/k;

    const/16 v0, 0x38a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    iget-object v5, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/k;

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->i()LB/u;

    move-result-object v0

    check-cast v0, LB/s;

    invoke-virtual {v0}, LB/s;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/googlenav/ui/view/android/rideabout/k;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/k;->b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    :cond_1
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setGravity(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const/16 v1, 0x391

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
