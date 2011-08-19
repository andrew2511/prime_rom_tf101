.class public Lcom/android/inputmethod/latin/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# static fields
.field private static final sInstance:Lcom/android/inputmethod/latin/AccessibilityUtils;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDescriptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/inputmethod/latin/AccessibilityUtils;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/AccessibilityUtils;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/AccessibilityUtils;->sInstance:Lcom/android/inputmethod/latin/AccessibilityUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private describeKey(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mDescriptions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/inputmethod/latin/AccessibilityUtils;->loadDescriptions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mDescriptions:Ljava/util/Map;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mDescriptions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/AccessibilityUtils;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/inputmethod/latin/AccessibilityUtils;->sInstance:Lcom/android/inputmethod/latin/AccessibilityUtils;

    return-object v0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "service"
    .parameter "prefs"

    .prologue
    .line 58
    sget-object v0, Lcom/android/inputmethod/latin/AccessibilityUtils;->sInstance:Lcom/android/inputmethod/latin/AccessibilityUtils;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/latin/AccessibilityUtils;->initialize(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 59
    return-void
.end method

.method private initialize(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "service"
    .parameter "prefs"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 74
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mDescriptions:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private loadDescriptions()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v3, descriptions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/CharSequence;>;"
    iget-object v5, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    .line 184
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 185
    .local v1, code:I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 187
    .local v2, desc:Ljava/lang/CharSequence;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 190
    .end local v1           #code:I
    .end local v2           #desc:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    return-object v3
.end method

.method private speakDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "description"

    .prologue
    .line 202
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 204
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 206
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 207
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 210
    return-void
.end method


# virtual methods
.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress(ILcom/android/inputmethod/keyboard/KeyboardSwitcher;)V
    .locals 2
    .parameter "primaryCode"
    .parameter "switcher"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AccessibilityUtils;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/AccessibilityUtils;->describeKey(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    .local v0, description:Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isDefined(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_2
    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/AccessibilityUtils;->speakDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onRelease(ILcom/android/inputmethod/keyboard/KeyboardSwitcher;)V
    .locals 2
    .parameter "primaryCode"
    .parameter "switcher"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/AccessibilityUtils;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v0, -0x1

    .line 105
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_1
    if-ltz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/inputmethod/latin/AccessibilityUtils;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/AccessibilityUtils;->speakDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const v0, 0x7f0c006e

    goto :goto_1

    .line 110
    :cond_2
    const v0, 0x7f0c006f

    .line 112
    goto :goto_1

    .line 116
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const v0, 0x7f0c006d

    goto :goto_1

    .line 119
    :cond_3
    const v0, 0x7f0c006c

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
