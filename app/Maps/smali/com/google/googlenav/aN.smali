.class public Lcom/google/googlenav/aN;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/aN;->a:I

    iput-object p2, p0, Lcom/google/googlenav/aN;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/aN;->c:Ljava/util/Vector;

    return-void
.end method

.method protected static a(Lcom/google/googlenav/aN;Ljava/util/Vector;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    move-object v4, v7

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/n;

    if-nez v0, :cond_1

    move-object v0, v4

    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v4, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/n;

    :goto_2
    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/googlenav/n;->a()I

    move-result v1

    invoke-virtual {v4}, Lcom/google/googlenav/n;->a()I

    move-result v4

    sub-int/2addr v1, v4

    if-ne v1, v6, :cond_3

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Lcom/google/googlenav/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/google/googlenav/n;->a()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/googlenav/n;->a()I

    move-result v4

    sub-int v4, v5, v4

    if-le v4, v6, :cond_5

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/googlenav/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/google/googlenav/n;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/n;->a()I

    move-result v4

    sub-int/2addr v1, v4

    if-le v1, v6, :cond_0

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/googlenav/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/googlenav/aN;->e()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v1, v7

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/aN;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aN;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aN;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aN;->c:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aN;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/googlenav/aN;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    sget-char v2, Lcom/google/googlenav/ui/aV;->bv:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/googlenav/aN;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SEARCH_FILTER"

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown search filter of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/aN;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/n;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/googlenav/aN;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aN;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/googlenav/n;->a(Lcom/google/googlenav/n;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/aN;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/n;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/googlenav/aN;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/aN;->a(Lcom/google/googlenav/aN;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public g()I
    .locals 4

    iget v0, p0, Lcom/google/googlenav/aN;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SEARCH_FILTER"

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown search filter of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/aN;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x2c8

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x2c9

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x2ca

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x2cd

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2d1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/googlenav/aN;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SEARCH_FILTER"

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown search filter of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/aN;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xfc

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->bv:C

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xfb

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
