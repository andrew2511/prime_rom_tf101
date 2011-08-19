.class public LaO/c;
.super Lak/m;


# static fields
.field private static d:Z

.field private static final e:Ljava/util/Hashtable;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, LaO/c;->e:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, LaO/c;->b:Ljava/lang/String;

    iput p2, p0, LaO/c;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LaO/c;->c:J

    return-void
.end method

.method private static a(J)Law/e;
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/b;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    invoke-static {}, Lcom/google/googlenav/ui/aM;->a()I

    move-result v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p0, v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 3

    invoke-static {p0, p1}, LaO/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LaO/c;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, LaO/c;

    invoke-direct {v1, p0, p1}, LaO/c;-><init>(Ljava/lang/String;I)V

    sget-boolean v2, LaO/c;->d:Z

    if-nez v2, :cond_1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lak/h;->c(Lak/d;)V

    :cond_1
    sget-object v1, LaO/c;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x45

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/H;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget v2, p0, LaO/c;->a:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x1

    iget-object v2, p0, LaO/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, LaO/c;->a(J)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    invoke-static {p1, v0}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Ls/H;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    const/4 v0, 0x1

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
