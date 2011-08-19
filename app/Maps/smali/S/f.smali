.class public LS/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:LS/c;

.field private final b:I


# direct methods
.method public constructor <init>(LS/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/f;->a:LS/c;

    iput p2, p0, LS/f;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LS/f;->b:I

    return v0
.end method

.method public a(LS/b;)LS/c;
    .locals 1

    iget-object v0, p0, LS/f;->a:LS/c;

    invoke-virtual {v0}, LS/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LS/f;->a:LS/c;

    invoke-virtual {p1, v0}, LS/b;->a(LS/c;)LS/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LS/f;->a:LS/c;

    goto :goto_0
.end method
