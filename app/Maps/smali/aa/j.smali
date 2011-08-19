.class Laa/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Laa/D;


# direct methods
.method private constructor <init>(Laa/D;)V
    .locals 0

    iput-object p1, p0, Laa/j;->a:Laa/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laa/D;Laa/n;)V
    .locals 0

    invoke-direct {p0, p1}, Laa/j;-><init>(Laa/D;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 4

    iget-object v0, p0, Laa/j;->a:Laa/D;

    invoke-static {v0}, Laa/D;->a(Laa/D;)Laa/g;

    move-result-object v0

    invoke-interface {v0}, Laa/g;->c()Laa/k;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lah/g;

    invoke-virtual {v0}, Laa/k;->a()I

    move-result v2

    invoke-virtual {v0}, Laa/k;->b()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lah/g;-><init>(III)V

    invoke-static {v1}, LaT/d;->b(LaT/f;)V

    iget-object v1, p0, Laa/j;->a:Laa/D;

    invoke-static {v1}, Laa/D;->c(Laa/D;)Laa/A;

    move-result-object v1

    invoke-virtual {v1, v0}, Laa/A;->a(Laa/k;)V

    :cond_0
    return-void
.end method
