.class public abstract Lw;
.super Ljava/lang/Object;

# interfaces
.implements LE;


# instance fields
.field private final a:LG;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG;

    invoke-direct {v0, p0}, LG;-><init>(LE;)V

    iput-object v0, p0, Lw;->a:LG;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lw;->a:LG;

    invoke-virtual {v0}, LG;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;[B)Z
    .locals 1

    iget-object v0, p0, Lw;->a:LG;

    invoke-virtual {v0, p1, p2}, LG;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lw;->a:LG;

    invoke-virtual {v0, p1}, LG;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
