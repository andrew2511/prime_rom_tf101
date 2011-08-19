.class public Lcom/android/inputmethod/latin/SubtypeLocale;
.super Ljava/lang/Object;
.source "SubtypeLocale.java"


# static fields
.field private static sExceptionKeys:[Ljava/lang/String;

.field private static sExceptionValues:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getFullDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, localeCode:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v2, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 41
    sget-object v2, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    sget-object v2, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 44
    :goto_1
    return-object v2

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionKeys:[Ljava/lang/String;

    .line 35
    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/latin/SubtypeLocale;->sExceptionValues:[Ljava/lang/String;

    .line 36
    return-void
.end method
