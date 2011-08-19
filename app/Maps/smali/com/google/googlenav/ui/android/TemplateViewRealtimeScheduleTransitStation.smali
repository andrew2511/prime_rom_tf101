.class public Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;
.super Lcom/google/googlenav/ui/android/TemplateView;


# static fields
.field public static final a:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:Landroid/graphics/Rect;

.field private static final o:Landroid/graphics/RectF;


# instance fields
.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->j:I

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a:I

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->l:I

    const/16 v0, 0x28

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->m:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->o:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 2

    invoke-static {p2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 6

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    const v1, 0x7f02025c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lcom/google/googlenav/D;Z)Landroid/widget/TextView;
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "placeholder"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/android/G;

    iget v2, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->p:I

    invoke-direct {v1, p1, p2, v2}, Lcom/google/googlenav/ui/android/G;-><init>(Lcom/google/googlenav/D;ZI)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/D;Z)Landroid/widget/TextView;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/D;Z)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;)Lcom/google/googlenav/android/c;
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k()Lcom/google/googlenav/android/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/K;Z)Ljava/lang/CharSequence;
    .locals 9

    const/16 v8, 0x21

    const/4 v7, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/K;->c()Lcom/google/googlenav/aZ;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v7

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/K;->e()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/K;->a(I)Lcom/google/googlenav/aZ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aZ;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v3}, Lcom/google/googlenav/aZ;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/16 v2, 0x1db

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d00af

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-char v1, Lcom/google/googlenav/ui/aV;->bC:C

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p2, :cond_3

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-string v2, "("

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/K;)V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d00b1

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/K;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/K;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/K;Z)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/K;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;II)V
    .locals 4

    const/16 v3, 0x21

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00b0

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/K;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/google/googlenav/K;->e()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/google/googlenav/K;->a(I)Lcom/google/googlenav/aZ;

    move-result-object v1

    if-lez v0, :cond_0

    const-string v2, " "

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->e()Law/e;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->f()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/text/SpannableStringBuilder;II)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/google/googlenav/aB;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b(Lcom/google/googlenav/aB;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->c(Lcom/google/googlenav/aB;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->d(Lcom/google/googlenav/aB;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/aB;Li/x;)V
    .locals 6

    const v5, 0x7f0f0370

    const v4, 0x7f0f036f

    const/16 v2, 0x8

    const/4 v3, 0x0

    const v0, 0x7f0f0371

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->j()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x26c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f036c

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {p1}, Lcom/google/googlenav/aB;->j()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aB;->c(I)Lcom/google/googlenav/aB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aB;->e()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08001b

    new-instance v5, Lcom/google/googlenav/ui/android/z;

    invoke-direct {v5, p0, v2, p2}, Lcom/google/googlenav/ui/android/z;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/aB;Li/x;)V

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/googlenav/bK;Landroid/widget/LinearLayout;)V
    .locals 5

    const/4 v4, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v1, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0203af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->j:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bK;->a()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080006

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/bK;->b()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080001

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/bK;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/bK;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080026

    new-instance v3, Lcom/google/googlenav/ui/android/A;

    invoke-direct {v3, p0, p1}, Lcom/google/googlenav/ui/android/A;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bK;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->l:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->p:I

    return v0
.end method

.method private static b(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move-object v1, p1

    :goto_0
    sget-object v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v3, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    sub-int v3, p2, v3

    if-le v2, v3, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Lcom/google/googlenav/aB;)V
    .locals 7

    const v6, 0x7f0f0361

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v0, 0x7f0f035f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0360

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->h()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x19

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v4

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/aB;->h()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aB;->b(I)Lcom/google/googlenav/bK;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/bK;Landroid/widget/LinearLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c()Landroid/graphics/RectF;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->o:Landroid/graphics/RectF;

    return-object v0
.end method

