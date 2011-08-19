.class Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;
.super Ljava/lang/Object;
.source "BinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/BinaryDictionary$Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlagEntry"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;->mName:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;->mValue:I

    .line 70
    return-void
.end method
