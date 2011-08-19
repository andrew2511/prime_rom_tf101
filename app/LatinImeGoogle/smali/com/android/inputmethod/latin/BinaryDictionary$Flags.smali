.class Lcom/android/inputmethod/latin/BinaryDictionary$Flags;
.super Ljava/lang/Object;
.source "BinaryDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/BinaryDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;
    }
.end annotation


# static fields
.field public static final ALL_FLAGS:[Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    new-array v0, v4, [Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;

    const-string v3, "requiresGermanUmlautProcessing"

    invoke-direct {v2, v3, v4}, Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionary$Flags;->ALL_FLAGS:[Lcom/android/inputmethod/latin/BinaryDictionary$Flags$FlagEntry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method
