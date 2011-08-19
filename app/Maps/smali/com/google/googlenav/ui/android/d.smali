.class public Lcom/google/googlenav/ui/android/d;
.super Lcom/google/googlenav/ui/P;


# instance fields
.field private d:Lcom/google/googlenav/ui/android/x;


# direct methods
.method public constructor <init>(Lf/v;Lcom/google/googlenav/ui/android/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/P;-><init>(Lf/v;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/d;->d:Lcom/google/googlenav/ui/android/x;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->d:Lcom/google/googlenav/ui/android/x;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/x;->a(I)I

    move-result v0

    return v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public a(LaF/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->d:Lcom/google/googlenav/ui/android/x;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/x;->a(LaF/a;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->d:Lcom/google/googlenav/ui/android/x;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/x;->a(Lcom/google/googlenav/ui/bo;)V

    return-void
.end method

.method protected a(Lf/l;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/d;->d:Lcom/google/googlenav/ui/android/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/android/x;->a(Lf/l;II)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/d;->c:Z

    return-void
.end method
