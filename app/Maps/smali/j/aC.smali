.class final Lj/aC;
.super Lj/ab;


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;I)V
    .locals 0

    iput-object p2, p0, Lj/aC;->a:[Ljava/lang/Object;

    iput p3, p0, Lj/aC;->b:I

    invoke-direct {p0, p1}, Lj/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj/aC;->a:[Ljava/lang/Object;

    iget v1, p0, Lj/aC;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
