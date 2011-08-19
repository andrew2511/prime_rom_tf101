.class public LK/b;
.super Ljava/lang/Object;

# interfaces
.implements Lak/c;


# instance fields
.field private final a:Lak/h;

.field private final b:LK/c;

.field private final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lak/h;LK/c;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/b;->a:Lak/h;

    iput-object p2, p0, LK/b;->b:LK/c;

    iput-object p3, p0, LK/b;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, LK/b;->a:Lak/h;

    invoke-virtual {v0, p0}, Lak/h;->b(Lak/c;)V

    :cond_0
    iget-object v0, p0, LK/b;->b:LK/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, LK/b;->b:LK/c;

    invoke-interface {v0}, LK/c;->b()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lak/d;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LK/b;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LK/b;->a:Lak/h;

    invoke-virtual {v0, p0}, Lak/h;->b(Lak/c;)V

    :cond_0
    return-void
.end method

.method public b(Lak/d;)V
    .locals 0

    return-void
.end method
