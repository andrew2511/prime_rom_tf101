.class public Lcom/google/android/gm/template/Literal;
.super Lcom/google/android/gm/template/Command;
.source "Literal.java"


# static fields
.field public static final LB:Lcom/google/android/gm/template/Literal;

.field public static final RB:Lcom/google/android/gm/template/Literal;


# instance fields
.field private final mFragment:Lcom/google/android/gm/template/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gm/template/Literal;

    new-instance v1, Lcom/google/android/gm/template/Fragment;

    const-string v2, "{"

    invoke-direct {v1, v2}, Lcom/google/android/gm/template/Fragment;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gm/template/Literal;-><init>(Lcom/google/android/gm/template/Fragment;)V

    sput-object v0, Lcom/google/android/gm/template/Literal;->LB:Lcom/google/android/gm/template/Literal;

    .line 20
    new-instance v0, Lcom/google/android/gm/template/Literal;

    new-instance v1, Lcom/google/android/gm/template/Fragment;

    const-string v2, "}"

    invoke-direct {v1, v2}, Lcom/google/android/gm/template/Fragment;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gm/template/Literal;-><init>(Lcom/google/android/gm/template/Fragment;)V

    sput-object v0, Lcom/google/android/gm/template/Literal;->RB:Lcom/google/android/gm/template/Literal;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/template/Fragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gm/template/Command;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/gm/template/Literal;->mFragment:Lcom/google/android/gm/template/Fragment;

    .line 29
    return-void
.end method


# virtual methods
.method public writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 1
    .parameter "out"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gm/template/Literal;->mFragment:Lcom/google/android/gm/template/Fragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/template/Fragment;->writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 34
    return-void
.end method
