.class public Lcom/google/googlenav/ui/android/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final a:Lx/U;

.field private final b:Lx/Q;


# direct methods
.method private constructor <init>(Lx/U;Lx/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/v;->b:Lx/Q;

    iput-object p1, p0, Lcom/google/googlenav/ui/android/v;->a:Lx/U;

    return-void
.end method

.method public static a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/android/v;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/ar;->a(Lx/U;)Lx/U;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/googlenav/ui/android/v;-><init>(Lx/U;Lx/Q;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/v;->a:Lx/U;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/v;->b:Lx/Q;

    invoke-interface {v0, v1}, Lx/U;->a(Lx/Q;)Z

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/v;->a:Lx/U;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/v;->b:Lx/Q;

    invoke-interface {v0, v1}, Lx/U;->b(Lx/Q;)Z

    move-result v0

    return v0
.end method
