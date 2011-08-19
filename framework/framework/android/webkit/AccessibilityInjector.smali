.class Landroid/webkit/AccessibilityInjector;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;
    }
.end annotation


# static fields
.field private static final ACTION_PERFORM_AXIS_TRANSITION:I = 0x3

.field private static final ACTION_SET_CURRENT_AXIS:I = 0x0

.field private static final ACTION_TRAVERSE_CURRENT_AXIS:I = 0x1

.field private static final ACTION_TRAVERSE_DEFAULT_WEB_VIEW_BEHAVIOR_AXIS:I = 0x4

.field private static final ACTION_TRAVERSE_GIVEN_AXIS:I = 0x2

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInjector"

.field private static final NAVIGATION_AXIS_DEFAULT_WEB_VIEW_BEHAVIOR:I = 0x7

.field private static sBindings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentAxis:I

.field private mIsLastSelectionStringNull:Z

.field private mLastDirection:I

.field private mLastDownEventHandled:Z

.field private final mScheduledEventStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/webkit/AccessibilityInjector;->sBindings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3
    .parameter "webView"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mScheduledEventStack:Ljava/util/Stack;

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    .line 106
    iput-object p1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    .line 107
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->ensureWebContentKeyBindings()V

    .line 108
    return-void
.end method

