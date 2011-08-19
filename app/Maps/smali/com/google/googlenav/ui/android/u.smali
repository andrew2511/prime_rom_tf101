.class public abstract Lcom/google/googlenav/ui/android/u;
.super Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v0, v4

    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/u;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0, v5, v5}, Lcom/google/googlenav/ui/android/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, -0x8000

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a:I

    add-int/2addr v0, v1

    return v0
.end method
