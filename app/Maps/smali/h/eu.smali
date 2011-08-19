.class Lh/eu;
.super Ljava/lang/Object;

# interfaces
.implements Lo/am;


# instance fields
.field final synthetic a:Lh/eG;


# direct methods
.method constructor <init>(Lh/eG;)V
    .locals 0

    iput-object p1, p0, Lh/eu;->a:Lh/eG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/eu;->a:Lh/eG;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh/eG;->a(Lh/eG;Z)Z

    iget-object v0, p0, Lh/eu;->a:Lh/eG;

    invoke-virtual {v0}, Lh/eG;->h()V

    return-void
.end method
