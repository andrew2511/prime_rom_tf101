.class public Lg/g;
.super Lg/f;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/lang/Object;

.field private c:Lp/b;

.field private d:Ly/k;

.field private e:LT/c;

.field private f:LT/d;

.field private g:I


# direct methods
.method public constructor <init>(Lp/b;LT/c;Ly/k;)V
    .locals 3

    invoke-direct {p0}, Lg/f;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lg/g;->a:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/g;->b:Ljava/lang/Object;

    const/16 v0, 0x4000

    iput v0, p0, Lg/g;->g:I

    iput-object p1, p0, Lg/g;->c:Lp/b;

    iput-object p2, p0, Lg/g;->e:LT/c;

    iput-object p3, p0, Lg/g;->d:Ly/k;

    new-instance v0, LT/d;

    new-instance v1, Lg/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/n;-><init>(Lg/g;Lg/l;)V

    invoke-direct {v0, p2, v1}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lg/g;->f:LT/d;

    return-void
.end method

.method static synthetic a(Lg/g;)Ly/k;
    .locals 1

    iget-object v0, p0, Lg/g;->d:Ly/k;

    return-object v0
.end method

.method static synthetic b(Lg/g;)I
    .locals 1

    iget v0, p0, Lg/g;->g:I

    return v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lg/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lg/g;)Lp/b;
    .locals 1

    iget-object v0, p0, Lg/g;->c:Lp/b;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MASF"

    invoke-static {v0, p0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lg/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lg/g;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lg/g;->a:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic f(Lg/g;)LT/c;
    .locals 1

    iget-object v0, p0, Lg/g;->e:LT/c;

    return-object v0
.end method

.method static synthetic g(Lg/g;)LT/d;
    .locals 1

    iget-object v0, p0, Lg/g;->f:LT/d;

    return-object v0
.end method
