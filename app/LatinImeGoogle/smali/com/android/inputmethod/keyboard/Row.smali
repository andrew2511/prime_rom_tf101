.class public Lcom/android/inputmethod/keyboard/Row;
.super Ljava/lang/Object;
.source "Row.java"


# instance fields
.field public final mDefaultHeight:I

.field public final mDefaultHorizontalGap:I

.field public final mDefaultWidth:I

.field private final mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field public final mRowEdgeFlags:I

.field public final mVerticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 6
    .parameter "res"
    .parameter "keyboard"
    .parameter "parser"

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/Row;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 50
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->getDisplayWidth()I

    move-result v2

    .line 51
    .local v2, keyboardWidth:I
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->getKeyboardHeight()I

    move-result v1

    .line 52
    .local v1, keyboardHeight:I
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->getKeyWidth()I

    move-result v4

    invoke-static {v0, v3, v2, v4}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/Row;->mDefaultWidth:I

    .line 56
    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->getRowHeight()I

    move-result v4

    invoke-static {v0, v3, v1, v4}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/Row;->mDefaultHeight:I

    .line 58
    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->getHorizontalGap()I

    move-result v4

    invoke-static {v0, v3, v2, v4}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/Row;->mDefaultHorizontalGap:I

    .line 60
    const/4 v3, 0x5

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->getVerticalGap()I

    move-result v4

    invoke-static {v0, v3, v1, v4}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/Row;->mVerticalGap:I

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Row:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/Row;->mRowEdgeFlags:I

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method public getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Row;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    return-object v0
.end method