.method private c(Lcom/google/googlenav/aB;)V
    .locals 9

    const v8, 0x7f0f0367

    const v7, 0x7f0f0366

    const v6, 0x7f0f0362

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    move v0, v5

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/D;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const v0, 0x7f0f0365

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f0363

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x431

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/aV;->bC:C

    invoke-static {v4}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    const v2, 0x7f0f0364

    const/16 v3, 0x1d9

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    const/16 v2, 0x1ef

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    new-instance v2, Lcom/google/googlenav/ui/android/i;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/android/i;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic d()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    return-object v0
.end method

.method private d(Lcom/google/googlenav/aB;)V
    .locals 8

    const v7, 0x7f0f036b

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    move v0, v4

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/D;->i()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f0f036a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    const v2, 0x7f0f0368

    const/16 v3, 0x432

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Lcom/google/googlenav/ui/android/f;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/android/f;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalFadingEdgeEnabled(Z)V

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const v1, 0x7f0f0369

    const/16 v2, 0x3a6

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v0

    if-ge v0, v5, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->j()I

    move-result v0

    if-ge v0, v5, :cond_2

    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    return v0
.end method

.method private e(Lcom/google/googlenav/aB;)I
    .locals 5

    const/4 v4, 0x0

    move v0, v4

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/D;->d()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/google/googlenav/D;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/googlenav/D;->g()I

    move-result v2

    const/high16 v3, -0x100

    if-ne v2, v3, :cond_0

    sget v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->m:I

    if-le v2, v1, :cond_0

    sget v1, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->m:I

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    :goto_2
    return v0

    :cond_3
    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->l:I

    goto :goto_2
.end method

.method private f(Lcom/google/googlenav/aB;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v0, v5

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/D;->d()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    const v0, 0x7f0f036c

    const/16 v3, 0x430

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    :cond_3
    const v0, 0x7f0f036d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Lcom/google/googlenav/ui/android/b;

    sget v4, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    invoke-direct {v3, p0, v2, v4}, Lcom/google/googlenav/ui/android/b;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    :goto_2
    const v0, 0x7f0f036e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Lcom/google/googlenav/ui/android/b;

    invoke-direct {v2, p0, v1, v5}, Lcom/google/googlenav/ui/android/b;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setStretchMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setNumColumns(I)V

    iget v1, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->p:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setColumnWidth(I)V

    sget v1, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVerticalSpacing(I)V

    sget v1, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setHorizontalSpacing(I)V

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setSelector(I)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVisibility(I)V

    sget v1, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    sget v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    invoke-virtual {v0, v5, v1, v5, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setPadding(IIII)V

    :goto_3
    return-void

    :cond_4
    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVisibility(I)V

    goto :goto_3
.end method

.method private i()Lcom/google/googlenav/ui/h;
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->f()Lcom/google/googlenav/ui/bx;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/h;

    return-object p0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i()Lcom/google/googlenav/ui/h;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/h;->a:Lcom/google/googlenav/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/aB;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/google/googlenav/android/c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/K;)Ljava/lang/CharSequence;
    .locals 9

    const/4 v1, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/K;->e()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/K;->a(I)Lcom/google/googlenav/aZ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/aZ;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v1, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/googlenav/aZ;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d00af

    invoke-direct {v3, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->a()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i()Lcom/google/googlenav/ui/h;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/h;->a:Lcom/google/googlenav/aB;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/aB;)V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    const/16 v0, 0x54

    const-string v1, "ts"

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i()Lcom/google/googlenav/ui/h;

    move-result-object v1

    iget-object v2, v1, Lcom/google/googlenav/ui/h;->a:Lcom/google/googlenav/aB;

    const v0, 0x7f0f0003

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->e(Lcom/google/googlenav/aB;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->p:I

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/aB;)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->f(Lcom/google/googlenav/aB;)V

    iget-object v0, v1, Lcom/google/googlenav/ui/h;->b:Li/x;

    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/aB;Li/x;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->setWillNotDraw(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i()Lcom/google/googlenav/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/h;->b()V

    return-void
.end method
