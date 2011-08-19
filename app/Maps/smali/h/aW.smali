.class Lh/aW;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/an;


# instance fields
.field final synthetic a:Lh/fQ;


# direct methods
.method constructor <init>(Lh/fQ;)V
    .locals 0

    iput-object p1, p0, Lh/aW;->a:Lh/fQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/c;)V
    .locals 2

    iget-object v0, p0, Lh/aW;->a:Lh/fQ;

    invoke-static {p1}, Lu/h;->b(Lcom/google/googlenav/c;)Lu/h;

    move-result-object v1

    invoke-static {v0, v1}, Lh/fQ;->a(Lh/fQ;Lu/h;)V

    return-void
.end method
