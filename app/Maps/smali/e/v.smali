.class public Le/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Le/h;

.field private final b:I

.field private final c:I

.field private final d:LG/Q;

.field private final e:LG/Q;

.field private final f:[LS/a;

.field private final g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(LS/b;Le/h;I)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/v;->a:Le/h;

    iput p3, p0, Le/v;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Le/v;->a:Le/h;

    iget-object v1, v1, Le/h;->c:[LS/c;

    aget-object v2, v1, p3

    invoke-static {v2}, Le/v;->a(LS/c;)I

    move-result v2

    array-length v3, v1

    move v4, v2

    move v2, p3

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v5, v1, v2

    invoke-virtual {v5, v7}, LS/c;->d(I)LS/a;

    move-result-object v5

    sget-object v6, LS/c;->a:LS/a;

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1, v4, v2}, Le/v;->a(LS/b;II)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    :goto_1
    iput v4, p0, Le/v;->g:I

    iput v2, p0, Le/v;->c:I

    iget v2, p0, Le/v;->b:I

    if-nez v2, :cond_2

    iget-object v2, p0, Le/v;->a:Le/h;

    iget-object v2, v2, Le/h;->a:Le/A;

    iget-object v2, v2, Le/A;->b:LG/Q;

    :goto_2
    iput-object v2, p0, Le/v;->d:LG/Q;

    iget v2, p0, Le/v;->c:I

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Le/v;->a:Le/h;

    iget-object v1, v1, Le/h;->b:Le/A;

    iget-object v1, v1, Le/A;->b:LG/Q;

    :goto_3
    iput-object v1, p0, Le/v;->e:LG/Q;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [LS/a;

    iput-object v1, p0, Le/v;->f:[LS/a;

    iget-object v1, p0, Le/v;->f:[LS/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v0, "Describer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created subPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Las/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    aget-object v4, v1, v2

    invoke-static {v4}, Le/v;->a(LS/c;)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Le/v;->b:I

    aget-object v2, v1, v2

    invoke-virtual {v2, v7}, LS/c;->c(I)LG/Q;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget v2, p0, Le/v;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, LS/c;->d()LG/Q;

    move-result-object v1

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public constructor <init>(Le/h;IILG/Q;LG/Q;[LS/a;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/v;->a:Le/h;

    iput p2, p0, Le/v;->b:I

    iput p3, p0, Le/v;->c:I

    iput-object p4, p0, Le/v;->d:LG/Q;

    iput-object p5, p0, Le/v;->e:LG/Q;

    iput-object p6, p0, Le/v;->f:[LS/a;

    iput p7, p0, Le/v;->h:I

    iput p8, p0, Le/v;->i:I

    iget-object v0, p1, Le/h;->c:[LS/c;

    aget-object v0, v0, p2

    invoke-static {v0}, Le/v;->a(LS/c;)I

    move-result v0

    iput v0, p0, Le/v;->g:I

    return-void
.end method

.method static a(LS/c;)I
    .locals 1

    invoke-virtual {p0}, LS/c;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(LS/c;LS/c;Ljava/util/List;)I
    .locals 8

    const/4 v3, 0x0

    invoke-static {p1, p2}, Le/D;->a(LS/c;LS/c;)I

    move-result v0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v7, v3

    move-object v3, v1

    move v1, v7

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS/c;

    invoke-static {p1, p0}, Le/D;->a(LS/c;LS/c;)I

    move-result v4

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_2

    :cond_3
    move v1, v4

    move-object v3, p0

    goto :goto_1

    :cond_4
    if-le v0, v1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NORMAL"

    goto :goto_0

    :pswitch_1
    const-string v0, "RAMP"

    goto :goto_0

    :pswitch_2
    const-string v0, "ROUNDABOUT"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(LS/b;LS/c;LS/c;I)Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    invoke-virtual {p2}, LS/c;->c()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p2, v0}, LS/c;->b(I)LS/f;

    move-result-object v2

    invoke-virtual {v2, p1}, LS/f;->a(LS/b;)LS/c;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v2, p3, :cond_1

    invoke-static {p2, v2}, Le/D;->a(LS/c;LS/c;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, p4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS/c;

    invoke-static {p0}, Le/v;->a(LS/c;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;I)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS/c;

    invoke-virtual {p0}, LS/c;->g()I

    move-result v1

    if-ge v1, p2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private a(LS/b;LS/c;LS/c;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p3}, Le/v;->a(LS/c;)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Le/v;->c(LS/b;LS/c;LS/c;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Le/v;->e(LS/b;LS/c;LS/c;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(LS/c;LS/c;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Le/v;->b(LS/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, LS/c;->g()I

    move-result v0

    invoke-virtual {p2}, LS/c;->g()I

    move-result v1

    if-le v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(LS/b;LS/c;LS/c;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p3}, Le/v;->a(LS/c;)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Le/v;->e(LS/b;LS/c;LS/c;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Le/v;->d(LS/b;LS/c;LS/c;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private b(LS/c;)Z
    .locals 2

    invoke-virtual {p1}, LS/c;->g()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(LS/b;LS/c;LS/c;)V
    .locals 1

    const/16 v0, 0x2d

    invoke-direct {p0, p1, p2, p3, v0}, Le/v;->a(LS/b;LS/c;LS/c;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Le/v;->a(LS/c;LS/c;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Le/v;->i:I

    invoke-direct {p0, p2, p3}, Le/v;->a(LS/c;LS/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    iput v0, p0, Le/v;->h:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Le/v;->h:I

    goto :goto_0
.end method

.method private d(LS/b;LS/c;LS/c;)Z
    .locals 1

    invoke-static {p2, p3}, Le/D;->a(LS/c;LS/c;)I

    const/16 v0, 0x2d

    invoke-direct {p0, p1, p2, p3, v0}, Le/v;->a(LS/b;LS/c;LS/c;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Le/v;->a(LS/c;LS/c;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Le/v;->i:I

    iget v0, p0, Le/v;->i:I

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    iput v0, p0, Le/v;->h:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(LS/b;LS/c;LS/c;)Z
    .locals 10

    const/16 v9, 0x14

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {p2, p3}, Le/D;->a(LS/c;LS/c;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2, v7}, LS/c;->d(I)LS/a;

    move-result-object v2

    invoke-virtual {p3, v7}, LS/c;->d(I)LS/a;

    move-result-object v3

    invoke-virtual {v2, v3}, LS/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    :goto_0
    if-lez v1, :cond_2

    move v3, v8

    :goto_1
    iput v3, p0, Le/v;->i:I

    const/16 v3, 0x2d

    if-gt v0, v3, :cond_6

    add-int/lit8 v3, v0, 0x1e

    invoke-direct {p0, p1, p2, p3, v3}, Le/v;->a(LS/b;LS/c;LS/c;I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Le/v;->a(Ljava/util/List;)V

    invoke-virtual {p2}, LS/c;->g()I

    move-result v4

    invoke-virtual {p3}, LS/c;->g()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p2}, LS/c;->g()I

    move-result v4

    invoke-direct {p0, v3, v4}, Le/v;->a(Ljava/util/List;I)V

    :cond_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_3

    if-ge v0, v9, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/c;

    invoke-static {p2, v0}, Le/D;->a(LS/c;LS/c;)I

    move-result v4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/c;

    invoke-virtual {v0}, LS/c;->g()I

    move-result v0

    invoke-virtual {p3}, LS/c;->g()I

    move-result v5

    if-ne v0, v5, :cond_3

    if-ge v4, v9, :cond_3

    const/16 v0, 0x9

    iput v0, p0, Le/v;->h:I

    invoke-direct {p0, p2, p3, v3}, Le/v;->a(LS/c;LS/c;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Le/v;->i:I

    move v0, v6

    :goto_2
    return v0

    :cond_1
    move v2, v7

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    const/16 v0, 0x1e

    if-lt v1, v0, :cond_4

    if-nez v2, :cond_5

    :cond_4
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Le/v;->h:I

    move v0, v6

    goto :goto_2

    :cond_6
    const/16 v1, 0x87

    if-gt v0, v1, :cond_7

    const/4 v0, 0x4

    iput v0, p0, Le/v;->h:I

    move v0, v6

    goto :goto_2

    :cond_7
    const/16 v1, 0xb3

    if-gt v0, v1, :cond_8

    const/4 v0, 0x5

    iput v0, p0, Le/v;->h:I

    move v0, v6

    goto :goto_2

    :cond_8
    const/4 v0, 0x6

    iput v0, p0, Le/v;->h:I

    iput v6, p0, Le/v;->i:I

    move v0, v6

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {p2}, LS/c;->c()I

    move-result v0

    if-le v0, v6, :cond_a

    iput v8, p0, Le/v;->h:I

    iput v7, p0, Le/v;->i:I

    move v0, v6

    goto :goto_2

    :cond_a
    move v0, v7

    goto :goto_2
.end method


# virtual methods
.method public a(LG/b;)D
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Le/v;->a:Le/h;

    move-object v2, v0

    iget-object v2, v2, Le/h;->c:[LS/c;

    const/4 v3, 0x0

    new-instance v4, LG/Q;

    invoke-direct {v4}, LG/Q;-><init>()V

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Le/v;->b:I

    move v7, v0

    move/from16 v16, v7

    move-object v7, v3

    move/from16 v3, v16

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Le/v;->c:I

    move v8, v0

    if-ge v3, v8, :cond_6

    aget-object v8, v2, v3

    invoke-virtual {v8}, LS/c;->e()I

    move-result v9

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Le/v;->a:Le/h;

    move-object v10, v0

    iget-object v10, v10, Le/h;->a:Le/A;

    iget v10, v10, Le/A;->d:I

    :goto_1
    const/4 v11, 0x1

    sub-int/2addr v9, v11

    array-length v11, v2

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v3, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Le/v;->a:Le/h;

    move-object v9, v0

    iget-object v9, v9, Le/h;->b:Le/A;

    iget v9, v9, Le/A;->d:I

    add-int/lit8 v9, v9, 0x1

    :cond_0
    move-object v11, v7

    move-wide/from16 v16, v5

    move-wide/from16 v6, v16

    move v5, v10

    :goto_2
    if-gt v5, v9, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Le/v;->b:I

    move v12, v0

    if-ne v3, v12, :cond_2

    if-ne v5, v10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Le/v;->d:LG/Q;

    move-object v12, v0

    invoke-virtual {v4, v12}, LG/Q;->b(LG/Q;)V

    :goto_3
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, LG/b;->a(LG/Q;)Z

    if-eqz v11, :cond_4

    invoke-virtual {v11, v4}, LG/Q;->c(LG/Q;)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v11}, LG/Q;->e()D

    move-result-wide v14

    div-double/2addr v12, v14

    add-double/2addr v6, v12

    :goto_4
    invoke-virtual {v11, v4}, LG/Q;->b(LG/Q;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Le/v;->c:I

    move v12, v0

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v3, v12, :cond_3

    if-ne v5, v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Le/v;->e:LG/Q;

    move-object v12, v0

    invoke-virtual {v4, v12}, LG/Q;->b(LG/Q;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v5, v4}, LS/c;->a(ILG/Q;)V

    goto :goto_3

    :cond_4
    new-instance v11, LG/Q;

    invoke-direct {v11}, LG/Q;-><init>()V

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v6

    move-wide/from16 v5, v16

    move-object v7, v11

    goto/16 :goto_0

    :cond_6
    return-wide v5
.end method

.method public a()I
    .locals 5

    iget-object v0, p0, Le/v;->a:Le/h;

    iget-object v0, v0, Le/h;->d:[I

    const/4 v1, 0x0

    iget v2, p0, Le/v;->b:I

    move v4, v2

    move v2, v1

    move v1, v4

    :goto_0
    iget v3, p0, Le/v;->c:I

    if-ge v1, v3, :cond_0

    aget v3, v0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method a(LS/b;II)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Le/v;->a:Le/h;

    iget-object v0, v0, Le/h;->c:[LS/c;

    array-length v1, v0

    sub-int/2addr v1, v3

    if-ne p3, v1, :cond_0

    const/16 v0, 0x10

    iput v0, p0, Le/v;->h:I

    iput v2, p0, Le/v;->i:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    aget-object v1, v0, p3

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    if-ne p2, v3, :cond_1

    invoke-direct {p0, p1, v1, v0}, Le/v;->b(LS/b;LS/c;LS/c;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1, v0}, Le/v;->a(LS/b;LS/c;LS/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Le/v;->h:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Le/v;->i:I

    return v0
.end method

.method public d()[LS/a;
    .locals 1

    iget-object v0, p0, Le/v;->f:[LS/a;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Le/v;->b:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Le/v;->c:I

    return v0
.end method

.method public g()LS/c;
    .locals 2

    iget-object v0, p0, Le/v;->a:Le/h;

    iget-object v0, v0, Le/h;->c:[LS/c;

    iget v1, p0, Le/v;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()LS/c;
    .locals 3

    iget-object v0, p0, Le/v;->a:Le/h;

    iget-object v0, v0, Le/h;->c:[LS/c;

    iget v1, p0, Le/v;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public i()LG/Q;
    .locals 1

    iget-object v0, p0, Le/v;->d:LG/Q;

    return-object v0
.end method

.method public j()LG/Q;
    .locals 1

    iget-object v0, p0, Le/v;->e:LG/Q;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Le/v;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " side: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Le/v;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/v;->f:[LS/a;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, LS/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, " start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/v;->d:LG/Q;

    invoke-virtual {v2}, LG/Q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/v;->e:LG/Q;

    invoke-virtual {v2}, LG/Q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Le/v;->g:I

    invoke-static {v2}, Le/v;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
