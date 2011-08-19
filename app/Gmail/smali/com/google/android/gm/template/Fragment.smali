.class public Lcom/google/android/gm/template/Fragment;
.super Lcom/google/android/gm/template/Node;
.source "Fragment.java"


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/gm/template/Node;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/gm/template/Fragment;->mText:Ljava/lang/String;

    .line 20
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
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/template/Fragment;->mText:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 25
    return-void
.end method
