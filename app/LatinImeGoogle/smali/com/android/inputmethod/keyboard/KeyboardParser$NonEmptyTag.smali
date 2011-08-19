.class Lcom/android/inputmethod/keyboard/KeyboardParser$NonEmptyTag;
.super Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;
.source "KeyboardParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonEmptyTag"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V
    .locals 2
    .parameter "tag"
    .parameter "parser"

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must be empty tag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;-><init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    .line 618
    return-void
.end method
