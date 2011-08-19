.class public Lcom/google/googlenav/aX;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/googlenav/ui/av;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/ui/av;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/aX;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/aX;->b:Lcom/google/googlenav/ui/av;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aX;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/googlenav/ui/av;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aX;->b:Lcom/google/googlenav/ui/av;

    return-object v0
.end method
