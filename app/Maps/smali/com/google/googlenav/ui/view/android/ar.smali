.class public Lcom/google/googlenav/ui/view/android/ar;
.super Lx/h;


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Z


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lx/S;

.field private final c:Lcom/google/googlenav/ui/android/BaseAndroidView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/ar;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/ui/view/android/ar;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;)V
    .locals 3

    invoke-direct {p0}, Lx/h;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/view/android/bz;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/android/bz;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->b:Lx/S;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/googlenav/labs/android/a;->a:Lcom/google/googlenav/labs/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/labs/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/googlenav/ui/view/android/aF;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/ui/view/android/aF;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->b:Lx/S;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/googlenav/ui/view/android/be;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f004f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidBubbleView;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/be;-><init>(Landroid/view/View;Lcom/google/googlenav/ui/android/AndroidBubbleView;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->b:Lx/S;

    goto :goto_0
.end method

.method private a(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f02005e

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020062

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020060

    goto :goto_0

    :pswitch_3
    const v0, 0x7f02002a

    goto :goto_0

    :pswitch_4
    const v0, 0x7f02002c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    return-object p0
.end method

.method public static a(Lx/U;)Lx/U;
    .locals 0

    return-object p0
.end method

.method public static a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/ar;->a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/view/android/bz;)V
    .locals 6

    const/4 v5, 0x0

    const v0, 0x7f02004e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    invoke-virtual {p0, v5, v5}, Lcom/google/googlenav/ui/android/TemplateView;->measure(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->getMeasuredHeight()I

    move-result v1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lac/m;->c(I)I

    move-result v2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lac/m;->c(I)I

    move-result v3

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aV;->ab()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int v3, v4, v3

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aV;->ac()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v2, v4, v2

    invoke-virtual {p1, v3, v2, v5, v5}, Lcom/google/googlenav/ui/view/android/bz;->a(IIII)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private b(Lx/U;)Lx/S;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->b:Lx/S;

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->b:Lx/S;

    return-object v0
.end method


# virtual methods
.method public a(ILx/U;Ljava/lang/String;)Lx/S;
    .locals 9

    const v1, 0x7f0f0197

    const/4 v6, 0x0

    const/4 v5, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown touchscreen button type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const v0, 0x7f0f0058

    const v1, 0x7f020069

    move v2, v1

    move v3, v0

    move v0, v5

    move v1, v5

    :goto_0
    packed-switch p1, :pswitch_data_1

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/BaseAndroidView;->c()Lcom/google/googlenav/ui/android/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/ac;->a()Landroid/view/ViewGroup;

    move-result-object v4

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eq v2, v5, :cond_0

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    if-eq v1, v5, :cond_1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/ar;->a(Lx/U;)Lx/U;

    move-result-object v1

    if-ne v0, v5, :cond_5

    new-instance v0, Lcom/google/googlenav/ui/view/android/aH;

    invoke-direct {v0, v3, v1}, Lcom/google/googlenav/ui/view/android/aH;-><init>(Landroid/view/View;Lx/U;)V

    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    return-object v0

    :pswitch_2
    const v0, 0x7f0f0057

    const v1, 0x7f020065

    move v2, v1

    move v3, v0

    move v0, v5

    move v1, v5

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0f0054

    const v1, 0x7f020055

    move v2, v1

    move v3, v0

    move v0, v5

    move v1, v5

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0f0055

    const v1, 0x7f020049

    move v2, v1

    move v3, v0

    move v0, v5

    move v1, v5

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0f0052

    const v1, 0x7f020038

    move v2, v1

    move v3, v0

    move v0, v5

    move v1, v5

    goto :goto_0

    :pswitch_6
    const v0, 0x7f020060

    move v2, v0

    move v3, v1

    move v0, v5

    move v1, v5

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0f0059

    const v1, 0x7f02001c

    move v2, v1

    move v3, v0

    move v0, v5

    move v1, v5

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0f005c

    const v1, 0x7f020019

    move v2, v1

    move v3, v0

    move v0, v5

    move v1, v5

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0f005a

    const v1, 0x7f020043

    move v2, v1

    move v3, v0

    move v0, v5

    move v1, v5

    goto/16 :goto_0

    :pswitch_a
    const v0, 0x7f0f005b

    const v1, 0x7f020044

    move v2, v1

    move v3, v0

    move v0, v5

    move v1, v5

    goto/16 :goto_0

    :pswitch_b
    const/high16 v0, 0x7f0f

    move v1, v5

    move v2, v5

    move v3, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_c
    const v0, 0x7f0f0195

    move v1, v5

    move v2, v5

    move v3, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_d
    const v0, 0x7f0f0196

    move v1, v5

    move v2, v5

    move v3, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_e
    move v0, v5

    move v2, v5

    move v3, v1

    move v1, v5

    goto/16 :goto_0

    :pswitch_f
    const v0, 0x7f0f024c

    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    const v1, 0x7f020040

    :goto_3
    const v2, 0x7f0f024d

    const v3, 0x7f0f024b

    move v7, v3

    move v3, v0

    move v0, v7

    move v8, v1

    move v1, v2

    move v2, v8

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    const v1, 0x7f02003b

    goto :goto_3

    :cond_3
    const/16 v1, 0x12

    if-ne p1, v1, :cond_4

    const v1, 0x7f02003e

    goto :goto_3

    :cond_4
    const v1, 0x7f020039

    goto :goto_3

    :pswitch_10
    const v0, 0x7f0f005d

    move v1, v5

    move v2, v5

    move v3, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_11
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v4

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/view/android/aH;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/view/android/aH;-><init>(Landroid/view/View;Lx/U;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public a(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;
    .locals 6

    const v5, 0x7f0f004b

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    sget-object v1, Lcom/google/googlenav/labs/android/a;->a:Lcom/google/googlenav/labs/android/a;

    invoke-virtual {v1}, Lcom/google/googlenav/labs/android/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f020246

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    sget-object v2, Lcom/google/googlenav/labs/android/a;->a:Lcom/google/googlenav/labs/android/a;

    invoke-virtual {v2}, Lcom/google/googlenav/labs/android/a;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f020241

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    :goto_1
    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/ar;->b(Lx/U;)Lx/S;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    const v1, 0x7f0202b5

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0202c1

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    const v2, 0x7f0202ad

    :goto_3
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const v2, 0x7f0202b9

    goto :goto_3
.end method

.method public a(Lcom/google/googlenav/ui/bx;Lx/U;)Lx/S;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p1, Lcom/google/googlenav/ui/bx;->r:I

    sparse-switch v1, :sswitch_data_0

    const v1, 0x7f03010c

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setEnabled(Z)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bz;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-direct {v1, v0, v2, v4}, Lcom/google/googlenav/ui/view/android/bz;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    new-instance v2, LaF/a;

    invoke-direct {v2, v3, v3}, LaF/a;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/bz;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/view/android/bz;->a(Lx/U;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/ar;->a(Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/view/android/bz;)V

    :cond_0
    return-object v1

    :sswitch_0
    const v1, 0x7f03000c

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0300d3

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;
    .locals 7

    const v6, 0x7f0f004d

    const v5, 0x7f0f004a

    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v0, p1, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/google/googlenav/ui/bx;->r:I

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    sget-object v1, Lcom/google/googlenav/labs/android/a;->a:Lcom/google/googlenav/labs/android/a;

    invoke-virtual {v1}, Lcom/google/googlenav/labs/android/a;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f020240

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    :goto_2
    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f004b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/ar;->b(Lx/U;)Lx/S;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->L:Ljava/lang/Object;

    sget-object v2, Lcom/google/googlenav/ui/bx;->g:Ljava/lang/Object;

    if-ne v1, v2, :cond_5

    if-eqz p3, :cond_4

    const v1, 0x7f0202b4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_4
    const v1, 0x7f0202c0

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    const v1, 0x7f0202ac

    :goto_4
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_6
    const v1, 0x7f0202b8

    goto :goto_4
.end method

.method public a(Lcom/google/googlenav/ui/bx;Lx/U;ZLf/h;)Lx/S;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/ar;->a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p4, v2, v1, p2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lf/h;Landroid/view/View;Lx/S;Lx/U;)V

    :cond_0
    return-object v1
.end method

.method public a(Lu/v;Lcom/google/googlenav/ui/aY;Z)Lx/S;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/K;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/K;-><init>(Landroid/view/ViewGroup;Lu/v;Lcom/google/googlenav/ui/aY;Z)V

    return-object v0
.end method

.method public a(II)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown header button type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f0f0195

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/ar;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void

    :pswitch_1
    const v0, 0x7f0f0196

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0f0197

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/google/googlenav/ui/aI;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->c()Lcom/google/googlenav/ui/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lr/b;->a:Lr/b;

    invoke-virtual {v0}, Lr/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public a([Lcom/google/googlenav/ui/aI;)V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/googlenav/ui/av;->bD:Lcom/google/googlenav/ui/av;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    check-cast p0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->l()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->b(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->c(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ar;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->c()Lcom/google/googlenav/ui/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f005d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v1}, Lcom/google/googlenav/android/af;->k()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/ar;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
