.class public abstract LD/f;
.super Ljava/lang/Object;

# interfaces
.implements LD/j;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LD/f;->a:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LD/f;->a:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LD/f;->a:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LD/f;->a:Z

    return v0
.end method
