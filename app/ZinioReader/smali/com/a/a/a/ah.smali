.class final Lcom/a/a/a/ah;
.super Lcom/a/a/a/an;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/ak;
.implements Lcom/a/a/a/ba;


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

.field private d:Lcom/a/a/a/ba;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private e:Lcom/a/a/a/ba;
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
    .line 894
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/a/an;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    .line 899
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/a/a/a/ah;->a:J

    .line 907
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/ah;->b:Lcom/a/a/a/ak;

    .line 916
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/ah;->c:Lcom/a/a/a/ak;

    .line 927
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    iput-object v0, p0, Lcom/a/a/a/ah;->d:Lcom/a/a/a/ba;

    .line 936
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    iput-object v0, p0, Lcom/a/a/a/ah;->e:Lcom/a/a/a/ba;

    .line 895
    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/a/a/a/ah;->d:Lcom/a/a/a/ba;

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-wide p1, p0, Lcom/a/a/a/ah;->a:J

    .line 905
    return-void
.end method

.method public final a(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/a/a/a/ah;->b:Lcom/a/a/a/ak;

    .line 914
    return-void
.end method

.method public final a(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/a/a/a/ah;->d:Lcom/a/a/a/ba;

    .line 934
    return-void
.end method

.method public final b()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/a/a/a/ah;->b:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final b(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Lcom/a/a/a/ah;->c:Lcom/a/a/a/ak;

    .line 923
    return-void
.end method

.method public final b(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/a/a/a/ah;->e:Lcom/a/a/a/ba;

    .line 943
    return-void
.end method

.method public final c()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/a/a/a/ah;->c:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final c_()J
    .locals 2

    .prologue
    .line 901
    iget-wide v0, p0, Lcom/a/a/a/ah;->a:J

    return-wide v0
.end method

.method public final d_()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/a/a/a/ah;->e:Lcom/a/a/a/ba;

    return-object v0
.end method
