.class Lau/d;
.super Ljava/lang/Object;

# interfaces
.implements Lt/o;


# instance fields
.field final synthetic a:Lau/e;


# direct methods
.method constructor <init>(Lau/e;)V
    .locals 0

    iput-object p1, p0, Lau/d;->a:Lau/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG/A;ILG/e;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lau/d;->a:Lau/e;

    invoke-static {v0, p3}, Lau/e;->a(Lau/e;LG/e;)V

    goto :goto_0
.end method
