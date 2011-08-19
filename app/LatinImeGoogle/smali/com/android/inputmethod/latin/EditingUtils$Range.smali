.class public Lcom/android/inputmethod/latin/EditingUtils$Range;
.super Ljava/lang/Object;
.source "EditingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/EditingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public final mCharsAfter:I

.field public final mCharsBefore:I

.field public final mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "charsBefore"
    .parameter "charsAfter"
    .parameter "word"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 127
    :cond_1
    iput p1, p0, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsBefore:I

    .line 128
    iput p2, p0, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsAfter:I

    .line 129
    iput-object p3, p0, Lcom/android/inputmethod/latin/EditingUtils$Range;->mWord:Ljava/lang/String;

    .line 130
    return-void
.end method
