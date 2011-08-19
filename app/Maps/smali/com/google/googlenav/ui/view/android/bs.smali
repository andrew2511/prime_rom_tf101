.class public Lcom/google/googlenav/ui/view/android/bs;
.super Lcom/google/googlenav/ui/view/android/a;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/AutoCompleteTextView;

.field private C:Landroid/widget/RadioButton;

.field private D:Landroid/widget/RadioButton;

.field private E:Landroid/widget/EditText;

.field private F:Landroid/widget/Button;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Landroid/widget/TextView;

.field private final N:Z

.field private final O:Z

.field private final P:Z

.field private Q:[Ljava/lang/String;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/widget/LinearLayout;

.field private V:Landroid/widget/LinearLayout;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/ProgressBar;

.field private Y:Landroid/widget/HorizontalScrollView;

.field private Z:Lcom/google/googlenav/ui/aG;

.field private f:Z

.field private g:Z

.field private h:Lx/t;

.field private i:[Lcom/google/googlenav/o;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:[Landroid/widget/CheckBox;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/view/ViewGroup;

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x103000b

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->f:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->g:Z

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->m:[Landroid/widget/CheckBox;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->I:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->J:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->K:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->L:Z

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->Q:[Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->P()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->N:Z

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->Q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->O:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->O:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->P:Z

    return-void

    :cond_0
    const v0, 0x103000d

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/google/googlenav/s;)Landroid/view/View;
    .locals 7

    const v6, 0x7f090062

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bs;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030105

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0f0310

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/s;->c()Law/e;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/s;->a()Lk/l;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bs;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v4}, Lcom/google/googlenav/android/BaseMapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object v0, v2

    check-cast v0, LaB/f;

    move-object p0, v0

    invoke-virtual {p0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, LaY/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bs;->Z:Lcom/google/googlenav/ui/aG;

    invoke-virtual {p1}, Lcom/google/googlenav/s;->b()Lcom/google/googlenav/ui/aS;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Landroid/view/View;
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bs;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0f02f5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f02f1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0f02f8

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v3, 0x7f0f02f7

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    if-ne p2, v6, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-ne p2, v8, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0, v1, v2, v6, p1}, Lcom/google/googlenav/ui/view/android/bs;->a(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;ILjava/lang/String;)V

    invoke-direct {p0, v1, v3, v8, p1}, Lcom/google/googlenav/ui/view/android/bs;->a(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/c;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f02f6

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-object v4

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->Y:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->J:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->f:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->x()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->K:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->v()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/view/android/ax;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/ax;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/view/android/aw;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/google/googlenav/ui/view/android/aw;-><init>(Lcom/google/googlenav/ui/view/android/bs;Ljava/lang/String;Landroid/widget/RadioGroup;I)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bs;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bs;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bs;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bs;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bs;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bs;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bs;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bs;->c(Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x55

    const-string v1, "rro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->q:Landroid/widget/TextView;

    const/16 v1, 0x30a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a([Lcom/google/googlenav/o;)V
    .locals 9

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    array-length v0, p1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlenav/ui/view/android/bs;->O:Z

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    iget-boolean v2, p0, Lcom/google/googlenav/ui/view/android/bs;->P:Z

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_0
    if-lez v1, :cond_0

    move v2, v6

    :goto_1
    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/bs;->I:Z

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    move v1, v6

    :goto_2
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->J:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->O:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->J:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->P:Z

    if-nez v1, :cond_2

    move v1, v6

    :goto_3
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->K:Z

    move v1, v5

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget-object v2, p1, v1

    iget-object v3, v2, Lcom/google/googlenav/o;->a:Ljava/lang/String;

    iget v4, v2, Lcom/google/googlenav/o;->c:I

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/view/android/bs;->a(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/googlenav/ui/view/android/bs;->J:Z

    if-eqz v4, :cond_3

    if-lt v1, v0, :cond_3

    move v4, v6

    :goto_5
    if-eqz v4, :cond_4

    iget-object v2, v2, Lcom/google/googlenav/o;->a:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/google/googlenav/ui/view/android/bs;->a(Landroid/view/View;Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_3

    :cond_3
    move v4, v5

    goto :goto_5

    :cond_4
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bs;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_5
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->O:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->s()V

    :cond_6
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->J:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->y:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->w()V

    :goto_7
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->y:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_8
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/view/ViewGroup;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0f02f5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3, p2}, Lcom/google/googlenav/ui/view/android/bs;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/bs;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->s:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->m:[Landroid/widget/CheckBox;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->m:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    if-le p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/bs;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bs;->c(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->M:Landroid/widget/TextView;

    const/16 v1, 0x308

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->M:Landroid/widget/TextView;

    const/16 v1, 0x309

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->C:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private c(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->B:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v1, v1, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/c;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x6b2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find aspect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x6b1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->K:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bs;->A:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/view/android/bs;->a(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->B:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->C:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->D:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->v:Landroid/view/ViewGroup;

    goto :goto_1
.end method

.method private c(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    const/16 v1, 0x326

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lcom/google/googlenav/RatingReminderAlarmManager;->a(Z)V

    const-string v0, "RATING_REMINDERS_OPT_OUT_CLOSED"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lac/i;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->v:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bs;->a(Ljava/lang/String;Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bs;->a(Ljava/lang/String;Landroid/view/ViewGroup;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->D:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->br()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v2, v2, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->bl()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v3, v3, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v3}, Lcom/google/googlenav/c;->bs()Z

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bs;->r:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "twa"

    :goto_0
    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bs;->n:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "tws"

    :goto_1
    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v6, v6, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v6}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/bH;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x55

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "s="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v11, v11, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v11}, Lcom/google/googlenav/c;->bk()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/googlenav/ui/view/android/bs;->i:[Lcom/google/googlenav/o;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "f="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "l="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "d="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v0, v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v0, 0x5

    if-lez v6, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "p="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v8, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "z"

    :goto_3
    aput-object v1, v8, v0

    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->f:Z

    if-eqz v1, :cond_4

    const-string v1, "e"

    :goto_4
    aput-object v1, v8, v0

    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bs;->E:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0x9

    if-eqz v3, :cond_5

    const-string v1, "x"

    :goto_5
    aput-object v1, v8, v0

    const/16 v0, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ca="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0xb

    aput-object v4, v8, v0

    const/16 v0, 0xc

    aput-object v5, v8, v0

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v1, v1, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bC()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "i"

    :goto_6
    aput-object v1, v8, v0

    invoke-static {v8}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, p1, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private d(Z)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/bs;->g:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->I:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->N:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->z:Landroid/view/View;

    if-eqz p1, :cond_5

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->N:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->F:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->H:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->B:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->B:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->o:Landroid/view/View;

    if-eqz p1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->G:Landroid/view/View;

    if-eqz p1, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->W:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    sget-object v1, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    :goto_5
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/av;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    :goto_6
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v1, v1, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bH;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_7
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bs;->R:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bs;->S:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto/16 :goto_1

    :cond_5
    move v1, v5

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v5

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    move v1, v3

    goto :goto_7
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/android/bs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->o()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/view/android/bs;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/view/android/bs;)Lx/t;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/view/android/bs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->x()V

    return-void
.end method

.method static synthetic i(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->n:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->E:Landroid/widget/EditText;

    return-object v0
.end method

.method private o()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bk()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->s:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->s:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->d(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->b()Z

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->N()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->p()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bu()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->U:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/s;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bs;->U:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->a(Lcom/google/googlenav/s;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "RATING_REMINDERS_OPT_OUT_CLOSED"

    invoke-static {v0, v2}, Lac/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->L:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private r()V
    .locals 3

    const v0, 0x7f0f02ea

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->s:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->s:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string v0, "d"

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bs;->a(Ljava/lang/String;)V

    const v0, 0x7f0f02eb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x325

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f02ec

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x322

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f02ed

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0f02ee

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x324

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x323

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/au;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/au;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private s()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bs;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->A:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    const/16 v1, 0x339

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0f02f2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->C:Landroid/widget/RadioButton;

    const v0, 0x7f0f02f3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->D:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bs;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0300fd

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bs;->Q:[Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x7f0f02f0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->B:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->B:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->B:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/at;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/at;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->u()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->m:[Landroid/widget/CheckBox;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lcom/google/googlenav/ui/view/android/as;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/android/as;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->C:Landroid/widget/RadioButton;

    new-instance v1, Lcom/google/googlenav/ui/view/android/az;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/az;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->D:Landroid/widget/RadioButton;

    new-instance v1, Lcom/google/googlenav/ui/view/android/ay;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/ay;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private v()V
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0f02f5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aB;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aB;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private x()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->f:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->f:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x338

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/googlenav/ui/view/android/bs;->f:Z

    if-eqz v2, :cond_3

    const v2, 0x7f020177

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->f:Z

    if-eqz v1, :cond_4

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/16 v1, 0x339

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const v2, 0x7f02017a

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    goto :goto_3
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->n:Landroid/widget/CheckBox;

    new-instance v1, Lcom/google/googlenav/ui/view/android/bA;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/bA;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->r:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/view/android/bB;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/bB;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->F:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/view/android/bC;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/bC;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/bD;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bD;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->R:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->S:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    const v5, 0x7f0f02ff

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/t;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bs;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f030102

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bs;->k()V

    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f026c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2f6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->r()V

    :cond_0
    const v0, 0x7f0f02fb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->t:Landroid/view/ViewGroup;

    const v0, 0x7f0f0328

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->u:Landroid/view/ViewGroup;

    const v0, 0x7f0f02fc

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->k:Landroid/widget/TextView;

    const/16 v1, 0x302

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->m:[Landroid/widget/CheckBox;

    const v0, 0x7f0f032a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->m:[Landroid/widget/CheckBox;

    const/4 v2, 0x1

    const v0, 0x7f0f032b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->m:[Landroid/widget/CheckBox;

    const/4 v2, 0x2

    const v0, 0x7f0f032c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->m:[Landroid/widget/CheckBox;

    const/4 v2, 0x3

    const v0, 0x7f0f032d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->m:[Landroid/widget/CheckBox;

    const/4 v2, 0x4

    const v0, 0x7f0f032e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    const v0, 0x7f0f031e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->n:Landroid/widget/CheckBox;

    const v0, 0x7f0f031d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->o:Landroid/view/View;

    const v0, 0x7f0f031f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->p:Landroid/widget/TextView;

    const v0, 0x7f0f0320

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->p:Landroid/widget/TextView;

    const/16 v1, 0x30e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0321

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->r:Landroid/view/View;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/az;->p()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->a(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->y()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->M:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->t:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/16 v0, 0x303

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bt()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bk()I

    move-result v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->b(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->t()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bp()[Lcom/google/googlenav/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->i:[Lcom/google/googlenav/o;

    const v0, 0x7f0f02fd

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->v:Landroid/view/ViewGroup;

    const v0, 0x7f0f0300

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->w:Landroid/widget/LinearLayout;

    const v0, 0x7f0f02fe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->y:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->i:[Lcom/google/googlenav/o;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->a([Lcom/google/googlenav/o;)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->H:Landroid/view/View;

    const v0, 0x7f0f0302

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->E:Landroid/widget/EditText;

    const v0, 0x7f0f0301

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->E:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v1, v1, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->E:Landroid/widget/EditText;

    const/16 v1, 0x313

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0319

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->R:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v0, 0x7f0f031a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->S:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->z:Landroid/view/View;

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bs;->N:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bs()Z

    move-result v1

    const v0, 0x7f0f000f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->F:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->F:Landroid/widget/Button;

    if-eqz v1, :cond_5

    const/16 v1, 0x31d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f02f9

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->G:Landroid/view/View;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->G:Landroid/view/View;

    const v1, 0x108009a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    const v0, 0x7f0f02fa

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->M:Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/az;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->b(Ljava/lang/String;)V

    const v0, 0x7f0f0318

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->U:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0317

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->T:Landroid/widget/LinearLayout;

    const v0, 0x7f0f031b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->W:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->W:Landroid/widget/TextView;

    const/16 v1, 0x320

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->W:Landroid/widget/TextView;

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/av;)V

    const v0, 0x7f0f0314

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->V:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0315

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->X:Landroid/widget/ProgressBar;

    const v0, 0x7f0f0316

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->Y:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->z()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->o()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->Y:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/av;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/av;-><init>(Lcom/google/googlenav/ui/view/android/bs;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const v0, 0x7f0300ff

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->setContentView(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->h:Lx/t;

    iget-object v0, v0, Lx/t;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->bu()I

    move-result v0

    goto/16 :goto_1

    :cond_4
    move v1, v4

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0x307

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3
.end method

.method public a(Lcom/google/googlenav/ui/aG;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bs;->Z:Lcom/google/googlenav/ui/aG;

    return-void
.end method

.method public b(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->X:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->Y:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/az;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/az;->p()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->a(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bs;->o()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bs;->Y:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bs;->L:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "b"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bs;->d(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
