.class public abstract LaV/b;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/LinkedList;

.field protected b:I

.field public c:Ljava/lang/Object;

.field public d:I

.field private final e:LaV/d;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(IILaV/d;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LaV/b;->a:Ljava/util/LinkedList;

    iput p2, p0, LaV/b;->h:I

    iget v0, p0, LaV/b;->h:I

    shl-int v0, v1, v0

    iput v0, p0, LaV/b;->f:I

    iget v0, p0, LaV/b;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, LaV/b;->g:I

    iput-object p3, p0, LaV/b;->e:LaV/d;

    invoke-direct {p0, p1}, LaV/b;->d(I)I

    move-result v0

    iput v0, p0, LaV/b;->i:I

    invoke-virtual {p0}, LaV/b;->a()V

    return-void
.end method

.method private d(I)I
    .locals 2

    iget v0, p0, LaV/b;->h:I

    shr-int v0, p1, v0

    iget v1, p0, LaV/b;->g:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LaV/b;->i:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(index) > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LaV/b;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(size)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, LaV/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, LaV/b;->a:Ljava/util/LinkedList;

    iget-object v1, p0, LaV/b;->e:LaV/d;

    invoke-virtual {v1}, LaV/d;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, LaV/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LaV/b;->b:I

    iput v0, p0, LaV/b;->d:I

    invoke-virtual {p0, v0}, LaV/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LaV/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, LaV/b;->a()V

    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_2

    iget v1, p0, LaV/b;->f:I

    iget v2, p0, LaV/b;->f:I

    add-int/2addr v2, v0

    if-le v2, p2, :cond_0

    sub-int v1, p2, v0

    :cond_0
    iget v2, p0, LaV/b;->b:I

    invoke-virtual {p0, v2}, LaV/b;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget v2, p0, LaV/b;->f:I

    if-ne v1, v2, :cond_1

    iget v1, p0, LaV/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LaV/b;->b:I

    iput v3, p0, LaV/b;->d:I

    goto :goto_0

    :cond_1
    iput v1, p0, LaV/b;->d:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, LaV/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, LaV/b;->h:I

    shl-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .locals 5

    iget v0, p0, LaV/b;->f:I

    if-lt p1, v0, :cond_1

    iget v0, p0, LaV/b;->g:I

    and-int/2addr v0, p1

    iget v1, p0, LaV/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LaV/b;->b:I

    iget v1, p0, LaV/b;->b:I

    iget v2, p0, LaV/b;->i:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, LaV/b;->c:Ljava/lang/Object;

    iget v2, p0, LaV/b;->b:I

    invoke-virtual {p0, v2}, LaV/b;->a(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, LaV/b;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v2, p0, LaV/b;->f:I

    iget-object v3, p0, LaV/b;->c:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput v0, p0, LaV/b;->d:I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, LaV/b;->d:I

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, LaV/b;->e:LaV/d;

    iget-object v1, p0, LaV/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, LaV/d;->a(Ljava/util/List;)V

    iget-object v0, p0, LaV/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public c(I)V
    .locals 2

    invoke-direct {p0, p1}, LaV/b;->d(I)I

    move-result v0

    iget v1, p0, LaV/b;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LaV/b;->i:I

    return-void
.end method
