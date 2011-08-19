.class Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

.field mCode:C

.field mFrequency:I

.field mNGrams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;",
            ">;"
        }
    .end annotation
.end field

.field mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

.field mTerminal:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;-><init>()V

    return-void
.end method
