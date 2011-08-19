.class public Lm/e;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lm/e;

.field private static final d:Lm/e;


# instance fields
.field private final a:Z

.field private final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lm/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lm/e;-><init>(ZLjava/io/File;)V

    sput-object v0, Lm/e;->c:Lm/e;

    new-instance v0, Lm/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lm/e;-><init>(ZLjava/io/File;)V

    sput-object v0, Lm/e;->d:Lm/e;

    return-void
.end method

.method private constructor <init>(ZLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm/e;->a:Z

    iput-object p2, p0, Lm/e;->b:Ljava/io/File;

    return-void
.end method

.method public static a()Lm/e;
    .locals 1

    sget-object v0, Lm/e;->d:Lm/e;

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lm/e;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lm/e;->c:Lm/e;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lm/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lm/e;-><init>(ZLjava/io/File;)V

    goto :goto_0
.end method

.method public static b()Lm/e;
    .locals 1

    sget-object v0, Lm/e;->c:Lm/e;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lm/e;->b:Ljava/io/File;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lm/e;->a:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lm/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lm/e;->b:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
