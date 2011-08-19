.class Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;
.super Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;
.source "KeyStyles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyStyles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredKeyStyle"
.end annotation


# instance fields
.field private final mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;-><init>(Lcom/android/inputmethod/keyboard/KeyStyles$1;)V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/KeyStyles$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->addParent(Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->parseKeyStyleAttributes(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private addParent(Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;)V
    .locals 2
    .parameter "parentStyle"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 228
    return-void
.end method

.method private parseKeyStyleAttributes(Landroid/content/res/TypedArray;)V
    .locals 1
    .parameter "keyAttr"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 179
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readText(Landroid/content/res/TypedArray;I)V

    .line 180
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readFlag(Landroid/content/res/TypedArray;I)V

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readTextArray(Landroid/content/res/TypedArray;I)V

    .line 182
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readInt(Landroid/content/res/TypedArray;I)V

    .line 183
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readText(Landroid/content/res/TypedArray;I)V

    .line 184
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readDrawable(Landroid/content/res/TypedArray;I)V

    .line 185
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readDrawable(Landroid/content/res/TypedArray;I)V

    .line 186
    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readDrawable(Landroid/content/res/TypedArray;I)V

    .line 187
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readDrawable(Landroid/content/res/TypedArray;I)V

    .line 188
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readBoolean(Landroid/content/res/TypedArray;I)V

    .line 189
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readBoolean(Landroid/content/res/TypedArray;I)V

    .line 190
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readBoolean(Landroid/content/res/TypedArray;I)V

    .line 191
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->readBoolean(Landroid/content/res/TypedArray;I)V

    .line 192
    return-void
.end method

.method private readBoolean(Landroid/content/res/TypedArray;I)V
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 216
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    return-void
.end method

.method private readDrawable(Landroid/content/res/TypedArray;I)V
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 195
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    return-void
.end method

.method private readFlag(Landroid/content/res/TypedArray;I)V
    .locals 5
    .parameter "a"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 211
    .local v0, value:Ljava/lang/Integer;
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_0
    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    return-void
.end method

.method private readInt(Landroid/content/res/TypedArray;I)V
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 205
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    return-void
.end method

.method private readText(Landroid/content/res/TypedArray;I)V
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 200
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    return-void
.end method

.method private readTextArray(Landroid/content/res/TypedArray;I)V
    .locals 3
    .parameter "a"
    .parameter "index"

    .prologue
    .line 221
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->parseTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 222
    .local v0, value:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public getBoolean(Landroid/content/res/TypedArray;IZ)Z
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 169
    .local v0, value:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    invoke-super {p0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v1

    return v1

    :cond_0
    move v1, p3

    goto :goto_0
.end method

.method public getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 144
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;->getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    goto :goto_0
.end method

.method public getFlag(Landroid/content/res/TypedArray;II)I
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 163
    .local v0, value:Ljava/lang/Integer;
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;->getFlag(Landroid/content/res/TypedArray;II)I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    or-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInt(Landroid/content/res/TypedArray;II)I
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 157
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-super {p0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v1

    return v1

    :cond_0
    move v1, p3

    goto :goto_0
.end method

.method public getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 150
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    move-object v0, p0

    goto :goto_0
.end method

.method public getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    .line 138
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyStyles$EmptyKeyStyle;->getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyStyles$DeclaredKeyStyle;->mAttributes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    check-cast p0, [Ljava/lang/CharSequence;

    move-object v0, p0

    goto :goto_0
.end method
