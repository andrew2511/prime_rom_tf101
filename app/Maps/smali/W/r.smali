.class public LW/r;
.super LW/o;


# static fields
.field public static final j:LW/f;


# instance fields
.field public final h:I

.field public final i:LW/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW/s;

    invoke-direct {v0}, LW/s;-><init>()V

    sput-object v0, LW/r;->j:LW/f;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    const/16 v4, 0x55

    const v5, 0x9c40

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, LW/r;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, LW/o;-><init>(IIII)V

    iput p5, p0, LW/r;->h:I

    invoke-virtual {p0, p4}, LW/r;->a(I)LW/j;

    move-result-object v0

    iput-object v0, p0, LW/r;->i:LW/j;

    return-void
.end method

.method public static a(Ljava/io/PrintWriter;LW/r;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0, p1}, LW/o;->a(Ljava/io/PrintWriter;LW/o;)V

    const-string v0, ", Uncert="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, LW/r;->h:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "mm, "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, LW/r;->i:LW/j;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;LW/r;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, LW/o;->a(Ljava/lang/StringBuilder;LW/o;)V

    const-string v0, ", Uncert="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LW/r;->h:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mm, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, LW/r;->i:LW/j;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected a(I)LW/j;
    .locals 1

    const/16 v0, 0x50

    if-lt p1, v0, :cond_0

    const/16 v0, 0x54

    if-gt p1, v0, :cond_0

    sget-object v0, LW/j;->b:LW/j;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x55

    if-lt p1, v0, :cond_1

    const/16 v0, 0x59

    if-gt p1, v0, :cond_1

    sget-object v0, LW/j;->c:LW/j;

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5e

    if-gt p1, v0, :cond_2

    sget-object v0, LW/j;->d:LW/j;

    goto :goto_0

    :cond_2
    sget-object v0, LW/j;->a:LW/j;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiApPosition ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, LW/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalUncertaintyMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LW/r;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LW/r;->i:LW/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
