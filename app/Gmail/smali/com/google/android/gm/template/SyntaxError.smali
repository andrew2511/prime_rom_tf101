.class public Lcom/google/android/gm/template/SyntaxError;
.super Ljava/lang/RuntimeException;
.source "SyntaxError.java"


# instance fields
.field private final mColumn:I

.field private final mLine:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "s"
    .parameter "line"
    .parameter "column"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    iput p2, p0, Lcom/google/android/gm/template/SyntaxError;->mLine:I

    .line 16
    iput p3, p0, Lcom/google/android/gm/template/SyntaxError;->mColumn:I

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    const-string v0, "[line %d, column %d] %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gm/template/SyntaxError;->mLine:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gm/template/SyntaxError;->mColumn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gm/template/SyntaxError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
