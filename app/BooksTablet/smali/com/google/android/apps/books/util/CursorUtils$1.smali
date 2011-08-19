.class final Lcom/google/android/apps/books/util/CursorUtils$1;
.super Ljava/lang/Object;
.source "CursorUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/util/CursorUtils;->moveToNextStringValueLocked(Landroid/database/Cursor;IILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$startPosition:I

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/Cursor;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/apps/books/util/CursorUtils$1;->val$cursor:Landroid/database/Cursor;

    iput p2, p0, Lcom/google/android/apps/books/util/CursorUtils$1;->val$startPosition:I

    iput-object p3, p0, Lcom/google/android/apps/books/util/CursorUtils$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/CursorUtils$1;->apply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/String;)Z
    .locals 2
    .parameter "cursorValue"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/util/CursorUtils$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/books/util/CursorUtils$1;->val$startPosition:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/util/CursorUtils$1;->val$value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
