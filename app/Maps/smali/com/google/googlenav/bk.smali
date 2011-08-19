.class public Lcom/google/googlenav/bk;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/bk;->a:I

    iput-object p2, p0, Lcom/google/googlenav/bk;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/bk;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bk;->a:I

    return v0
.end method

.method public a(Lcom/google/googlenav/bk;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/googlenav/bk;->a:I

    iget v1, p1, Lcom/google/googlenav/bk;->a:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bk;->c:Ljava/lang/String;

    return-object v0
.end method