.method private ensureWebContentKeyBindings()V
    .registers 15

    .prologue
    .line 338
    sget-object v11, Landroid/webkit/AccessibilityInjector;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 373
    :cond_8
    return-void

    .line 342
    :cond_9
    iget-object v11, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_web_content_key_bindings"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, webContentKeyBindingsString:Ljava/lang/String;
    new-instance v9, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v11, 0x3b

    invoke-direct {v9, v11}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 347
    .local v9, semiColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v9, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 349
    :goto_23
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 350
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, bindingString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 352
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 356
    :cond_4c
    const-string v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, keyValueArray:[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x2

    if-eq v11, v12, :cond_6f

    .line 358
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 362
    :cond_6f
    const/4 v11, 0x0

    :try_start_70
    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 363
    .local v5, keyCodeAndModifiers:J
    const/4 v11, 0x1

    aget-object v11, v7, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, actionStrings:[Ljava/lang/String;
    array-length v11, v0

    new-array v1, v11, [I

    .line 365
    .local v1, actions:[I
    const/4 v4, 0x0

    .local v4, i:I
    array-length v3, v1

    .local v3, count:I
    :goto_8c
    if-ge v4, v3, :cond_a1

    .line 366
    aget-object v11, v0, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v1, v4

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 368
    :cond_a1
    sget-object v11, Landroid/webkit/AccessibilityInjector;->sBindings:Ljava/util/ArrayList;

    new-instance v12, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;

    invoke-direct {v12, v5, v6, v1}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;-><init>(J[I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_ab} :catch_ad

    goto/16 :goto_23

    .line 369
    .end local v0           #actionStrings:[Ljava/lang/String;
    .end local v1           #actions:[I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #keyCodeAndModifiers:J
    :catch_ad
    move-exception v11

    move-object v8, v11

    .line 370
    .local v8, nfe:Ljava/lang/NumberFormatException;
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23
.end method

.method private getPartialyPopulatedAccessibilityEvent()Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    .prologue
    .line 327
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 328
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 331
    return-object v0
.end method

.method private isEnterActionKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 376
    const/16 v0, 0x17

    if-eq p1, v0, :cond_c

    const/16 v0, 0x42

    if-eq p1, v0, :cond_c

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private prefromAxisTransition(IIZLjava/lang/String;)V
    .registers 6
    .parameter "fromAxis"
    .parameter "toAxis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    .line 234
    iget v0, p0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    if-ne v0, p1, :cond_7

    .line 235
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/AccessibilityInjector;->setCurrentAxis(IZLjava/lang/String;)V

    .line 237
    :cond_7
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 312
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 317
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 318
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 320
    :cond_2b
    return-void
.end method

.method private setCurrentAxis(IZLjava/lang/String;)V
    .registers 7
    .parameter "axis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    .line 215
    iput p1, p0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    .line 216
    if-eqz p2, :cond_19

    .line 217
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->getPartialyPopulatedAccessibilityEvent()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 218
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 220
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjector;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 222
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_19
    return-void
.end method

.method private traverseCurrentAxis(IZLjava/lang/String;)Z
    .registers 5
    .parameter "direction"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    .line 250
    iget v0, p0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/webkit/AccessibilityInjector;->traverseGivenAxis(IIZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private traverseGivenAxis(IIZLjava/lang/String;)Z
    .registers 9
    .parameter "direction"
    .parameter "axis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v2, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    .line 265
    .local v1, webViewCore:Landroid/webkit/WebViewCore;
    if-nez v1, :cond_b

    move v2, v3

    .line 284
    :goto_a
    return v2

    .line 269
    :cond_b
    const/4 v0, 0x0

    .line 270
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz p3, :cond_15

    .line 271
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->getPartialyPopulatedAccessibilityEvent()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 275
    :cond_15
    iget-object v2, p0, Landroid/webkit/AccessibilityInjector;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const/4 v2, 0x7

    if-ne p2, v2, :cond_1f

    move v2, v3

    .line 280
    goto :goto_a

    .line 283
    :cond_1f
    const/16 v2, 0xbe

    invoke-virtual {v1, v2, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 284
    const/4 v2, 0x1

    goto :goto_a
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 22
    .parameter "event"

    .prologue
    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/AccessibilityInjector;->isEnterActionKey(I)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 118
    const/16 v17, 0x0

    .line 203
    :goto_10
    return v17

    .line 121
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    .line 122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    move/from16 v17, v0

    goto :goto_10

    .line 125
    :cond_24
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    .line 127
    const/4 v7, 0x0

    .line 128
    .local v7, binding:Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;
    sget-object v17, Landroid/webkit/AccessibilityInjector;->sBindings:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_33
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;

    .line 129
    .local v8, candidate:Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    invoke-virtual {v8}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getKeyCode()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_33

    invoke-virtual {v8}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getModifiers()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v17

    if-eqz v17, :cond_33

    .line 131
    move-object v7, v8

    .line 136
    .end local v8           #candidate:Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;
    :cond_5c
    if-nez v7, :cond_61

    .line 137
    const/16 v17, 0x0

    goto :goto_10

    .line 140
    :cond_61
    const/4 v13, 0x0

    .local v13, i:I
    invoke-virtual {v7}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getActionCount()I

    move-result v10

    .local v10, count:I
    :goto_66
    if-ge v13, v10, :cond_1e5

    .line 141
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getActionCode(I)I

    move-result v5

    .line 142
    .local v5, actionCode:I
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getAction(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, contentDescription:Ljava/lang/String;
    packed-switch v5, :pswitch_data_1ee

    .line 199
    const-string v17, "AccessibilityInjector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown action code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_92
    add-int/lit8 v13, v13, 0x1

    goto :goto_66

    .line 145
    :pswitch_95
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v6

    .line 146
    .local v6, axis:I
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ba

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 147
    .local v15, sendEvent:Z
    :goto_a9
    move-object/from16 v0, p0

    move v1, v6

    move v2, v15

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/AccessibilityInjector;->setCurrentAxis(IZLjava/lang/String;)V

    .line 148
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto :goto_92

    .line 146
    .end local v15           #sendEvent:Z
    :cond_ba
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_a9

    .line 151
    .end local v6           #axis:I
    :pswitch_bf
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v11

    .line 153
    .local v11, direction:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_e2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e2

    .line 154
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    .line 155
    const/16 v17, 0x0

    goto/16 :goto_10

    .line 157
    :cond_e2
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    .line 158
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_107

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 159
    .restart local v15       #sendEvent:Z
    :goto_f7
    move-object/from16 v0, p0

    move v1, v11

    move v2, v15

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/AccessibilityInjector;->traverseCurrentAxis(IZLjava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto :goto_92

    .line 158
    .end local v15           #sendEvent:Z
    :cond_107
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_f7

    .line 163
    .end local v11           #direction:I
    :pswitch_10c
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v11

    .line 165
    .restart local v11       #direction:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_12f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12f

    .line 166
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    .line 167
    const/16 v17, 0x0

    goto/16 :goto_10

    .line 169
    :cond_12f
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    .line 170
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v6

    .line 171
    .restart local v6       #axis:I
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15b

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 172
    .restart local v15       #sendEvent:Z
    :goto_148
    move-object/from16 v0, p0

    move v1, v11

    move v2, v6

    move v3, v15

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/AccessibilityInjector;->traverseGivenAxis(IIZLjava/lang/String;)Z

    .line 173
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto/16 :goto_92

    .line 171
    .end local v15           #sendEvent:Z
    :cond_15b
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_148

    .line 176
    .end local v6           #axis:I
    .end local v11           #direction:I
    :pswitch_160
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v12

    .line 177
    .local v12, fromAxis:I
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v16

    .line 178
    .local v16, toAxis:I
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18c

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 179
    .restart local v15       #sendEvent:Z
    :goto_178
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v16

    move v3, v15

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/AccessibilityInjector;->prefromAxisTransition(IIZLjava/lang/String;)V

    .line 180
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto/16 :goto_92

    .line 178
    .end local v15           #sendEvent:Z
    :cond_18c
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_178

    .line 186
    .end local v12           #fromAxis:I
    .end local v16           #toAxis:I
    :pswitch_191
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1db

    .line 189
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    .line 190
    invoke-virtual {v7, v13}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d6

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 191
    .restart local v15       #sendEvent:Z
    :goto_1b9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move v3, v15

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/AccessibilityInjector;->traverseGivenAxis(IIZLjava/lang/String;)Z

    .line 193
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto/16 :goto_92

    .line 190
    .end local v15           #sendEvent:Z
    :cond_1d6
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_1b9

    .line 195
    :cond_1db
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto/16 :goto_92

    .line 203
    .end local v5           #actionCode:I
    .end local v9           #contentDescription:Ljava/lang/String;
    :cond_1e5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    move/from16 v17, v0

    goto/16 :goto_10

    .line 143
    nop

    :pswitch_data_1ee
    .packed-switch 0x0
        :pswitch_95
        :pswitch_bf
        :pswitch_10c
        :pswitch_160
        :pswitch_191
    .end packed-switch
.end method

.method public onSelectionStringChange(Ljava/lang/String;)V
    .registers 6
    .parameter "selectionString"

    .prologue
    .line 292
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selection string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-nez p1, :cond_26

    const/4 v1, 0x1

    :goto_1b
    iput-boolean v1, p0, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    .line 295
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 303
    :cond_25
    :goto_25
    return-void

    .line 294
    :cond_26
    const/4 v1, 0x0

    goto :goto_1b

    .line 298
    :cond_28
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 299
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_25

    .line 300
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjector;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_25
.end method
