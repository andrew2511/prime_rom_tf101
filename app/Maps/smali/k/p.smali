.class public final Lk/p;
.super Ljava/lang/Object;

# interfaces
.implements Lac/h;
.implements Lk/j;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lk/l;

.field private final c:Ljava/lang/Integer;

.field private volatile d:[Lk/l;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lk/p;-><init>(Ljava/lang/Integer;Lk/l;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Lk/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk/p;->b:Lk/l;

    iput-object p1, p0, Lk/p;->c:Ljava/lang/Integer;

    iput-object p3, p0, Lk/p;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lk/l;C)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lk/p;-><init>(Lk/l;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lk/l;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lk/p;-><init>(Ljava/lang/Integer;Lk/l;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lk/l;I)Lk/l;
    .locals 7

    iget-object v0, p0, Lk/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lk/l;->f()I

    move-result v0

    iget-object v1, p0, Lk/p;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int v3, v0, v1

    invoke-interface {p1}, Lk/l;->e()I

    move-result v4

    mul-int v1, p2, v3

    const/4 v2, 0x0

    move-object v0, p1

    move v5, v3

    move v6, v4

    invoke-interface/range {v0 .. v6}, Lk/l;->a(IIIIII)Lk/l;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lk/l;)V
    .locals 3

    iget-object v0, p0, Lk/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Lk/l;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1, v1}, Lk/p;->a(Lk/l;I)Lk/l;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lk/p;->d:[Lk/l;

    return-void
.end method

.method private c()[Lk/l;
    .locals 1

    iget-object v0, p0, Lk/p;->d:[Lk/l;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lk/p;->b()V

    :cond_0
    iget-object v0, p0, Lk/p;->d:[Lk/l;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lk/p;->d:[Lk/l;

    return-void
.end method

.method public a(C)Z
    .locals 1

    iget-object v0, p0, Lk/p;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(CLk/m;II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lk/p;->e(C)Lk/l;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2, v0, p3, p4}, Lk/m;->a(Lk/l;II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ap()LA/c;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lk/p;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lk/p;->b:Lk/l;

    if-eqz v2, :cond_0

    new-instance v2, LA/c;

    const-string v3, "imageStrip"

    iget-object v4, p0, Lk/p;->b:Lk/l;

    invoke-interface {v4}, Lk/l;->a()I

    move-result v4

    invoke-direct {v2, v3, v4}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lk/p;->d:[Lk/l;

    if-eqz v2, :cond_2

    move v2, v5

    move v3, v5

    :goto_0
    iget-object v4, p0, Lk/p;->d:[Lk/l;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lk/p;->d:[Lk/l;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lk/l;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, LA/c;

    const-string v4, "icons"

    invoke-direct {v2, v4, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lk/p;->c:Ljava/lang/Integer;

    if-nez v2, :cond_3

    const-string v2, "ImageStripIconProvider"

    :goto_1
    new-instance v3, LA/c;

    invoke-direct {v3, v2, v1, v0}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    return-object v3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lk/p;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public b(C)I
    .locals 1

    invoke-virtual {p0, p1}, Lk/p;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lk/p;->e(C)Lk/l;

    move-result-object v0

    invoke-interface {v0}, Lk/l;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    iget-object v0, p0, Lk/p;->b:Lk/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/p;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    iget-object v1, p0, Lk/p;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lk/i;->b(I)Lk/l;

    move-result-object v0

    iput-object v0, p0, Lk/p;->b:Lk/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lk/p;->b:Lk/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lk/p;->b:Lk/l;

    invoke-interface {v0}, Lk/l;->f()I

    move-result v0

    iget-object v1, p0, Lk/p;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image strip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lk/p;->c:Ljava/lang/Integer;

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lk/p;->b:Lk/l;

    invoke-interface {v2}, Lk/l;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "divisible by number of icons "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lk/p;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lk/p;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lk/p;->b:Lk/l;

    invoke-direct {p0, v0}, Lk/p;->a(Lk/l;)V

    :cond_3
    return-void
.end method

.method public c(C)I
    .locals 1

    invoke-virtual {p0, p1}, Lk/p;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lk/p;->e(C)Lk/l;

    move-result-object v0

    invoke-interface {v0}, Lk/l;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d(C)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public e(C)Lk/l;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lk/p;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/p;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lk/p;->c()[Lk/l;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
