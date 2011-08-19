.class public Lh/dF;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lh/a;

.field private e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lh/a;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh/dF;->e:I

    iput p1, p0, Lh/dF;->a:I

    iput-object p2, p0, Lh/dF;->b:Ljava/lang/String;

    iput-object p3, p0, Lh/dF;->c:Ljava/lang/String;

    iput-object p4, p0, Lh/dF;->d:Lh/a;

    iput p5, p0, Lh/dF;->e:I

    return-void
.end method

.method static synthetic a(Lh/dF;)Lh/a;
    .locals 1

    iget-object v0, p0, Lh/dF;->d:Lh/a;

    return-object v0
.end method

.method static synthetic b(Lh/dF;)I
    .locals 1

    iget v0, p0, Lh/dF;->e:I

    return v0
.end method

.method static synthetic c(Lh/dF;)I
    .locals 1

    iget v0, p0, Lh/dF;->a:I

    return v0
.end method

.method static synthetic d(Lh/dF;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/dF;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lh/dF;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/dF;->c:Ljava/lang/String;

    return-object v0
.end method
