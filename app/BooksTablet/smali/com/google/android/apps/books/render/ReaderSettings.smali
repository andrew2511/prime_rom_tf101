.class public Lcom/google/android/apps/books/render/ReaderSettings;
.super Ljava/lang/Object;
.source "ReaderSettings.java"


# instance fields
.field public final fontFamily:Ljava/lang/String;

.field public final fontSize:Ljava/lang/String;

.field public final isThemeNight:Z

.field public final lineHeight:Ljava/lang/String;

.field public final textAlign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v0, p1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->isThemeNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    .line 24
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getTypeface()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getFontSize()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontSize:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getLineHeight()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->lineHeight:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getTextAlign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "isThemeNight"
    .parameter "fontFamily"
    .parameter "fontSize"
    .parameter "lineHeight"
    .parameter "textAlign"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontSize:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/google/android/apps/books/render/ReaderSettings;->lineHeight:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 42
    instance-of v2, p1, Lcom/google/android/apps/books/render/ReaderSettings;

    if-nez v2, :cond_0

    move v2, v4

    .line 44
    :goto_0
    return v2

    .line 43
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/books/render/ReaderSettings;

    move-object v1, v0

    .line 44
    .local v1, compare:Lcom/google/android/apps/books/render/ReaderSettings;
    iget-boolean v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    iget-boolean v3, v1, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontSize:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/apps/books/render/ReaderSettings;->fontSize:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->lineHeight:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/apps/books/render/ReaderSettings;->lineHeight:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method
