.class public Lu/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/util/Date;


# direct methods
.method private constructor <init>(Ljava/util/Date;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/s;->b:Ljava/util/Date;

    iput p2, p0, Lu/s;->a:I

    return-void
.end method

.method public static a()Lu/s;
    .locals 3

    new-instance v0, Lu/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/s;-><init>(Ljava/util/Date;I)V

    return-object v0
.end method

.method public static a(Ljava/util/Date;I)Lu/s;
    .locals 1

    new-instance v0, Lu/s;

    invoke-direct {v0, p0, p1}, Lu/s;-><init>(Ljava/util/Date;I)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lu/s;->b:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lu/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/s;->b:Ljava/util/Date;

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lu/s;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lu/s;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lu/s;

    iget v0, p0, Lu/s;->a:I

    iget v1, p1, Lu/s;->a:I

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lu/s;->b()Z

    move-result v0

    invoke-virtual {p1}, Lu/s;->b()Z

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lu/s;->b:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lu/s;->b:Ljava/util/Date;

    iget-object v1, p1, Lu/s;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lu/s;->a:I

    iget-object v1, p0, Lu/s;->b:Ljava/util/Date;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu/s;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lu/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Current time"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lu/s;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown time type for"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lu/s;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "depart at "

    goto :goto_1

    :pswitch_1
    const-string v0, "arrive by"

    goto :goto_1

    :pswitch_2
    const-string v0, "last trip on"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
