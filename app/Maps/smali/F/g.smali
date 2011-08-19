.class public LF/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF/g;->a:I

    iput p2, p0, LF/g;->b:I

    if-ltz p3, :cond_0

    const/4 v0, 0x6

    if-lt p3, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, LF/g;->c:I

    return-void

    :cond_1
    move v0, p3

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LF/g;->c:I

    return v0
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, LF/g;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, LF/g;->b:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LF/g;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LF/g;->b:I

    return v0
.end method
