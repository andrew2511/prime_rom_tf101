.class public LI/y;
.super LI/M;

# interfaces
.implements LaD/n;


# static fields
.field private static final f:[I

.field private static final j:[I


# instance fields
.field private final a:Li/aw;

.field private final b:Lcom/google/googlenav/ui/aV;

.field private c:Lcom/google/googlenav/ui/android/FlowLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private k:Lcom/google/googlenav/ui/android/LoadingFooterView;

.field private l:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, LI/y;->f:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, LI/y;->j:[I

    return-void

    :array_0
    .array-data 0x4
        0x3bt 0x2t 0xft 0x7ft
        0x3ct 0x2t 0xft 0x7ft
        0x3dt 0x2t 0xft 0x7ft
        0x3et 0x2t 0xft 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x3ft 0x2t 0xft 0x7ft
        0x40t 0x2t 0xft 0x7ft
        0x41t 0x2t 0xft 0x7ft
        0x42t 0x2t 0xft 0x7ft
    .end array-data
.end method

.method private a(Lcom/google/googlenav/c;ILcom/google/googlenav/z;)LI/B;
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_0

    sub-int v0, p2, v7

    invoke-direct {p0, v0, p3}, LI/y;->a(ILcom/google/googlenav/z;)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    invoke-virtual {p3}, Lcom/google/googlenav/z;->c_()I

    move-result v0

    sub-int/2addr v0, v7

    if-ge p2, v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, p3}, LI/y;->a(ILcom/google/googlenav/z;)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    :goto_0
    if-eqz v0, :cond_3

    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aB()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aC()LaO/d;

    move-result-object v0

    invoke-virtual {v0}, LaO/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LaO/d;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/c;->d(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f0

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v8

    aput-object v3, v5, v7

    invoke-static {v4, v5}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_4
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ax()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_1
    iget-object v0, p0, LI/y;->a:Li/aw;

    invoke-virtual {v0, p1, v7}, Li/aw;->c(Lcom/google/googlenav/c;Z)Lk/l;

    move-result-object v7

    check-cast v7, LaB/f;

    new-instance v0, Lcom/google/googlenav/ui/view/android/br;

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/br;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaB/f;I)V

    return-object v0

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e7

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_5
    move-object v3, v6

    goto :goto_4

    :cond_6
    move-object v1, v6

    goto :goto_2
.end method

.method private a(Lcom/google/googlenav/c;IZLcom/google/googlenav/z;)LI/B;
    .locals 5

    invoke-virtual {p4}, Lcom/google/googlenav/z;->am()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bw()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2bc

    invoke-virtual {p0, p1, p2, p3, v0}, LI/y;->b(Lcom/google/googlenav/c;IZI)Lcom/google/googlenav/ui/view/android/aX;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0300a5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aX;->c(I)Lcom/google/googlenav/ui/view/android/aX;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aZ()Lcom/google/googlenav/aG;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aZ()Lcom/google/googlenav/aG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object p0

    check-cast p0, LaB/f;

    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/aX;->a(LaB/f;)Lcom/google/googlenav/ui/view/android/aX;

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aX;->a()Lcom/google/googlenav/ui/view/android/aZ;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/c;->T()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :goto_2
    iget-object v2, p0, LI/y;->h:Li/bl;

    invoke-virtual {v2}, Li/bl;->bm()LN/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->F()B

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, LN/j;->a(ZBI)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LI/y;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->o()Lk/j;

    move-result-object v2

    invoke-static {v1, v2}, LI/y;->a(Ljava/lang/String;Lk/j;)LaB/f;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v1, p2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, p4}, LI/y;->a(Lcom/google/googlenav/c;ILcom/google/googlenav/z;)LI/B;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/googlenav/c;->Z()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2, p4}, LI/y;->b(Lcom/google/googlenav/c;ILcom/google/googlenav/z;)LI/B;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lk/j;)LaB/f;
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    invoke-interface {p1, v0}, Lk/j;->e(C)Lk/l;

    move-result-object p0

    check-cast p0, LaB/f;

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private a(ILcom/google/googlenav/z;)Lcom/google/googlenav/c;
    .locals 0

    invoke-virtual {p2, p1}, Lcom/google/googlenav/z;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/aV;->bu:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const v2, 0x7f03008e

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    invoke-virtual {p1, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0f01f3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, LI/e;

    invoke-direct {v3, p0}, LI/e;-><init>(LI/y;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0f01f1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, LI/y;->d:Landroid/widget/TextView;

    iget-object v2, p0, LI/y;->d:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/google/googlenav/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->bE:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    iget-object v2, p0, LI/y;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v2, p0, LI/y;->d:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v2, 0x7f0f01f4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, LI/f;

    invoke-direct {v3, p0}, LI/f;-><init>(LI/y;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V
    .locals 5

    iget-object v0, p0, LI/y;->a:Li/aw;

    invoke-virtual {v0}, Li/aw;->bq()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/LoadingFooterView;

    iput-object v0, p0, LI/y;->k:Lcom/google/googlenav/ui/android/LoadingFooterView;

    iget-object v0, p0, LI/y;->k:Lcom/google/googlenav/ui/android/LoadingFooterView;

    const v1, 0x7f0f01ec

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x22a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    iget-object v0, p0, LI/y;->k:Lcom/google/googlenav/ui/android/LoadingFooterView;

    iget-object v1, p0, LI/y;->a:Li/aw;

    invoke-virtual {v1}, Li/aw;->bC()Lx/x;

    move-result-object v1

    new-instance v2, Lx/q;

    const/16 v3, 0x2c5

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lx/q;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/LoadingFooterView;->a(Lx/x;Lx/q;)V

    iget-object v0, p0, LI/y;->k:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/z;)V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f030087

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, LI/y;->a:Li/aw;

    invoke-virtual {v2, p3}, Li/aw;->c(Lcom/google/googlenav/z;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0f020e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LI/y;->l:Landroid/widget/TextView;

    invoke-direct {p0, p3}, LI/y;->a(Lcom/google/googlenav/z;)V

    iget-object v1, p0, LI/y;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p3}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->an:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/S;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LI/d;

    invoke-direct {v1, p0, p4, p5}, LI/d;-><init>(LI/y;II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p6}, Landroid/widget/Button;->setSelected(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/z;Z)V
    .locals 12

    invoke-virtual {p2}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    array-length v0, v7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, v7, v1

    const-string v3, " loc:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v0, LI/y;->j:[I

    aget v2, v0, v8

    const/16 v0, 0x3b5

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2d0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LI/y;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    add-int/lit8 v0, v8, 0x1

    :goto_1
    const/4 v1, 0x0

    array-length v8, v7

    const/4 v2, 0x0

    move v9, v2

    move v5, v1

    move v10, v0

    :goto_2
    if-ge v9, v8, :cond_5

    aget-object v0, v7, v9

    const/4 v1, 0x3

    if-lt v10, v1, :cond_0

    array-length v1, v7

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v5, v1, :cond_3

    :cond_0
    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v0, v5

    move v1, v10

    :goto_3
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v5, v0

    move v10, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/googlenav/z;->G()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LI/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v0, LI/y;->j:[I

    aget v2, v0, v10

    const/16 v4, 0x2c6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LI/y;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    add-int/lit8 v0, v10, 0x1

    add-int/lit8 v1, v5, 0x1

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_3

    :cond_3
    sget-object v0, LI/y;->j:[I

    add-int/lit8 v7, v10, 0x1

    aget v2, v0, v10

    const/16 v0, 0x3b6

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c7

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LI/y;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    move v0, v7

    :goto_4
    if-eqz p3, :cond_4

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    :goto_5
    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    sget-object v1, LI/y;->j:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    return-void

    :cond_5
    move v0, v10

    goto :goto_4

    :cond_6
    move v0, v8

    goto :goto_1

    :cond_7
    move v0, v8

    goto :goto_4
.end method

.method private a(Lcom/google/googlenav/z;)V
    .locals 6

    iget-object v0, p0, LI/y;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/z;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x1de

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/z;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v1, 0x367

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ad()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ad()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/googlenav/z;->c_()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ae()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, LI/y;->l:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/av;->aK:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LI/y;->a:Li/aw;

    invoke-virtual {v0}, Li/aw;->bE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/y;->e:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aq:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    iget-object v0, p0, LI/y;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LI/y;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Lcom/google/googlenav/c;ILcom/google/googlenav/z;)LI/B;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/googlenav/z;->al()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    iget-object v0, p0, LI/y;->a:Li/aw;

    invoke-virtual {v0}, Li/aw;->bx()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1e3

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlenav/c;->aY()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aZ()Lcom/google/googlenav/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object p0

    check-cast p0, LaB/f;

    move-object v4, p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v5

    new-instance v0, Lcom/google/googlenav/ui/view/android/y;

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaB/f;Lf/h;I)V

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method private b(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/z;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f0300b4

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f023a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/FlowLayout;

    iput-object v1, p0, LI/y;->c:Lcom/google/googlenav/ui/android/FlowLayout;

    iget-object v1, p0, LI/y;->c:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v1, p3, v4}, LI/y;->b(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/z;Z)V

    iget-object v1, p0, LI/y;->c:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-direct {p0, v1, p3, v4}, LI/y;->a(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/z;Z)V

    iget-object v1, p0, LI/y;->c:Lcom/google/googlenav/ui/android/FlowLayout;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/android/FlowLayout;->setVisibility(I)V

    iget-object v1, p0, LI/y;->c:Lcom/google/googlenav/ui/android/FlowLayout;

    new-instance v2, Lcom/google/googlenav/ui/android/ak;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v5, v5}, Lcom/google/googlenav/ui/android/ak;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/FlowLayout;->a(Lcom/google/googlenav/ui/android/ak;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p2, v5}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/android/FlowLayout;Lcom/google/googlenav/z;Z)V
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/google/googlenav/z;->ay()[Lcom/google/googlenav/aN;

    move-result-object v7

    invoke-virtual {p2}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    move-object v8, v1

    :goto_0
    if-eqz v7, :cond_3

    array-length v9, v7

    const/4 v1, 0x0

    move v10, v1

    move v11, v0

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v0, v7, v10

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/google/googlenav/aN;->a()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/googlenav/aN;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/aN;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/aN;->f()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_2
    array-length v1, v7

    if-ge v11, v1, :cond_6

    const/4 v1, 0x4

    if-ge v11, v1, :cond_6

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    move v6, v1

    :goto_3
    sget-object v1, LI/y;->f:[I

    aget v2, v1, v11

    invoke-virtual {v0}, Lcom/google/googlenav/aN;->g()I

    move-result v4

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LI/y;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    add-int/lit8 v0, v11, 0x1

    :goto_4
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v11, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aN;->e()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    move v6, v1

    goto :goto_3

    :cond_2
    move v0, v11

    :cond_3
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/googlenav/aN;

    if-eqz p2, :cond_4

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    invoke-virtual {p2}, Lcom/google/googlenav/aN;->e()Ljava/lang/String;

    move-result-object v3

    sget-object v1, LI/y;->f:[I

    add-int/lit8 v7, v0, 0x1

    aget v2, v1, v0

    invoke-virtual {p2}, Lcom/google/googlenav/aN;->g()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LI/y;->a(Landroid/view/ViewGroup;ILjava/lang/CharSequence;IIZ)V

    move v0, v7

    :cond_4
    if-eqz p3, :cond_5

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    sget-object v1, LI/y;->f:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/android/FlowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    move v0, v11

    goto :goto_4

    :cond_7
    move-object v8, v1

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/j;)Ljava/util/List;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, LI/y;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aw()Lv/t;

    move-result-object v0

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v2

    move v3, v6

    :goto_0
    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-interface {p1, v3}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v4}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lv/d;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    :goto_1
    iget-object v5, p0, LI/y;->a:Li/aw;

    invoke-virtual {v5}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v5

    invoke-direct {p0, v0, v3, v4, v5}, LI/y;->a(Lcom/google/googlenav/c;IZLcom/google/googlenav/z;)LI/B;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, LD/c;->a:LD/c;

    invoke-virtual {v5}, LD/c;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v3, v7, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v1

    :cond_4
    move v4, v6

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, LI/y;->a:Li/aw;

    invoke-virtual {v0}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/googlenav/z;->ah()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_2

    move v5, v7

    :goto_0
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v1}, Lcom/google/googlenav/z;->ah()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v3, v0, v1}, LI/y;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/z;)V

    :goto_1
    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v5

    iput-object v4, v5, Lx/z;->o:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Lcom/google/googlenav/z;->ah()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3, v0, v1}, LI/y;->b(Landroid/view/LayoutInflater;Landroid/widget/ListView;Lcom/google/googlenav/z;)V

    :cond_1
    invoke-direct {p0, v3, v0}, LI/y;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v2, p1, v1}, LI/y;->a(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;I)V

    iget-object v1, p0, LI/y;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const v0, 0x7f0f01eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LI/y;->e:Landroid/widget/TextView;

    iget-object v0, p0, LI/y;->a:Li/aw;

    invoke-virtual {v0}, Li/aw;->bD()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LI/y;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/google/googlenav/z;->w()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, p2, v5}, LI/y;->a(Landroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, LI/y;->a:Li/aw;

    invoke-virtual {v4, v1}, Li/aw;->c(Lcom/google/googlenav/z;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public ar_()V
    .locals 1

    iget-object v0, p0, LI/y;->h:Li/bl;

    invoke-virtual {v0}, Li/bl;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/y;->i:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/y;->i:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->a()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x103000c

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d0032

    goto :goto_0
.end method
