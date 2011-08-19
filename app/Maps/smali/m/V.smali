.class public Lm/V;
.super Lm/p;


# instance fields
.field private final a:Landroid/os/Vibrator;

.field private final b:[J


# direct methods
.method public constructor <init>(Landroid/os/Vibrator;[J)V
    .locals 0

    invoke-direct {p0}, Lm/p;-><init>()V

    iput-object p1, p0, Lm/V;->a:Landroid/os/Vibrator;

    iput-object p2, p0, Lm/V;->b:[J

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lm/I;)V
    .locals 3

    iget-object v0, p0, Lm/V;->a:Landroid/os/Vibrator;

    iget-object v1, p0, Lm/V;->b:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lm/I;->a(Lm/p;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
