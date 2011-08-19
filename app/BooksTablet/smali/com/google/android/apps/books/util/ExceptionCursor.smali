.class public Lcom/google/android/apps/books/util/ExceptionCursor;
.super Landroid/database/MatrixCursor;
.source "ExceptionCursor.java"


# instance fields
.field private mException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 14
    const-string v0, "missing exception"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lcom/google/android/apps/books/util/ExceptionCursor;->mException:Ljava/lang/Exception;

    .line 15
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/apps/books/util/ExceptionCursor;->mException:Ljava/lang/Exception;

    return-object v0
.end method
