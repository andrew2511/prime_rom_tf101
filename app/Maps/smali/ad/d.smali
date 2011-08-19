.class public Lad/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lad/n;


# direct methods
.method public constructor <init>(Lad/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/d;->a:Lad/n;

    return-void
.end method


# virtual methods
.method public a()Lad/l;
    .locals 3

    new-instance v0, Lad/l;

    iget-object v1, p0, Lad/d;->a:Lad/n;

    iget-object v1, v1, Lad/n;->c:Ljava/lang/Object;

    iget-object v2, p0, Lad/d;->a:Lad/n;

    iget-object v2, v2, Lad/n;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lad/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lad/d;->a:Lad/n;

    iget-object v1, v1, Lad/n;->b:Lad/n;

    iput-object v1, p0, Lad/d;->a:Lad/n;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lad/d;->a:Lad/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lad/d;->a()Lad/l;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
