.class public Lcom/google/android/maps/driveabout/app/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static b:Lcom/google/android/maps/driveabout/app/t;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/maps/driveabout/app/ed;

.field private final e:C

.field private final f:C

.field private final g:Ljava/util/HashSet;

.field private final h:Ljava/util/HashSet;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:LF/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "%1$s"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/app/t;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    new-instance v0, Lcom/google/android/maps/driveabout/app/ed;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/ed;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->d:Lcom/google/android/maps/driveabout/app/ed;

    const v0, 0x7f0b00a3

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/t;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->h:Ljava/util/HashSet;

    const v0, 0x7f0b00a4

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/t;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->g:Ljava/util/HashSet;

    const v0, 0x7f0b0026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/google/android/maps/driveabout/app/t;->e:C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/google/android/maps/driveabout/app/t;->f:C

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 3

    const/16 v0, 0x20

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    if-le v0, p2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/t;->h:Ljava/util/HashSet;

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(IIIF)Landroid/text/Spannable;
    .locals 9

    const v8, 0x7f080044

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x21

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/t;->d:Lcom/google/android/maps/driveabout/app/ed;

    invoke-virtual {v1, p1, p2, v7, v0}, Lcom/google/android/maps/driveabout/app/ed;->a(IIZI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v2, v5

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    iget-char v4, p0, Lcom/google/android/maps/driveabout/app/t;->e:C

    if-ne v3, v4, :cond_9

    :cond_0
    if-lez v2, :cond_2

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_1

    new-instance v3, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v3}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f19999a

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_2

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    if-le v3, v2, :cond_6

    sub-int v4, v3, v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    iget-char v5, p0, Lcom/google/android/maps/driveabout/app/t;->f:C

    if-ne v4, v5, :cond_a

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_4

    new-instance v4, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v4}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    const/high16 v4, 0x3f80

    cmpl-float v4, p4, v4

    if-eqz v4, :cond_5

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_6

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v4, v3, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-ge v2, v3, :cond_7

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-object v1

    :cond_8
    move v0, v7

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private static a(LF/C;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;
    .locals 6

    const/16 v5, 0x21

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, LF/C;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/dr;

    const v2, 0x3f99999a

    invoke-direct {v1, p1, v2}, Lcom/google/android/maps/driveabout/app/dr;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, LF/C;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0}, LF/C;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const/high16 v4, 0x3f40

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/text/Spannable;
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIZ)Landroid/text/Spannable;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/high16 v1, 0x3fc0

    invoke-static {p0, v0, p2, v1, p3}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 3

    const v0, 0x7f020113

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;
    .locals 6

    const/16 v5, 0x21

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v4, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/dr;

    invoke-direct {v2, v1, p3}, Lcom/google/android/maps/driveabout/app/dr;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3fc0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spannable;
    .locals 10

    const-string v0, "%1$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v1, v0

    const-string v2, "%2$s"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v3, v2

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ge v0, v2, :cond_3

    move v5, v1

    move v6, v0

    move-object v0, p3

    move-object v1, p2

    move v9, v3

    move v3, v2

    move v2, v9

    :goto_0
    if-eqz p4, :cond_2

    if-lez v6, :cond_0

    const/4 v7, 0x0

    const v8, 0x3f19999a

    invoke-direct {p0, v4, v7, v6, v8}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    :cond_0
    if-ge v5, v3, :cond_1

    const v7, 0x3f19999a

    invoke-direct {p0, v4, v5, v3, v7}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const v8, 0x3f19999a

    invoke-direct {p0, v4, v2, v7, v8}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    :cond_2
    invoke-virtual {v4, v3, v2, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    const/16 v7, 0x21

    invoke-virtual {v4, v2, v3, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v6, v5, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    const/16 v2, 0x21

    invoke-virtual {v4, v0, v6, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v4

    :cond_3
    move v5, v3

    move v6, v2

    move v2, v1

    move v3, v0

    move-object v0, p2

    move-object v1, p3

    goto :goto_0
.end method

.method public static a()Lcom/google/android/maps/driveabout/app/t;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/t;->b:Lcom/google/android/maps/driveabout/app/t;

    return-object v0
.end method

.method public static a(Landroid/content/Context;LF/u;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, LF/u;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, LF/u;->f()LF/s;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LF/s;->a()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LF/s;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;LF/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, LF/u;->f()LF/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF/s;->a()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v4

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, LF/s;->a()I

    move-result v3

    if-ge v2, v3, :cond_4

    if-lez v2, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v2}, LF/s;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;LF/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_5

    move-object v0, v4

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    move-object v0, p0

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/C;

    invoke-virtual {v0}, LF/C;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, LF/C;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, LF/C;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/C;

    invoke-virtual {p0}, LF/C;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, LF/C;->e()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_5
    if-eqz v5, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_7
    invoke-virtual {p0}, LF/C;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(I)Ljava/util/HashSet;
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/t;->b:Lcom/google/android/maps/driveabout/app/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/t;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/t;->b:Lcom/google/android/maps/driveabout/app/t;

    :cond_0
    return-void
.end method

.method private a(Landroid/text/Spannable;IIF)V
    .locals 4

    const/16 v3, 0x21

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, LF/C;

    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object p0, v0, v1

    check-cast p0, LF/C;

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;LF/y;LF/C;I)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, LF/C;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    invoke-static {v0, p2}, LF/D;->a(Landroid/content/Context;LF/y;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "  "

    invoke-virtual {p1, p4, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dr;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dr;-><init>(Landroid/graphics/drawable/Drawable;F)V

    add-int/lit8 v0, p4, 0x1

    const/16 v2, 0x21

    invoke-virtual {p1, v1, p4, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Lt/ae;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, LF/C;

    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object p0, v0, v1

    check-cast p0, LF/C;

    const/4 v2, 0x0

    invoke-virtual {p0}, LF/C;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lt/w;->c()Lt/w;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, LF/C;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lt/w;->a(Ljava/lang/String;Lt/ae;)Lt/aB;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lt/aB;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lt/aB;->c()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lt/aB;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-static {p0, v2}, Lcom/google/android/maps/driveabout/app/t;->a(LF/C;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)I
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x20

    sub-int v1, p2, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    sub-int v1, p2, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/t;->g:Ljava/util/HashSet;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    const/16 v5, 0x21

    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f0b00b7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "%2$s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget v3, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v0, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%1$s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sget v3, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v3, v1

    const-string v4, " "

    invoke-virtual {v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Lcom/google/android/maps/driveabout/app/dr;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v0, v4}, Lcom/google/android/maps/driveabout/app/dr;-><init>(Landroid/graphics/drawable/Drawable;F)V

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v3, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public static b(Landroid/content/Context;LF/u;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;LF/u;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(LF/C;)Z
    .locals 1

    invoke-virtual {p1}, LF/C;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LF/C;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/t;->b(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a(LF/C;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->j:LF/C;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->i:Landroid/graphics/drawable/Drawable;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, LF/C;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, LF/C;->g()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    monitor-enter p0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->i:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/t;->j:LF/C;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    invoke-virtual {p1}, LF/C;->g()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public a(II)Landroid/text/Spannable;
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/android/maps/driveabout/app/t;->a(IIIF)Landroid/text/Spannable;

    move-result-object v2

    const-string v3, "%1$s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget v3, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v1
.end method

.method public a(III)Landroid/text/Spannable;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/SpannableString;

    const-string v2, " "

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ScaleXSpan;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p1, p3, v5}, Lcom/google/android/maps/driveabout/app/t;->a(IIZ)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p2, v5}, Lcom/google/android/maps/driveabout/app/t;->a(IZ)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public a(IIZ)Landroid/text/Spannable;
    .locals 2

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v1, 0x3f19999a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/app/t;->a(IIIF)Landroid/text/Spannable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(ILF/y;I)Landroid/text/Spannable;
    .locals 4

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/maps/driveabout/app/t;->b(LF/y;Lt/ae;)Landroid/text/Spannable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "%1$s"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p3, v3}, Lcom/google/android/maps/driveabout/app/t;->a(IIZ)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "%2$s"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2}, LF/y;->n()Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0
.end method

.method public a(IZ)Landroid/text/Spannable;
    .locals 9

    const v7, 0x3f19999a

    const/4 v6, 0x1

    const/4 v5, 0x0

    div-int/lit16 v0, p1, 0xe10

    div-int/lit8 v0, v0, 0x18

    const v1, 0x15180

    rem-int v1, p1, v1

    div-int/lit16 v2, v1, 0xe10

    rem-int/lit16 v1, v1, 0xe10

    add-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x3c

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_1

    if-gtz v2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    :cond_1
    if-lez v0, :cond_2

    const/16 v3, 0x1e

    if-le v1, v3, :cond_b

    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v5

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0, v6}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spannable;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    if-gtz v2, :cond_3

    if-eqz p2, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    if-eqz p2, :cond_4

    const v3, 0x7f0b002b

    :goto_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_9

    const/16 v4, 0xa

    if-ge v1, v4, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-nez p2, :cond_5

    move v3, v6

    :goto_4
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_1

    :cond_4
    const v3, 0x7f0b0029

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    const v2, 0x7f0b002a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%1$s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v3, v2

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-lez v2, :cond_7

    invoke-direct {p0, v4, v5, v2, v7}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v4, v3, v0, v7}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v3, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    const/16 v3, 0x21

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v4

    goto :goto_1

    :cond_9
    move-object v1, v3

    goto :goto_3

    :cond_a
    move v8, v1

    move v1, v0

    move v0, v8

    goto/16 :goto_0

    :cond_b
    move v1, v0

    move v0, v2

    goto/16 :goto_0
.end method

.method a(LF/C;Lt/ae;)Landroid/text/Spannable;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, LF/C;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lt/w;->c()Lt/w;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LF/C;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lt/w;->a(Ljava/lang/String;Lt/ae;)Lt/aB;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lt/aB;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lt/aB;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lt/aB;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/t;->a(LF/C;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, LF/C;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/t;->a(LF/C;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LF/C;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_1
.end method

.method public a(LF/n;)Landroid/text/Spannable;
    .locals 5

    invoke-virtual {p1}, LF/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LF/n;->a()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(LF/y;IILt/ae;)Landroid/text/Spannable;
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float/2addr v5, v6

    const v6, 0x3f19999a

    mul-float/2addr v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v6

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(IIIF)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, LF/y;->v()LF/C;

    move-result-object v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, LF/y;->w()LF/C;

    move-result-object v9

    if-eqz v9, :cond_5

    if-eqz v7, :cond_0

    invoke-virtual/range {p1 .. p1}, LF/y;->v()LF/C;

    move-result-object v9

    invoke-virtual {v9}, LF/C;->d()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    :cond_0
    invoke-virtual/range {p1 .. p1}, LF/y;->w()LF/C;

    move-result-object v7

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0b001b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%1$s"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const-string v10, "%2$s"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    sget v14, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v14, v12

    sget v15, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v15, v13

    if-lez v12, :cond_1

    new-instance v16, Landroid/text/style/RelativeSizeSpan;

    move-object/from16 v0, v16

    move v1, v5

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v17, 0x0

    const/16 v18, 0x21

    move-object v0, v11

    move-object/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v16, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080044

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v17, 0x0

    const/16 v18, 0x21

    move-object v0, v11

    move-object/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    if-le v13, v14, :cond_2

    new-instance v12, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v12, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v16, 0x21

    move-object v0, v11

    move-object v1, v12

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f080044

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v16, 0x21

    move-object v0, v11

    move-object v1, v12

    move v2, v14

    move v3, v13

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v15, v12, :cond_3

    new-instance v12, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v12, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v13, 0x21

    invoke-virtual {v11, v12, v15, v5, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080044

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v5, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v12, 0x21

    invoke-virtual {v11, v5, v15, v8, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    if-nez v7, :cond_6

    const-string v5, ""

    :goto_2
    if-le v10, v9, :cond_7

    sget v8, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v8, v10

    invoke-virtual {v11, v10, v8, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/SpannableStringBuilder;LF/y;LF/C;I)V

    sget v5, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v5, v9

    invoke-virtual {v11, v9, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_3
    return-object v11

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    if-eqz v7, :cond_8

    invoke-virtual/range {p1 .. p1}, LF/y;->v()LF/C;

    move-result-object v7

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/t;->a(LF/C;Lt/ae;)Landroid/text/Spannable;

    move-result-object v5

    goto :goto_2

    :cond_7
    sget v8, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v8, v9

    invoke-virtual {v11, v9, v8, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v6, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v6, v10

    invoke-virtual {v11, v10, v6, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/SpannableStringBuilder;LF/y;LF/C;I)V

    goto :goto_3

    :cond_8
    move-object v7, v8

    goto/16 :goto_1
.end method

.method public a(LF/y;Lt/ae;)Landroid/text/Spannable;
    .locals 4

    invoke-virtual {p1}, LF/y;->v()LF/C;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/t;->a(LF/C;Lt/ae;)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget v1, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v3
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 6

    const/4 v3, 0x0

    const v4, 0x3f19999a

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/t;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/t;->c(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    :goto_0
    if-lez v2, :cond_0

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    :cond_1
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v0, v3, v2, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    :cond_2
    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0
.end method

.method public a(J)Ljava/lang/CharSequence;
    .locals 11

    const v10, 0xef01

    const v9, 0xef00

    const/16 v8, 0x21

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, -0x1

    move v2, v6

    move v3, v6

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_0

    if-nez v3, :cond_3

    move v3, v7

    :cond_0
    :goto_2
    if-nez v3, :cond_4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_4

    move v1, v2

    :cond_1
    if-ltz v1, :cond_6

    move v2, v1

    :goto_3
    if-lez v2, :cond_5

    sub-int v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    const-string v0, "HH:mm"

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v2, :cond_9

    if-le v0, v2, :cond_9

    const v3, 0x3f19999a

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    if-lez v2, :cond_7

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v3, v6, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v7

    if-ge v0, v3, :cond_8

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_4
    return-object v1

    :cond_9
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v6, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4
.end method

.method public a(Ljava/util/Collection;IILandroid/text/TextPaint;ILt/ae;)Ljava/lang/CharSequence;
    .locals 18

    const v5, 0x7f0b0007

    move/from16 v0, p5

    move v1, v5

    if-eq v0, v1, :cond_0

    const v5, 0x7f0b0008

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v7, "%1$s"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    sget v8, Lcom/google/android/maps/driveabout/app/t;->a:I

    add-int/2addr v8, v7

    if-lez v7, :cond_1

    const/4 v9, 0x0

    const v10, 0x3f19999a

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v9

    move v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const v9, 0x3f19999a

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v8

    move v3, v5

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/Spannable;IIF)V

    :cond_2
    const-string v5, ""

    invoke-virtual {v6, v7, v8, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object v5, v0

    const v9, 0x7f0b0009

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, " "

    const v10, 0x7f0b0009

    move/from16 v0, p5

    move v1, v10

    if-ne v0, v1, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080044

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/2addr v7, v10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/2addr v8, v10

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v17, v12

    move v12, v10

    move v10, v7

    move-object/from16 v7, v17

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    move v0, v12

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, LF/C;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/t;->a(LF/C;Lt/ae;)Landroid/text/Spannable;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v14

    move v0, v14

    move/from16 v1, p2

    if-gt v0, v1, :cond_5

    invoke-virtual {v6, v10, v13}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v13}, Landroid/text/Spannable;->length()I

    move-result v7

    add-int/2addr v7, v10

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "\n"

    invoke-virtual {v6, v7, v10}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, 0x1

    move v10, v11

    move v11, v12

    :goto_2
    move v12, v11

    move v11, v10

    move v10, v7

    move-object/from16 v7, p5

    goto :goto_1

    :cond_4
    const-string v5, "%1$s"

    goto/16 :goto_0

    :cond_5
    if-nez v7, :cond_6

    invoke-virtual {v6, v10, v13}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v13}, Landroid/text/Spannable;->length()I

    move-result v7

    add-int/2addr v7, v10

    move v10, v11

    move v11, v12

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/t;->b(LF/C;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v7}, LF/C;->e()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/t;->b(LF/C;)Z

    move-result v7

    if-nez v7, :cond_c

    move-object v7, v5

    :goto_3
    invoke-virtual {v6, v10, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v6, v14, v13}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v13}, Landroid/text/Spannable;->length()I

    move-result v13

    add-int/2addr v13, v14

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    move-object v0, v6

    move v1, v11

    move v2, v14

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v14

    move/from16 v0, p3

    int-to-float v0, v0

    move v15, v0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    const/4 v11, 0x1

    sub-int v11, p2, v11

    if-ge v12, v11, :cond_8

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v10

    const-string v14, "\n"

    invoke-virtual {v6, v10, v11, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    sub-int v7, v13, v7

    add-int/lit8 v11, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v6, v10, v13}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object v5, v6

    :goto_4
    return-object v5

    :cond_9
    if-eq v7, v9, :cond_a

    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080044

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/2addr v7, v10

    const/16 v15, 0x21

    invoke-virtual {v6, v14, v10, v7, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    move v7, v13

    move v10, v11

    move v11, v12

    goto/16 :goto_2

    :cond_b
    move-object v5, v6

    goto :goto_4

    :cond_c
    move-object v7, v9

    goto :goto_3

    :cond_d
    move v10, v11

    move v11, v12

    goto/16 :goto_2
.end method

.method public a(LF/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/t;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;LF/u;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(LF/y;Lt/ae;)Landroid/text/Spannable;
    .locals 2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, LF/y;->n()Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/text/SpannableStringBuilder;Lt/ae;)V

    return-object v0
.end method
