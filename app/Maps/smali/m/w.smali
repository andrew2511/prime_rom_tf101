.class public Lm/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lm/R;

.field private final c:I

.field private final d:LF/w;


# direct methods
.method protected constructor <init>(ILF/w;Ljava/lang/CharSequence;Lm/R;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm/w;->c:I

    iput-object p2, p0, Lm/w;->d:LF/w;

    instance-of v0, p3, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/text/Spanned;

    invoke-static {p3}, Lm/w;->a(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm/w;->a:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lm/w;->b:Lm/R;

    return-void

    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lm/w;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm/w;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, LF/C;

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move v2, v3

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object p0, v1, v2

    check-cast p0, LF/C;

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0}, LF/C;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/CharSequence;Lm/R;)Lm/w;
    .locals 2

    new-instance v0, Lm/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lm/w;-><init>(ILF/w;Ljava/lang/CharSequence;Lm/R;)V

    return-object v0
.end method

.method public static a(LF/w;Ljava/lang/CharSequence;Lm/R;)Lm/w;
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0}, LF/w;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v1, Lm/w;

    invoke-direct {v1, v0, p0, p1, p2}, Lm/w;-><init>(ILF/w;Ljava/lang/CharSequence;Lm/R;)V

    return-object v1

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lm/R;
    .locals 1

    iget-object v0, p0, Lm/w;->b:Lm/R;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lm/w;->c:I

    return v0
.end method

.method public d()LF/w;
    .locals 1

    iget-object v0, p0, Lm/w;->d:LF/w;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lm/w;

    if-eqz v0, :cond_1

    check-cast p1, Lm/w;

    iget-object v0, p1, Lm/w;->a:Ljava/lang/String;

    iget-object v1, p0, Lm/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lm/w;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
