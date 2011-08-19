.class public Lcom/android/inputmethod/keyboard/KeyStyles;
.super Ljava/lang/Object;
.source "KeyStyles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyStyles$1;,
        Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;,
        Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;,
        Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;
    }
.end annotation


# static fields
.field private static final EMPTY_KEY_STYLE:Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;


# instance fields
.field private final mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;-><init>(Lcom/android/inputmethod/keyboard/KeyStyles$1;)V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyStyles;->EMPTY_KEY_STYLE:Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles;->mStyles:Ljava/util/HashMap;

    .line 133
    return-void
.end method


# virtual methods
.method public getEmptyKeyStyle()Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyStyles;->EMPTY_KEY_STYLE:Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;

    return-object v0
.end method

.method public getKeyStyle(Ljava/lang/String;)Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;
    .locals 1
    .parameter "styleName"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;

    return-object p0
.end method

.method public parseKeyStyleAttributes(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)V
    .locals 7
    .parameter "keyStyleAttr"
    .parameter "keyAttrs"
    .parameter "parser"

    .prologue
    const/4 v5, 0x1

    .line 233
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, styleName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyStyles;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    new-instance v4, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "duplicate key style declared: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;-><init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    throw v4

    .line 239
    :cond_0
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;-><init>(Lcom/android/inputmethod/keyboard/KeyStyles$1;)V

    .line 240
    .local v2, style:Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, parentStyle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyStyles;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;

    .line 244
    .local v0, parent:Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;
    if-nez v0, :cond_1

    .line 245
    new-instance v4, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown parentStyle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;-><init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    throw v4

    .line 246
    :cond_1
    invoke-static {v2, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->access$200(Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;)V

    .line 248
    .end local v0           #parent:Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;
    .end local v1           #parentStyle:Ljava/lang/String;
    :cond_2
    invoke-static {v2, p2}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->access$300(Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;Landroid/content/res/TypedArray;)V

    .line 249
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyStyles;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method
