.class final Lcom/a/a/a/f;
.super Lcom/a/a/a/an;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/ak;


# instance fields
.field private volatile a:J

.field private b:Lcom/a/a/a/ak;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private c:Lcom/a/a/a/ak;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 830
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/a/an;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    .line 835
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/a/a/a/f;->a:J

    .line 843
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/ak;

    .line 852
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/f;->c:Lcom/a/a/a/ak;

    .line 831
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-wide p1, p0, Lcom/a/a/a/f;->a:J

    .line 841
    return-void
.end method

.method public final a(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/ak;

    .line 850
    return-void
.end method

.method public final b()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/a/a/a/f;->b:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final b(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/a/a/a/f;->c:Lcom/a/a/a/ak;

    .line 859
    return-void
.end method

.method public final c()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/a/a/a/f;->c:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final c_()J
    .locals 2

    .prologue
    .line 837
    iget-wide v0, p0, Lcom/a/a/a/f;->a:J

    return-wide v0
.end method
