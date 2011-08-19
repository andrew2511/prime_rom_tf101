.class Lcom/google/googlenav/ui/view/android/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/android/bj;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/bj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/o;->a:Lcom/google/googlenav/ui/view/android/bj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/bj;Lcom/google/googlenav/ui/view/android/M;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/o;-><init>(Lcom/google/googlenav/ui/view/android/bj;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->a:Lcom/google/googlenav/ui/view/android/bj;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/bj;->a(Lcom/google/googlenav/ui/view/android/bj;Z)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
