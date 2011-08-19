.class Laa/F;
.super Ljava/lang/Object;

# interfaces
.implements LQ/i;


# instance fields
.field private a:Laa/C;

.field private b:Laa/x;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laa/n;)V
    .locals 0

    invoke-direct {p0}, Laa/F;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 7

    iget-object v6, p0, Laa/F;->a:Laa/C;

    new-instance v0, Laa/B;

    const-string v1, "android_orientation"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Laa/B;-><init>(Ljava/lang/String;JFF)V

    invoke-interface {v6, v0}, Laa/C;->a(Laa/B;)V

    return-void
.end method

.method public a(Laa/C;)V
    .locals 0

    iput-object p1, p0, Laa/F;->a:Laa/C;

    return-void
.end method

.method public a(Laa/x;)V
    .locals 0

    iput-object p1, p0, Laa/F;->b:Laa/x;

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Laa/F;->b:Laa/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa/F;->b:Laa/x;

    invoke-interface {v0, p1}, Laa/x;->a(I)V

    :cond_0
    return-void
.end method
