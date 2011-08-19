.class public Lcom/google/googlenav/ui/view/android/ak;
.super Lcom/google/googlenav/ui/view/android/B;

# interfaces
.implements Lx/M;


# instance fields
.field private final c:Lcom/google/googlenav/ui/view/android/z;


# direct methods
.method public constructor <init>(Lx/B;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/B;-><init>(Lx/B;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ak;->a:Lcom/google/googlenav/ui/view/android/a;

    check-cast v0, Lcom/google/googlenav/ui/view/android/z;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ak;->c:Lcom/google/googlenav/ui/view/android/z;

    return-void
.end method


# virtual methods
.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ak;->c:Lcom/google/googlenav/ui/view/android/z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/z;->n()V

    return-void
.end method
