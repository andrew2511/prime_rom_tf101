.class public Lcom/google/googlenav/bt;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bt;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/googlenav/bt;->b:I

    iput p3, p0, Lcom/google/googlenav/bt;->c:I

    iput-object p4, p0, Lcom/google/googlenav/bt;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/googlenav/bt;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bt;->d:Ljava/lang/String;

    return-object v0
.end method
