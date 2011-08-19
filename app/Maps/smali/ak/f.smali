.class public abstract Lak/f;
.super Ljava/lang/Object;

# interfaces
.implements Lak/i;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lak/f;->a:Z

    return-void
.end method


# virtual methods
.method public X_()V
    .locals 1

    iget-boolean v0, p0, Lak/f;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lak/f;->a:Z

    invoke-virtual {p0}, Lak/f;->a()V

    :cond_0
    return-void
.end method

.method public abstract a()V
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lak/f;->a:Z

    return v0
.end method
