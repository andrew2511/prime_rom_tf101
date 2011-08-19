.class public Lx/q;
.super Ljava/lang/Object;

# interfaces
.implements Lx/Q;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lx/q;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx/q;->a:I

    iput p2, p0, Lx/q;->b:I

    iput-object p3, p0, Lx/q;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lx/q;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lx/q;->b:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx/q;->c:Ljava/lang/Object;

    return-object v0
.end method
