.class public Lcom/google/googlenav/ui/view/android/rideabout/i;
.super Ljava/lang/Object;


# static fields
.field private static f:I

.field private static g:I


# instance fields
.field final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/content/Context;

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->f:I

    sput v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->d:I

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->e:I

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/rideabout/g;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/i;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->a:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/v;->a:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(Landroid/widget/TextView;Ljava/util/regex/Pattern;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/android/v;->b:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(Landroid/widget/TextView;Ljava/util/regex/Pattern;)Z

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x399

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/util/regex/Pattern;)Z
    .locals 7

    const/16 v6, 0x21

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3, v0, v2, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v0, v2, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static c(I)I
    .locals 1

    sget v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->f:I

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/rideabout/i;->e(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->g:I

    sput p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->f:I

    :cond_0
    sget v0, Lcom/google/googlenav/ui/view/android/rideabout/i;->g:I

    return v0
.end method

.method private static d(I)F
    .locals 4

    const/high16 v0, 0xff

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, p0, 0xff

    int-to-float v0, v0

    const v3, 0x3e991687

    mul-float/2addr v0, v3

    int-to-float v1, v1

    const v3, 0x3f1645a2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    int-to-float v1, v2

    const v2, 0x3de978d5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static e(I)I
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/rideabout/i;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const v0, 0xffffff

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:I

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/i;->d(I)F

    move-result v0

    const/high16 v1, 0x4316

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->d:I

    if-eq p1, v0, :cond_2

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/i;->b(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->e:I

    iput p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->d:I

    :cond_2
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->e:I

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Landroid/view/View;
    .locals 6

    const/16 v5, 0x21

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    const v3, 0x7f0d00c8

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/a;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/a;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 6

    const/16 v5, 0x21

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    const v3, 0x7f0d00c5

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x398

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    const v3, 0x7f0d00cb

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const v0, 0x7f020343

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    return-object v1
.end method

.method public b(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    const v2, 0x7f0d00cc

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Landroid/content/Context;

    const v3, 0x7f0d00ca

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
