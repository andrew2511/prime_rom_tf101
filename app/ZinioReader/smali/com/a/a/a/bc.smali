.class final Lcom/a/a/a/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/ak;


# instance fields
.field private a:Lcom/a/a/a/ak;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private b:Lcom/a/a/a/ak;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private synthetic c:Lcom/a/a/a/h;


# direct methods
.method constructor <init>(Lcom/a/a/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/a/a/a/bc;->c:Lcom/a/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1650
    iput-object p0, p0, Lcom/a/a/a/bc;->a:Lcom/a/a/a/ak;

    .line 1659
    iput-object p0, p0, Lcom/a/a/a/bc;->b:Lcom/a/a/a/ak;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1648
    return-void
.end method

.method public final a(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/a/a/a/bc;->a:Lcom/a/a/a/ak;

    .line 1657
    return-void
.end method

.method public final b()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/a/a/a/bc;->a:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final b(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/a/a/a/bc;->b:Lcom/a/a/a/ak;

    .line 1666
    return-void
.end method

.method public final c()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/a/a/a/bc;->b:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final c_()J
    .locals 2

    .prologue
    .line 1646
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method
