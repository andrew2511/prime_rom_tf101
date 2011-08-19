.class public LA/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA/c;->a:Ljava/lang/String;

    iput p2, p0, LA/c;->b:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LA/c;->c:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Vector;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA/c;->a:Ljava/lang/String;

    iput-object p3, p0, LA/c;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    move v2, p2

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA/c;

    iget v0, v0, LA/c;->b:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iput v2, p0, LA/c;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LA/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA/c;->a:Ljava/lang/String;

    iget v0, p2, LA/c;->b:I

    iput v0, p0, LA/c;->b:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LA/c;->c:Ljava/util/Vector;

    iget-object v0, p0, LA/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a(I)Ljava/util/Vector;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v6

    :goto_0
    if-ge v2, p1, :cond_0

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LA/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LA/c;->b:I

    invoke-static {v2}, LA/m;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, LA/c;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [LA/c;

    iget-object v2, p0, LA/c;->c:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v2, LA/l;

    invoke-direct {v2, p0}, LA/l;-><init>(LA/c;)V

    invoke-static {v1, v2}, LA/r;->a([Ljava/lang/Object;LA/i;)V

    move v2, v6

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    add-int/lit8 v4, p1, 0x1

    invoke-direct {v3, v4}, LA/c;->a(I)Ljava/util/Vector;

    move-result-object v3

    move v4, v6

    :goto_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(LA/c;)LA/c;
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, LA/c;->b:I

    iget v1, p1, LA/c;->b:I

    add-int/2addr v0, v1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move v1, v7

    move v3, v0

    :goto_0
    iget-object v0, p0, LA/c;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, LA/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA/c;

    iget-object v4, v0, LA/c;->c:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hierarchical MemoryUsages can\'t be merged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v4, v0, LA/c;->b:I

    sub-int/2addr v3, v4

    iget-object v4, v0, LA/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/Integer;

    iget v0, v0, LA/c;->b:I

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v4, v3

    move v3, v7

    :goto_1
    iget-object v0, p1, LA/c;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p1, LA/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA/c;

    iget-object v1, v0, LA/c;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hierarchical MemoryUsages can\'t be merged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, v0, LA/c;->b:I

    sub-int/2addr v4, v1

    iget-object v1, v0, LA/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v7

    :goto_2
    iget-object v5, v0, LA/c;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/Integer;

    iget v0, v0, LA/c;->b:I

    add-int/2addr v0, v1

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v6, LA/c;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v6, v0, v1}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    new-instance v0, LA/c;

    iget-object v1, p0, LA/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v3}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    return-object v0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method public a()Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LA/c;->a(I)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method
