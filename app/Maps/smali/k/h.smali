.class public Lk/h;
.super Ljava/lang/Object;

# interfaces
.implements Lk/j;


# instance fields
.field private final a:[Lk/j;

.field private b:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lk/j;Lk/j;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lk/j;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lk/h;-><init>([Lk/j;)V

    return-void
.end method

.method public constructor <init>([Lk/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lk/h;->b:Ljava/util/Hashtable;

    iput-object p1, p0, Lk/h;->a:[Lk/j;

    invoke-direct {p0}, Lk/h;->b()V

    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method private f(C)Lk/j;
    .locals 3

    iget-object v0, p0, Lk/h;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/j;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lk/h;->a:[Lk/j;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lk/h;->a:[Lk/j;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lk/j;->a(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lk/h;->a:[Lk/j;

    aget-object v0, v0, v1

    iget-object v1, p0, Lk/h;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lk/h;->a:[Lk/j;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lk/h;->a:[Lk/j;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lk/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(C)Z
    .locals 1

    invoke-direct {p0, p1}, Lk/h;->f(C)Lk/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(CLk/m;II)Z
    .locals 1

    invoke-direct {p0, p1}, Lk/h;->f(C)Lk/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lk/j;->a(CLk/m;II)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ap()LA/c;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lk/h;->a:[Lk/j;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v3

    iget-object v1, p0, Lk/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-instance v1, LA/c;

    const-string v2, "CompositeIconProvider"

    invoke-direct {v1, v2, v0}, LA/c;-><init>(Ljava/lang/String;I)V

    move v0, v3

    :goto_0
    iget-object v2, p0, Lk/h;->a:[Lk/j;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lk/h;->a:[Lk/j;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lk/j;->ap()LA/c;

    move-result-object v2

    invoke-virtual {v1, v2}, LA/c;->a(LA/c;)LA/c;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(C)I
    .locals 3

    invoke-direct {p0, p1}, Lk/h;->f(C)Lk/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/j;->b(C)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lk/h;->a:[Lk/j;

    iget-object v1, p0, Lk/h;->a:[Lk/j;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lk/j;->b(C)I

    move-result v0

    goto :goto_0
.end method

.method public c(C)I
    .locals 3

    invoke-direct {p0, p1}, Lk/h;->f(C)Lk/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/j;->c(C)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lk/h;->a:[Lk/j;

    iget-object v1, p0, Lk/h;->a:[Lk/j;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lk/j;->c(C)I

    move-result v0

    goto :goto_0
.end method

.method public d(C)I
    .locals 3

    invoke-direct {p0, p1}, Lk/h;->f(C)Lk/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/j;->d(C)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lk/h;->a:[Lk/j;

    iget-object v1, p0, Lk/h;->a:[Lk/j;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lk/j;->d(C)I

    move-result v0

    goto :goto_0
.end method

.method public e(C)Lk/l;
    .locals 1

    invoke-direct {p0, p1}, Lk/h;->f(C)Lk/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
