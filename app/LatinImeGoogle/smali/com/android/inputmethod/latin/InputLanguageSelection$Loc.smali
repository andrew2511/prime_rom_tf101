.class Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;
.super Ljava/lang/Object;
.source "InputLanguageSelection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/InputLanguageSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private mLabel:Ljava/lang/String;

.field public final mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .parameter "label"
    .parameter "locale"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLabel:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLocale:Ljava/util/Locale;

    .line 53
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 66
    sget-object v0, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLabel:Ljava/lang/String;

    check-cast p1, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    .end local p1
    iget-object v2, p1, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLabel:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLabel:Ljava/lang/String;

    return-object v0
.end method
