.class public Lcom/google/googlenav/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lf/h;

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/google/googlenav/k;-><init>(Ljava/lang/String;III)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/googlenav/k;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/googlenav/k;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/k;->a:Ljava/lang/String;

    new-instance v0, Lf/h;

    invoke-direct {v0, p2, p3}, Lf/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/k;->b:Lf/h;

    iput p4, p0, Lcom/google/googlenav/k;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/k;->b:Lf/h;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/k;->c:I

    return v0
.end method

.method public d()Lu/h;
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/googlenav/k;->c:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lu/h;->a(Ljava/lang/String;Lf/h;)Lu/h;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/k;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/k;->b:Lf/h;

    invoke-static {v0, v1}, Lu/h;->a(Ljava/lang/String;Lf/h;)Lu/h;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lu/h;->a()Lu/h;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/googlenav/k;->b:Lf/h;

    invoke-static {v0}, Lu/h;->a(Lf/h;)Lu/h;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
