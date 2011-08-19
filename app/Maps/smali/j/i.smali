.class public abstract Lj/i;
.super Lj/ax;

# interfaces
.implements Ljava/util/SortedSet;


# static fields
.field private static final b:Ljava/util/Comparator;

.field private static final d:Lj/i;


# instance fields
.field final transient a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lj/K;->a()Lj/K;

    move-result-object v0

    sput-object v0, Lj/i;->b:Ljava/util/Comparator;

    new-instance v0, Lj/o;

    sget-object v1, Lj/i;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lj/o;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lj/i;->d:Lj/i;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Lj/ax;-><init>()V

    iput-object p1, p0, Lj/i;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lj/i;
    .locals 1

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj/i;->c(Ljava/lang/Object;)Lj/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lj/i;
    .locals 1

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lj/i;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lae/k;->a(Z)V

    invoke-virtual {p0, p1, p2}, Lj/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Lj/i;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Lj/i;
    .locals 1

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj/i;->d(Ljava/lang/Object;)Lj/i;

    move-result-object v0

    return-object v0
.end method

.method abstract b(Ljava/lang/Object;Ljava/lang/Object;)Lj/i;
.end method

.method abstract c(Ljava/lang/Object;)Lj/i;
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lj/i;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method abstract d(Ljava/lang/Object;)Lj/i;
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p0, p1}, Lj/i;->a(Ljava/lang/Object;)Lj/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lj/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lj/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p0, p1}, Lj/i;->b(Ljava/lang/Object;)Lj/i;

    move-result-object v0

    return-object v0
.end method
