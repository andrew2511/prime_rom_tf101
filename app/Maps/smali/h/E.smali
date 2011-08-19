.class Lh/E;
.super Ljava/lang/Object;

# interfaces
.implements LaD/n;


# instance fields
.field private final a:Lx/J;


# direct methods
.method public constructor <init>(Lx/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/E;->a:Lx/J;

    return-void
.end method


# virtual methods
.method public ar_()V
    .locals 1

    iget-object v0, p0, Lh/E;->a:Lx/J;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lh/E;->a:Lx/J;

    check-cast p0, Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->e()V

    :cond_0
    return-void
.end method
