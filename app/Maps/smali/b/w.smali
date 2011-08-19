.class public Lb/w;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lb/p;

.field private final b:Lb/k;

.field private final c:I

.field private final d:Z


# direct methods
.method private constructor <init>(Lb/p;Lb/k;IZ)V
    .locals 0

    iput-object p1, p0, Lb/w;->a:Lb/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/w;->b:Lb/k;

    iput p3, p0, Lb/w;->c:I

    iput-boolean p4, p0, Lb/w;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lb/p;Lb/k;IZLb/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lb/w;-><init>(Lb/p;Lb/k;IZ)V

    return-void
.end method

.method private a()Lb/k;
    .locals 1

    iget-object v0, p0, Lb/w;->b:Lb/k;

    return-object v0
.end method

.method static synthetic a(Lb/w;)Lb/k;
    .locals 1

    invoke-direct {p0}, Lb/w;->a()Lb/k;

    move-result-object v0

    return-object v0
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lb/w;->c:I

    return v0
.end method

.method static synthetic b(Lb/w;)I
    .locals 1

    invoke-direct {p0}, Lb/w;->b()I

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lb/w;->d:Z

    return v0
.end method

.method static synthetic c(Lb/w;)Z
    .locals 1

    invoke-direct {p0}, Lb/w;->c()Z

    move-result v0

    return v0
.end method
