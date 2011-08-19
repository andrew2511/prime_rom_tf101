.class public Lh/fK;
.super Ljava/lang/Object;


# instance fields
.field private a:Lh/fA;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lh/fK;)Lh/fA;
    .locals 1

    iget-object v0, p0, Lh/fK;->a:Lh/fA;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lo/t;

    new-instance v1, Lh/dX;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh/dX;-><init>(Lh/fK;Lh/fL;)V

    invoke-direct {v0, v1}, Lo/t;-><init>(Lo/ca;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Lh/fA;)V
    .locals 0

    iput-object p1, p0, Lh/fK;->a:Lh/fA;

    return-void
.end method
