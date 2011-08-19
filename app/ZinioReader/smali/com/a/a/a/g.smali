.class final Lcom/a/a/a/g;
.super Lcom/a/a/a/bg;
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
    .line 1066
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/a/bg;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    .line 1071
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/a/a/a/g;->a:J

    .line 1079
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/g;->b:Lcom/a/a/a/ak;

    .line 1088
    sget-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    iput-object v0, p0, Lcom/a/a/a/g;->c:Lcom/a/a/a/ak;

    .line 1099
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    iput-object v0, p0, Lcom/a/a/a/g;->d:Lcom/a/a/a/ba;

    .line 1108
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    iput-object v0, p0, Lcom/a/a/a/g;->e:Lcom/a/a/a/ba;

    .line 1067
    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/a/a/a/g;->d:Lcom/a/a/a/ba;

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1076
    iput-wide p1, p0, Lcom/a/a/a/g;->a:J

    .line 1077
    return-void
.end method

.method public final a(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/a/a/a/g;->b:Lcom/a/a/a/ak;

    .line 1086
    return-void
.end method

.method public final a(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/a/a/a/g;->d:Lcom/a/a/a/ba;

    .line 1106
    return-void
.end method

.method public final b()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/a/a/a/g;->b:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final b(Lcom/a/a/a/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/a/a/a/g;->c:Lcom/a/a/a/ak;

    .line 1095
    return-void
.end method

.method public final b(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/a/a/a/g;->e:Lcom/a/a/a/ba;

    .line 1115
    return-void
.end method

.method public final c()Lcom/a/a/a/ak;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/a/a/a/g;->c:Lcom/a/a/a/ak;

    return-object v0
.end method

.method public final c_()J
    .locals 2

    .prologue
    .line 1073
    iget-wide v0, p0, Lcom/a/a/a/g;->a:J

    return-wide v0
.end method

.method public final d_()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/a/a/a/g;->e:Lcom/a/a/a/ba;

    return-object v0
.end method
