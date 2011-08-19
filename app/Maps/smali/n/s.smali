.class public abstract Ln/s;
.super Ljava/lang/Object;

# interfaces
.implements Ln/a;


# instance fields
.field private final a:Ln/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln/h;

    invoke-direct {v0, p0}, Ln/h;-><init>(Ln/a;)V

    iput-object v0, p0, Ln/s;->a:Ln/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ln/s;->a:Ln/h;

    invoke-virtual {v0}, Ln/h;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Ln/s;->a:Ln/h;

    invoke-virtual {v0, p1}, Ln/h;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)Z
    .locals 1

    iget-object v0, p0, Ln/s;->a:Ln/h;

    invoke-virtual {v0, p1, p2}, Ln/h;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public b_(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Ln/s;->a:Ln/h;

    invoke-virtual {v0, p1}, Ln/h;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
