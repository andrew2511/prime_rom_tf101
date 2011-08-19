.class public Lcom/google/googlenav/ui/android/SelfMeasuredListView;
.super Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/google/googlenav/ui/android/u;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    check-cast v0, Lcom/google/googlenav/ui/android/u;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/u;->a(I)I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    return-void

    :cond_0
    move v0, p2

    goto :goto_0
.end method
