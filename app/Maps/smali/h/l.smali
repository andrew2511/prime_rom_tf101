.class public Lh/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lh/fc;


# instance fields
.field private b:Ljava/util/Vector;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh/fc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh/fc;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lh/l;->a:Lh/fc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lh/l;->b:Ljava/util/Vector;

    const/16 v0, 0x10

    iput v0, p0, Lh/l;->c:I

    return-void
.end method

.method private a(I)Lh/fc;
    .locals 1

    iget-object v0, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh/fc;

    return-object p0
.end method

.method private b(I)V
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-direct {p0, v2}, Lh/l;->a(I)Lh/fc;

    move-result-object v3

    invoke-virtual {v3}, Lh/fc;->a()I

    move-result v3

    if-ne v3, p1, :cond_2

    move v0, v2

    :cond_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public a(Lh/fc;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lh/fc;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lh/l;->b(I)V

    :cond_3
    iget-object v0, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The back action stack growing too long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lh/fc;
    .locals 2

    invoke-virtual {p0}, Lh/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lh/l;->a:Lh/fc;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lh/l;->a(I)Lh/fc;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Lh/fc;
    .locals 4

    invoke-virtual {p0}, Lh/l;->c()Lh/fc;

    move-result-object v0

    invoke-virtual {p0}, Lh/l;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/l;->b:Ljava/util/Vector;

    iget-object v2, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lh/l;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, v1}, Lh/l;->a(I)Lh/fc;

    move-result-object v2

    invoke-virtual {v2}, Lh/fc;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
