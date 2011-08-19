.class LA/l;
.super Ljava/lang/Object;

# interfaces
.implements LA/i;


# instance fields
.field final synthetic a:LA/c;


# direct methods
.method constructor <init>(LA/c;)V
    .locals 0

    iput-object p1, p0, LA/l;->a:LA/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, LA/c;

    iget v0, p2, LA/c;->b:I

    check-cast p1, LA/c;

    iget v1, p1, LA/c;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
