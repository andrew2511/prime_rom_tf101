.class public Lcom/google/googlenav/ui/android/EditableTemplateView;
.super Lcom/google/googlenav/ui/android/TemplateView;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field protected final a:Landroid/text/SpannableStringBuilder;

.field private i:Landroid/widget/EditText;

.field private j:Lcom/google/googlenav/ui/view/android/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bx;IZ)I
    .locals 10

    const v9, 0x7f03004d

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;IZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    if-eqz p3, :cond_4

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    iget-object v3, v0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    move-object v0, p0

    move v4, v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Ljava/lang/CharSequence;ZLcom/google/googlenav/ui/av;ILx/U;Lx/Q;)Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    iget-object v0, v0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v0, v0

    move v3, p2

    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v4, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    aget-object v4, v4, v3

    iget-object v6, v4, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    sget-object v7, Lcom/google/googlenav/ui/av;->u:Lcom/google/googlenav/ui/av;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_4
    move v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v9, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    iget v2, p1, Lcom/google/googlenav/ui/bx;->B:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLines(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    move v1, v2

    goto/16 :goto_1
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->j:Lcom/google/googlenav/ui/view/android/e;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->j:Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bx;->j()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/EditableTemplateView;->h:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
