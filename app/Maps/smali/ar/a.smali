.class Lar/a;
.super Lcom/google/android/location/internal/f;


# instance fields
.field final synthetic a:Lar/b;


# direct methods
.method constructor <init>(Lar/b;)V
    .locals 0

    iput-object p1, p0, Lar/a;->a:Lar/b;

    invoke-direct {p0}, Lcom/google/android/location/internal/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lar/a;->a:Lar/b;

    invoke-static {v0}, Lar/b;->a(Lar/b;)Lar/e;

    move-result-object v0

    invoke-virtual {v0}, Lar/e;->a()V

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lar/a;->a:Lar/b;

    invoke-static {v0}, Lar/b;->a(Lar/b;)Lar/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lar/e;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lar/a;->a:Lar/b;

    invoke-static {v0}, Lar/b;->a(Lar/b;)Lar/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lar/e;->a(Landroid/location/Location;)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lar/a;->a:Lar/b;

    invoke-static {v0}, Lar/b;->a(Lar/b;)Lar/e;

    move-result-object v0

    invoke-virtual {v0}, Lar/e;->b()V

    return-void
.end method
