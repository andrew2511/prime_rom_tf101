.class public LaB/e;
.super Ljava/lang/Object;

# interfaces
.implements Lk/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaB/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Lk/l;
    .locals 3

    new-instance v0, LaB/f;

    iget-object v1, p0, LaB/e;->a:Landroid/content/Context;

    sget-object v2, LaB/d;->a:LaB/d;

    invoke-direct {v0, v1, p1, v2}, LaB/f;-><init>(Landroid/content/Context;ILaB/d;)V

    return-object v0
.end method

.method public a(II)Lk/l;
    .locals 1

    new-instance v0, LaB/f;

    invoke-direct {v0, p1, p2}, LaB/f;-><init>(II)V

    return-object v0
.end method

.method public a(IIZ)Lk/l;
    .locals 1

    new-instance v0, LaB/f;

    invoke-direct {v0, p1, p2, p3}, LaB/f;-><init>(IIZ)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lk/l;
    .locals 4

    iget-object v0, p0, LaB/e;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    :cond_0
    new-instance v0, LaB/f;

    iget-object v1, p0, LaB/e;->a:Landroid/content/Context;

    iget-object v2, p0, LaB/e;->b:Ljava/util/Map;

    sget-object v3, LaB/d;->b:LaB/d;

    invoke-direct {v0, v1, v2, p1, v3}, LaB/f;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;LaB/d;)V

    return-object v0
.end method

.method public a([BII)Lk/l;
    .locals 1

    new-instance v0, LaB/f;

    invoke-direct {v0, p1, p2, p3}, LaB/f;-><init>([BII)V

    return-object v0
.end method

.method public a([IIIZ)Lk/l;
    .locals 1

    new-instance v0, LaB/f;

    invoke-direct {v0, p1, p2, p3, p4}, LaB/f;-><init>([IIIZ)V

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, LaB/e;->b:Ljava/util/Map;

    return-void
.end method

.method public b(I)Lk/l;
    .locals 3

    new-instance v0, LaB/f;

    iget-object v1, p0, LaB/e;->a:Landroid/content/Context;

    sget-object v2, LaB/d;->b:LaB/d;

    invoke-direct {v0, v1, p1, v2}, LaB/f;-><init>(Landroid/content/Context;ILaB/d;)V

    return-object v0
.end method
