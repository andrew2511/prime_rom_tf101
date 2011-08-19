.class public Lcom/google/googlenav/gesture/v;
.super Lcom/google/googlenav/gesture/b;


# instance fields
.field private final a:Lcom/google/googlenav/gesture/w;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/gesture/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/b;-><init>(I)V

    iput-object p2, p0, Lcom/google/googlenav/gesture/v;->a:Lcom/google/googlenav/gesture/w;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/v;->a:Lcom/google/googlenav/gesture/w;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/w;->h()F

    move-result v0

    return v0
.end method
