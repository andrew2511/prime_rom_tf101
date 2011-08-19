.class public final LaB;
.super Ljava/lang/Object;


# instance fields
.field private a:Lau;

.field private b:Ljava/util/Vector;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(IILau;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LaB;->c:I

    iput p2, p0, LaB;->d:I

    iput-object p3, p0, LaB;->a:Lau;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaB;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a()LaA;
    .locals 5

    iget-object v0, p0, LaB;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lau;

    iget-object v1, p0, LaB;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v1, LaA;

    iget v2, p0, LaB;->c:I

    iget v3, p0, LaB;->d:I

    iget-object v4, p0, LaB;->a:Lau;

    invoke-direct {v1, v2, v3, v4, v0}, LaA;-><init>(IILau;[Lau;)V

    return-object v1
.end method

.method public final a(Lau;)V
    .locals 1

    iget-object v0, p0, LaB;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
