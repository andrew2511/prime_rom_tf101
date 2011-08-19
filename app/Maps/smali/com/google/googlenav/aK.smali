.class public abstract Lcom/google/googlenav/aK;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aE;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/aK;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/aK;->a()V

    goto :goto_0
.end method

.method public abstract b()V
.end method
