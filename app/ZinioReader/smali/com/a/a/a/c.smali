.class final Lcom/a/a/a/c;
.super Lcom/a/a/a/bg;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/ba;


# instance fields
.field private a:Lcom/a/a/a/ba;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private b:Lcom/a/a/a/ba;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V
    .locals 1
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
    .line 1038
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/a/bg;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    .line 1043
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    iput-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/ba;

    .line 1052
    sget-object v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/d;

    iput-object v0, p0, Lcom/a/a/a/c;->b:Lcom/a/a/a/ba;

    .line 1039
    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/ba;

    return-object v0
.end method

.method public final a(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/ba;

    .line 1050
    return-void
.end method

.method public final b(Lcom/a/a/a/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/a/a/a/c;->b:Lcom/a/a/a/ba;

    .line 1059
    return-void
.end method

.method public final d_()Lcom/a/a/a/ba;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/a/a/a/c;->b:Lcom/a/a/a/ba;

    return-object v0
.end method
