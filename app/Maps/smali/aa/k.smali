.class Laa/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laa/k;->a:I

    iput p2, p0, Laa/k;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Laa/k;->a:I

    return v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Laa/k;->b:I

    return v0
.end method
