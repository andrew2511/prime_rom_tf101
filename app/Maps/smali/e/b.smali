.class public Le/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Le/h;


# direct methods
.method public constructor <init>(Le/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b;->a:Le/h;

    return-void
.end method

.method private a(Le/v;)D
    .locals 4

    invoke-virtual {p1}, Le/v;->i()LG/Q;

    move-result-object v0

    invoke-virtual {p1}, Le/v;->j()LG/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->c(LG/Q;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Le/v;->i()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->e()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/util/LinkedList;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/b;->b(Ljava/util/LinkedList;)V

    invoke-virtual {p0, p1}, Le/b;->c(Ljava/util/LinkedList;)V

    return-void
.end method

.method a(Ljava/util/ListIterator;)V
    .locals 13

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Le/v;

    move-object v5, v0

    invoke-virtual {v5}, Le/v;->b()I

    move-result v1

    if-ne v1, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v10

    move v11, v12

    :goto_0
    if-gt v11, v9, :cond_4

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Le/v;

    move-object v7, v0

    invoke-virtual {v5}, Le/v;->h()LS/c;

    move-result-object v1

    invoke-virtual {v7}, Le/v;->h()LS/c;

    move-result-object v2

    invoke-static {v1, v2}, Le/D;->a(LS/c;LS/c;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4325

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    invoke-virtual {v5}, Le/v;->h()LS/c;

    move-result-object v1

    invoke-virtual {v1, v12}, LS/c;->d(I)LS/a;

    move-result-object v1

    invoke-virtual {v7}, Le/v;->g()LS/c;

    move-result-object v2

    invoke-virtual {v2, v12}, LS/c;->d(I)LS/a;

    move-result-object v2

    invoke-virtual {v1, v2}, LS/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Le/v;

    iget-object v2, p0, Le/b;->a:Le/h;

    invoke-virtual {v5}, Le/v;->f()I

    move-result v3

    invoke-virtual {v7}, Le/v;->f()I

    move-result v4

    invoke-virtual {v5}, Le/v;->j()LG/Q;

    move-result-object v5

    invoke-virtual {v7}, Le/v;->j()LG/Q;

    move-result-object v6

    invoke-virtual {v7}, Le/v;->d()[LS/a;

    move-result-object v7

    invoke-direct/range {v1 .. v9}, Le/v;-><init>(Le/h;IILG/Q;LG/Q;[LS/a;II)V

    move v2, v12

    :goto_1
    if-gt v2, v11, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "Describer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created u-turn maneuver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Las/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    move v2, v12

    :goto_2
    sub-int v3, v1, v10

    sub-int/2addr v3, v9

    if-ge v2, v3, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v7}, Le/b;->a(Le/v;)D

    move-result-wide v1

    const-wide v3, 0x4052c00000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_4

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_0
.end method

.method b(Ljava/util/LinkedList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Le/b;->a(Ljava/util/ListIterator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(Ljava/util/LinkedList;)V
    .locals 12

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_0
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/v;

    :goto_0
    move-object v11, v1

    :goto_1
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Le/v;

    move-object v9, v0

    invoke-virtual {v11}, Le/v;->a()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_3

    new-instance v1, Le/v;

    iget-object v2, p0, Le/b;->a:Le/h;

    invoke-virtual {v11}, Le/v;->e()I

    move-result v3

    invoke-virtual {v9}, Le/v;->f()I

    move-result v4

    invoke-virtual {v11}, Le/v;->i()LG/Q;

    move-result-object v5

    invoke-virtual {v9}, Le/v;->j()LG/Q;

    move-result-object v6

    invoke-virtual {v9}, Le/v;->d()[LS/a;

    move-result-object v7

    invoke-virtual {v9}, Le/v;->b()I

    move-result v8

    invoke-virtual {v9}, Le/v;->c()I

    move-result v9

    invoke-direct/range {v1 .. v9}, Le/v;-><init>(Le/h;IILG/Q;LG/Q;[LS/a;II)V

    const-string v2, "Describer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping short sub-path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Las/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v10, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :goto_2
    move-object v11, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move-object v1, v9

    goto :goto_2
.end method
