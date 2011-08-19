.class final Lcom/a/a/a/ae;
.super Lcom/a/a/a/bg;
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
    .line 1002
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/a/bg;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    .line 1007
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/a/a/a/ae;->a:J

    .line 1015
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/ae;->b:Lcom/a/a/a/ak;

    .line 1024
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/ae;->c:Lcom/a/a/a/ak;

    .line 1003
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1012
    iput-wide p1, p0, Lcom/a/a/a/ae;->a:J

    .line 1013
    return-void
.end method

.method public final a(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/a/a/a/ae;->b:Lcom/a/a/a/ak;

    .line 1022
    return-void
.end method

.method public final b()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/a/a/a/ae;->b:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final b(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/a/a/a/ae;->c:Lcom/a/a/a/ak;

    .line 1031
    return-void
.end method

.method public final c()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/a/a/a/ae;->c:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final c_()J
    .locals 2

    .prologue
    .line 1009
    iget-wide v0, p0, Lcom/a/a/a/ae;->a:J

    return-wide v0
.end method
