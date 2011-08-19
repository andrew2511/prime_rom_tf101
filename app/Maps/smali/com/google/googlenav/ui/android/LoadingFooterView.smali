.class public Lcom/google/googlenav/ui/android/LoadingFooterView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lx/x;

.field private b:Lx/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lx/x;Lx/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->a:Lx/x;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->b:Lx/q;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->a:Lx/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->a:Lx/x;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->b:Lx/q;

    invoke-interface {v0, v1}, Lx/x;->a(Lx/Q;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
