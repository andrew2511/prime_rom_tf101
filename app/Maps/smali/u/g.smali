.class public Lu/g;
.super Ljava/lang/Object;

# interfaces
.implements Lu/n;


# instance fields
.field private a:Lu/h;

.field private b:Lu/h;

.field private c:Law/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu/g;->a:Lu/h;

    iput-object v0, p0, Lu/g;->b:Lu/h;

    iput-object v0, p0, Lu/g;->c:Law/e;

    return-void
.end method

.method public constructor <init>(Lu/h;Lu/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu/g;->a:Lu/h;

    iput-object v0, p0, Lu/g;->b:Lu/h;

    iput-object v0, p0, Lu/g;->c:Law/e;

    iput-object p1, p0, Lu/g;->a:Lu/h;

    iput-object p2, p0, Lu/g;->b:Lu/h;

    return-void
.end method

.method public constructor <init>(Lu/h;Lu/h;Law/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lu/g;-><init>(Lu/h;Lu/h;)V

    iput-object p3, p0, Lu/g;->c:Law/e;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Law/e;)V
    .locals 0

    iput-object p1, p0, Lu/g;->c:Law/e;

    return-void
.end method

.method public a(Lu/h;)V
    .locals 0

    iput-object p1, p0, Lu/g;->a:Lu/h;

    return-void
.end method

.method public b(Lu/h;)V
    .locals 0

    iput-object p1, p0, Lu/g;->b:Lu/h;

    return-void
.end method

.method public b_()[Lf/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j_()Lu/h;
    .locals 1

    iget-object v0, p0, Lu/g;->a:Lu/h;

    return-object v0
.end method

.method public k_()Lu/h;
    .locals 1

    iget-object v0, p0, Lu/g;->b:Lu/h;

    return-object v0
.end method

.method public l_()Law/e;
    .locals 1

    iget-object v0, p0, Lu/g;->c:Law/e;

    return-object v0
.end method
