.class public LJ/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, LJ/o;->a:Ljava/lang/String;

    invoke-static {p2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    :goto_1
    iput-object v0, p0, LJ/o;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, LJ/o;->c:Ljava/lang/String;

    iput p4, p0, LJ/o;->d:I

    iput p5, p0, LJ/o;->e:I

    iput p6, p0, LJ/o;->f:I

    iput p7, p0, LJ/o;->g:I

    iput-object p8, p0, LJ/o;->h:Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_1

    :cond_2
    move-object v0, p3

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1

    :cond_3
    move-object v0, p2

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LJ/o;->e:I

    return v0
.end method

.method public a(LJ/o;)Z
    .locals 2

    invoke-virtual {p0}, LJ/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LJ/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LJ/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LJ/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LJ/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJ/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJ/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJ/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LJ/o;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, LJ/o;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p1, LJ/o;

    iget v0, p0, LJ/o;->d:I

    invoke-virtual {p1}, LJ/o;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LJ/o;->e:I

    invoke-virtual {p1}, LJ/o;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LJ/o;->f:I

    invoke-virtual {p1}, LJ/o;->f()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, LJ/o;->g:I

    invoke-virtual {p1}, LJ/o;->g()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LJ/o;->a:Ljava/lang/String;

    invoke-virtual {p1}, LJ/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ/o;->b:Ljava/lang/String;

    invoke-virtual {p1}, LJ/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ/o;->c:Ljava/lang/String;

    invoke-virtual {p1}, LJ/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ/o;->h:Ljava/lang/String;

    invoke-virtual {p1}, LJ/o;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LJ/o;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LJ/o;->g:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJ/o;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget v0, p0, LJ/o;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "d"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "c"

    goto :goto_0

    :pswitch_1
    const-string v0, "h"

    goto :goto_0

    :pswitch_2
    const-string v0, "r"

    goto :goto_0

    :pswitch_3
    const-string v0, "v"

    goto :goto_0

    :pswitch_4
    const-string v0, "f"

    goto :goto_0

    :pswitch_5
    const-string v0, "d"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public j()Ljava/lang/String;
    .locals 3

    iget v0, p0, LJ/o;->d:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f02020e

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f020211

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0201fb

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020206

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0201f2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LJ/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LJ/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LJ/o;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " providerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LJ/o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ranking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LJ/o;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LJ/o;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
