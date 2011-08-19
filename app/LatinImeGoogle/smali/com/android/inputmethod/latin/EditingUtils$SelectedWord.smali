.class public Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
.super Ljava/lang/Object;
.source "EditingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/EditingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedWord"
.end annotation


# instance fields
.field public final mEnd:I

.field public final mStart:I

.field public final mWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "word"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mStart:I

    .line 195
    iput p2, p0, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mEnd:I

    .line 196
    iput-object p3, p0, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    .line 197
    return-void
.end method
