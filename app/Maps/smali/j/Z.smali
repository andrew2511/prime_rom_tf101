.class public abstract Lj/Z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# static fields
.field static final c:Lj/Z;


# instance fields
.field private transient a:Lj/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj/ah;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj/ah;-><init>(Lj/S;)V

    sput-object v0, Lj/Z;->c:Lj/Z;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract b()Lj/ad;
.end method

.method abstract c()Z
.end method

.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj/Z;->b()Lj/ad;

    move-result-object v0

    invoke-static {v0, p1}, Lj/l;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-static {p0, p1}, Lj/aq;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public e()Lj/v;
    .locals 1

    iget-object v0, p0, Lj/Z;->a:Lj/v;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj/Z;->f()Lj/v;

    move-result-object v0

    iput-object v0, p0, Lj/Z;->a:Lj/v;

    :cond_0
    return-object v0
.end method

.method f()Lj/v;
    .locals 2

    invoke-virtual {p0}, Lj/Z;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj/p;

    invoke-virtual {p0}, Lj/Z;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lj/p;-><init>([Ljava/lang/Object;Lj/Z;)V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lj/Z;->b()Lj/ad;

    move-result-object v0

    invoke-virtual {v0}, Lj/ad;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj/v;->a(Ljava/lang/Object;)Lj/v;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lj/Z;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/Z;->b()Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lj/R;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Lj/R;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lj/aq;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
