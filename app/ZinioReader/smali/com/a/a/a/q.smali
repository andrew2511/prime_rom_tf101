.class final enum Lcom/a/a/a/q;
.super Lcom/a/a/a/av;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 440
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/a/a/a/av;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method final a(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)Lcom/a/a/a/bj;
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
    .line 444
    new-instance v0, Lcom/a/a/a/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/a/a/a/b;-><init>(Lcom/a/a/a/aq;Ljava/lang/Object;ILcom/a/a/a/bj;)V

    return-object v0
.end method
