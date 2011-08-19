.class public final Lav;
.super Ljava/lang/Object;

# interfaces
.implements Lak;


# instance fields
.field private a:Laj;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILaj;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    iput p2, p0, Lav;->b:I

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move-object v1, p3

    :goto_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/16 v2, 0x2c

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lz;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lav;->b:I

    goto :goto_0

    :cond_1
    const-string v3, "n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognised encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-lez p2, :cond_4

    new-instance v0, Laj;

    iget v2, p0, Lav;->b:I

    invoke-direct {v0, v1, v2}, Laj;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lav;->a:Laj;

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance v0, Laj;

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Laj;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lav;->a:Laj;

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lav;->b:I

    return v0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lav;->a:Laj;

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
