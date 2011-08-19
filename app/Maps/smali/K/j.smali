.class public LK/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:LK/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK/k;

    invoke-direct {v0}, LK/k;-><init>()V

    sput-object v0, LK/j;->a:LK/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/text/Spannable;
    .locals 1

    sget-object v0, LK/j;->a:LK/f;

    invoke-static {p0, p1, v0}, LK/j;->a(Landroid/content/Context;ILK/f;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;ILK/f;)Landroid/text/Spannable;
    .locals 4

    const v2, 0x15180

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_2

    :goto_0
    div-int v1, v0, v2

    rem-int v2, v0, v2

    div-int/lit16 v2, v2, 0xe10

    rem-int/lit16 v0, v0, 0xe10

    rem-int/lit16 v0, v0, 0xe10

    div-int/lit8 v0, v0, 0x3c

    if-lez v1, :cond_0

    invoke-interface {p2}, LK/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v2, p2}, LK/j;->a(Landroid/content/Context;Ljava/lang/String;IILK/f;)Landroid/text/Spannable;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    if-lez v2, :cond_1

    invoke-interface {p2}, LK/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2, v0, p2}, LK/j;->a(Landroid/content/Context;Ljava/lang/String;IILK/f;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {p2}, LK/f;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{0}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{0}"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-static {p0, v3, v1, v2, p2}, LK/j;->a(Landroid/content/Context;Landroid/text/Spannable;IILK/f;)V

    invoke-static {v3, v2, v0}, LK/j;->a(Landroid/text/Spannable;II)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p0, v3, v0, v1, p2}, LK/j;->a(Landroid/content/Context;Landroid/text/Spannable;IILK/f;)V

    move-object v0, v3

    goto :goto_1

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IILK/f;)Landroid/text/Spannable;
    .locals 9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{0}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "{1}"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "{0}"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "{1}"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int v7, v2, v4

    invoke-virtual {v6, v2, v7, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-le v3, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v4, v7

    sub-int/2addr v3, v4

    :cond_0
    add-int v4, v3, v5

    invoke-virtual {v6, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-le v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v5, v4

    sub-int/2addr v2, v4

    :cond_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, v6, v4, v3, p4}, LK/j;->a(Landroid/content/Context;Landroid/text/Spannable;IILK/f;)V

    invoke-static {v6, v3, v2}, LK/j;->a(Landroid/text/Spannable;II)V

    invoke-static {p0, v6, v2, v1, p4}, LK/j;->a(Landroid/content/Context;Landroid/text/Spannable;IILK/f;)V

    invoke-static {v6, v1, v0}, LK/j;->a(Landroid/text/Spannable;II)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p0, v6, v0, v1, p4}, LK/j;->a(Landroid/content/Context;Landroid/text/Spannable;IILK/f;)V

    return-object v6

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    move v8, v1

    move v1, v3

    move v3, v2

    move v2, v0

    move v0, v8

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/text/Spannable;IILK/f;)V
    .locals 4

    const/16 v3, 0x21

    if-le p3, p2, :cond_0

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f19999a

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/text/Spannable;II)V
    .locals 2

    if-le p2, p1, :cond_0

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method
