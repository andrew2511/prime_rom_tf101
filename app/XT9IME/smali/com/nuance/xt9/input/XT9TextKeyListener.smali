.class public Lcom/nuance/xt9/input/XT9TextKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "XT9TextKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/XT9TextKeyListener$1;,
        Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;,
        Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;
    }
.end annotation


# static fields
.field static final ACTIVE:Ljava/lang/Object; = null

.field static final AUTO_CAP:I = 0x1

.field static final AUTO_PERIOD:I = 0x4

.field static final AUTO_TEXT:I = 0x2

.field static final CAPPED:Ljava/lang/Object; = null

.field static final INHIBIT_REPLACEMENT:Ljava/lang/Object; = null

.field static final LAST_TYPED:Ljava/lang/Object; = null

.field static final SHOW_PASSWORD:I = 0x8

.field private static sInstance:[Lcom/nuance/xt9/input/XT9TextKeyListener;

.field private static sKmap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mObserver:Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;

.field private mPrefs:I

.field private mPrefsInited:Z

.field private mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/nuance/xt9/input/XT9TextKeyListener;

    sput-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener;->sInstance:[Lcom/nuance/xt9/input/XT9TextKeyListener;

    .line 38
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener;->CAPPED:Ljava/lang/Object;

    .line 40
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 41
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .parameter "cap"
    .parameter "autotext"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 67
    iput-boolean p2, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mAutoText:Z

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/XT9TextKeyListener;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/xt9/input/XT9TextKeyListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mPrefsInited:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/XT9TextKeyListener;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/XT9TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static clear(Landroid/text/Editable;)V
    .locals 6
    .parameter "e"

    .prologue
    .line 184
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    .line 185
    sget-object v3, Lcom/nuance/xt9/input/XT9TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 186
    sget-object v3, Lcom/nuance/xt9/input/XT9TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 187
    sget-object v3, Lcom/nuance/xt9/input/XT9TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 188
    sget-object v3, Lcom/nuance/xt9/input/XT9TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 190
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;

    .line 192
    .local v2, repl:[Lcom/nuance/xt9/input/XT9QwertyKeyListener$Replaced;
    array-length v0, v2

    .line 193
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 194
    aget-object v3, v2, v1

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/nuance/xt9/input/XT9TextKeyListener;
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/XT9TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Lcom/nuance/xt9/input/XT9TextKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Lcom/nuance/xt9/input/XT9TextKeyListener;
    .locals 3
    .parameter "autotext"
    .parameter "cap"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    add-int v0, v1, v2

    .line 81
    .local v0, off:I
    sget-object v1, Lcom/nuance/xt9/input/XT9TextKeyListener;->sInstance:[Lcom/nuance/xt9/input/XT9TextKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 82
    sget-object v1, Lcom/nuance/xt9/input/XT9TextKeyListener;->sInstance:[Lcom/nuance/xt9/input/XT9TextKeyListener;

    new-instance v2, Lcom/nuance/xt9/input/XT9TextKeyListener;

    invoke-direct {v2, p1, p0}, Lcom/nuance/xt9/input/XT9TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 85
    :cond_0
    sget-object v1, Lcom/nuance/xt9/input/XT9TextKeyListener;->sInstance:[Lcom/nuance/xt9/input/XT9TextKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 79
    .end local v0           #off:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;
    .locals 4
    .parameter "event"

    .prologue
    .line 209
    sget-object v1, Lcom/nuance/xt9/input/XT9TextKeyListener;->sKmap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    .line 210
    .local v1, kmap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;
    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9KeyCharacterMap;->getKeyboardType()I

    move-result v0

    .line 212
    .local v0, kind:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 213
    iget-boolean v2, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mAutoText:Z

    iget-object v3, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v3}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    move-result-object v2

    .line 225
    .end local v0           #kind:I
    :goto_0
    return-object v2

    .line 214
    .restart local v0       #kind:I
    :cond_0
    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 221
    :cond_1
    invoke-static {}, Lcom/nuance/xt9/input/XT9QwertyKeyListener;->getInstanceForFullKeyboard()Lcom/nuance/xt9/input/XT9QwertyKeyListener;

    move-result-object v2

    goto :goto_0

    .line 225
    .end local v0           #kind:I
    :cond_2
    invoke-static {}, Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;->getInstance()Lcom/nuance/xt9/input/XT9TextKeyListener$NullKeyListener;

    move-result-object v2

    goto :goto_0
.end method

.method public static getXT9KeyCharacterMap()Lcom/nuance/xt9/input/XT9KeyCharacterMap;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener;->sKmap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    return-object v0
.end method

.method private initPrefs(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    .line 278
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mObserver:Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;-><init>(Lcom/nuance/xt9/input/XT9TextKeyListener;)V

    iput-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mObserver:Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;

    .line 280
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mObserver:Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 283
    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/XT9TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    .line 284
    iput-boolean v3, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mPrefsInited:Z

    .line 285
    return-void
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .parameter "caps"
    .parameter "autoText"

    .prologue
    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, contentType:I
    sget-object v1, Lcom/nuance/xt9/input/XT9TextKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 135
    :goto_0
    if-eqz p1, :cond_0

    .line 136
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 138
    :cond_0
    return v0

    .line 126
    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    .line 127
    goto :goto_0

    .line 129
    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    .line 130
    goto :goto_0

    .line 132
    :pswitch_2
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setXT9KeyCharacterMap(Lcom/nuance/xt9/input/XT9KeyCharacterMap;)V
    .locals 0
    .parameter "kmap"

    .prologue
    .line 146
    sput-object p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->sKmap:Lcom/nuance/xt9/input/XT9KeyCharacterMap;

    .line 147
    return-void
.end method

.method public static shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z
    .locals 3
    .parameter "cap"
    .parameter "cs"
    .parameter "off"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_0

    move v0, v1

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_1

    move v0, v2

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_2

    const/16 v0, 0x2000

    :goto_1
    invoke-static {p1, p2, v0}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x4000

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private updatePrefs(Landroid/content/ContentResolver;)V
    .locals 7
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 308
    const-string v4, "auto_caps"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    move v0, v5

    .line 309
    .local v0, cap:Z
    :goto_0
    const-string v4, "auto_replace"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v3, v5

    .line 310
    .local v3, text:Z
    :goto_1
    const-string v4, "auto_punctuate"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    move v1, v5

    .line 311
    .local v1, period:Z
    :goto_2
    const-string v4, "show_password"

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3

    move v2, v5

    .line 313
    .local v2, pw:Z
    :goto_3
    if-eqz v0, :cond_4

    move v4, v5

    :goto_4
    if-eqz v3, :cond_5

    const/4 v5, 0x2

    :goto_5
    or-int/2addr v4, v5

    if-eqz v1, :cond_6

    const/4 v5, 0x4

    :goto_6
    or-int/2addr v4, v5

    if-eqz v2, :cond_7

    const/16 v5, 0x8

    :goto_7
    or-int/2addr v4, v5

    iput v4, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mPrefs:I

    .line 317
    return-void

    .end local v0           #cap:Z
    .end local v1           #period:Z
    .end local v2           #pw:Z
    .end local v3           #text:Z
    :cond_0
    move v0, v6

    .line 308
    goto :goto_0

    .restart local v0       #cap:Z
    :cond_1
    move v3, v6

    .line 309
    goto :goto_1

    .restart local v3       #text:Z
    :cond_2
    move v1, v6

    .line 310
    goto :goto_2

    .restart local v1       #period:Z
    :cond_3
    move v2, v6

    .line 311
    goto :goto_3

    .restart local v2       #pw:Z
    :cond_4
    move v4, v6

    .line 313
    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_5

    :cond_6
    move v5, v6

    goto :goto_6

    :cond_7
    move v5, v6

    goto :goto_7
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/XT9TextKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method getPrefs(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mPrefsInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/XT9TextKeyListener;->initPrefs(Landroid/content/Context;)V

    .line 324
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget v0, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mPrefs:I

    return v0

    .line 324
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 156
    invoke-direct {p0, p4}, Lcom/nuance/xt9/input/XT9TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 158
    .local v0, im:Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "event"

    .prologue
    .line 171
    invoke-direct {p0, p3}, Lcom/nuance/xt9/input/XT9TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 173
    .local v0, im:Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 164
    invoke-direct {p0, p4}, Lcom/nuance/xt9/input/XT9TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 166
    .local v0, im:Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "s"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 198
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1
    .parameter "s"
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 203
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 204
    sget-object v0, Lcom/nuance/xt9/input/XT9TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "s"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 199
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 265
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mObserver:Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    iget-object v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 269
    :cond_0
    iput-object v2, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mObserver:Lcom/nuance/xt9/input/XT9TextKeyListener$SettingsObserver;

    .line 270
    iput-object v2, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/xt9/input/XT9TextKeyListener;->mPrefsInited:Z

    .line 273
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method
