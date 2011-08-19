.class public Lcom/google/android/finsky/fragments/DetailsTextViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsTextViewBinder.java"


# instance fields
.field private mFullHeight:I

.field private mTruncatedHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->mFullHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->mFullHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->mTruncatedHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->mTruncatedHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;Landroid/view/View;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->animateContentHeight(Landroid/view/View;II)V

    return-void
.end method

.method private animateContentHeight(Landroid/view/View;II)V
    .locals 5
    .parameter "view"
    .parameter "heightBefore"
    .parameter "heightAfter"

    .prologue
    .line 52
    const-string v2, "maxHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 v4, 0x1

    aput p3, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 53
    .local v0, animator:Landroid/animation/Animator;
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->getDuration(II)I

    move-result v1

    .line 54
    .local v1, duration:I
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 55
    return-void
.end method

.method private getDuration(II)I
    .locals 5
    .parameter "heightBefore"
    .parameter "heightAfter"

    .prologue
    .line 43
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 44
    .local v2, minHeight:I
    sub-int v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v0, v3

    .line 45
    .local v0, difference:F
    mul-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-float v3, v0, v3

    const/high16 v4, 0x437a

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 46
    .local v1, duration:I
    const/16 v3, 0xfa

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 47
    const/16 v3, 0x2ee

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 48
    return v1
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;)V
    .locals 7
    .parameter "view"
    .parameter "doc"
    .parameter "headerStringId"
    .parameter "content"

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 59
    const v2, 0x7f090022

    invoke-super {p0, p1, p2, v2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 61
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    .local v0, contentView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 73
    .local v1, oldContent:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    :cond_2
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iput v6, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->mFullHeight:I

    .line 80
    iput v6, p0, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->mTruncatedHeight:I

    .line 81
    const v2, 0x7f090026

    invoke-virtual {p0, v2, v5, v4}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonVisibility(III)V

    .line 82
    const v2, 0x7f090027

    invoke-virtual {p0, v2, v5, v4}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder;->setButtonVisibility(III)V

    .line 86
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 87
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/fragments/DetailsTextViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/DetailsTextViewBinder;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
