.class public LY/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, LY/c;->b:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, LY/c;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, LY/c;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LY/c;->b:I

    return v0
.end method
