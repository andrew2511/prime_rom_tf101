.class public abstract LQ/g;
.super Ljava/lang/Object;


# static fields
.field private static a:LQ/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, LQ/g;->a:LQ/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LQ/g;)V
    .locals 0

    sput-object p0, LQ/g;->a:LQ/g;

    return-void
.end method

.method public static j()LQ/g;
    .locals 1

    sget-object v0, LQ/g;->a:LQ/g;

    return-object v0
.end method


# virtual methods
.method public abstract a(LQ/i;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()I
.end method

.method public abstract b(LQ/i;)V
.end method

.method public abstract c()Z
.end method

.method public abstract d()F
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method

.method public h()V
    .locals 0

    invoke-virtual {p0}, LQ/g;->f()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, LQ/g;->e()V

    return-void
.end method
