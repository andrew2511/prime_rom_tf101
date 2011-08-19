.class public Lk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lk/f;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lk/j;

.field private final c:Lk/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lk/d;->a:[I

    return-void
.end method

.method public constructor <init>(Lk/f;Lk/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/d;->c:Lk/f;

    iput-object p2, p0, Lk/d;->b:Lk/j;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lk/d;->c:Lk/f;

    invoke-interface {v0}, Lk/f;->a()I

    move-result v0

    return v0
.end method

.method public a(C)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lk/d;->c:Lk/f;

    invoke-interface {v0, p1}, Lk/f;->a(C)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)I
    .locals 9

    sget-object v8, Lk/d;->a:[I

    monitor-enter v8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lk/d;->c:Lk/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lk/d;->a:[I

    iget-object v6, p0, Lk/d;->b:Lk/j;

    sget-object v7, Lk/o;->b:Lk/c;

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lk/o;->a(Lk/m;Lk/f;Ljava/lang/String;II[ILk/j;Lk/c;)V

    sget-object v0, Lk/d;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit v8

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;II)I
    .locals 11

    sget-object v10, Lk/d;->a:[I

    monitor-enter v10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lk/d;->c:Lk/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lk/d;->a:[I

    iget-object v8, p0, Lk/d;->b:Lk/j;

    sget-object v9, Lk/o;->b:Lk/c;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Lk/o;->a(Lk/m;Lk/f;Ljava/lang/String;IIII[ILk/j;Lk/c;)V

    sget-object v0, Lk/d;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit v10

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lk/m;Ljava/lang/String;II)V
    .locals 9

    invoke-interface {p1}, Lk/m;->g()Lk/f;

    move-result-object v8

    :try_start_0
    iget-object v1, p0, Lk/d;->c:Lk/f;

    const/4 v5, 0x0

    iget-object v6, p0, Lk/d;->b:Lk/j;

    sget-object v7, Lk/o;->b:Lk/c;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lk/o;->a(Lk/m;Lk/f;Ljava/lang/String;II[ILk/j;Lk/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v8}, Lk/m;->a(Lk/f;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1, v8}, Lk/m;->a(Lk/f;)V

    throw v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lk/d;->c:Lk/f;

    invoke-interface {v0}, Lk/f;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lk/d;->c:Lk/f;

    invoke-interface {v0}, Lk/f;->c()I

    move-result v0

    return v0
.end method
