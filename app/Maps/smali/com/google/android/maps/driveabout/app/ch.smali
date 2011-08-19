.class public Lcom/google/android/maps/driveabout/app/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:LF/y;

.field private b:I


# direct methods
.method public constructor <init>(LF/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LF/w;->e()LF/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ch;->a:LF/y;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ch;->a:LF/y;

    invoke-virtual {v0}, LF/y;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ch;->b:I

    return-void
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ch;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ch;->b:I

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ch;->a:LF/y;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ch;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ch;->a:LF/y;

    invoke-virtual {v1}, LF/y;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ch;->a:LF/y;

    invoke-virtual {v0}, LF/y;->j()LF/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ch;->a:LF/y;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ch;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()LF/w;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ch;->a:LF/y;

    invoke-virtual {v0}, LF/y;->u()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ch;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/w;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ch;->b()V

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ch;->a:LF/y;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ch;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ch;->a:LF/y;

    invoke-virtual {v1}, LF/y;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ch;->a()LF/w;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
