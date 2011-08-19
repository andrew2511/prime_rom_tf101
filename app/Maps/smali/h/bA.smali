.class public Lh/bA;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lh/cx;

.field private b:Lh/o;

.field private c:Lh/eN;


# direct methods
.method public constructor <init>(Lh/cx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/bA;->a:Lh/cx;

    new-instance v0, Lh/o;

    invoke-direct {v0, p0}, Lh/o;-><init>(Lh/bA;)V

    iput-object v0, p0, Lh/bA;->b:Lh/o;

    return-void
.end method


# virtual methods
.method public a()Lh/o;
    .locals 1

    iget-object v0, p0, Lh/bA;->b:Lh/o;

    return-object v0
.end method

.method public a(Lh/eN;)V
    .locals 0

    iput-object p1, p0, Lh/bA;->c:Lh/eN;

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
