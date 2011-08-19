.class public Lcom/google/android/apps/circles/people/MultiLineLayout;
.super Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/circles/people/MultiLineLayout;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/circles/people/MultiLineLayout;Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/circles/people/MultiLineLayout;->measureChild(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    new-instance v0, Lcom/google/android/apps/circles/people/b;

    invoke-direct {v0, p0}, Lcom/google/android/apps/circles/people/b;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;)V

    sub-int v1, p4, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/circles/people/b;->a(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    new-instance v0, Lcom/google/android/apps/circles/people/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/circles/people/c;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;II)V

    const v1, 0x7fffffff

    invoke-static {v1, p1}, Lcom/google/android/apps/circles/people/MultiLineLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/circles/people/c;->a(I)V

    return-void
.end method
