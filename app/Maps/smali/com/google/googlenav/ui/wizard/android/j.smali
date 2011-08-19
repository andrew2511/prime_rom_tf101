.class Lcom/google/googlenav/ui/wizard/android/j;
.super Ljava/lang/Object;

# interfaces
.implements Lh/aZ;


# instance fields
.field final synthetic a:Lh/dP;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/android/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/android/f;Lh/dP;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/j;->b:Lcom/google/googlenav/ui/wizard/android/f;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/android/j;->a:Lh/dP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Law/e;)V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/wizard/android/m;->a:[I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/android/j;->a:Lh/dP;

    invoke-virtual {v2}, Lh/dP;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/j;->b:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/android/f;->g(Lcom/google/googlenav/ui/wizard/android/f;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x127

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/j;->b:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/android/f;->f(Lcom/google/googlenav/ui/wizard/android/f;)LI/C;

    move-result-object v1

    invoke-virtual {v1, v0}, LI/C;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/j;->b:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/android/f;->f(Lcom/google/googlenav/ui/wizard/android/f;)LI/C;

    move-result-object v1

    invoke-virtual {v1, v0}, LI/C;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
