.class public abstract Lcom/nuance/xt9/input/Input;
.super Ljava/lang/Object;
.source "Input.java"


# static fields
.field private static mNativeLibLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v1, 0x0

    sput-boolean v1, Lcom/nuance/xt9/input/Input;->mNativeLibLoaded:Z

    .line 21
    :try_start_0
    sget-boolean v1, Lcom/nuance/xt9/input/Input;->mNativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 24
    :try_start_1
    const-string v1, "/data/data/com.nuance.xt9.input/lib/libjni_xt9input.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 25
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nuance/xt9/input/Input;->mNativeLibLoaded:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 29
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    const-string v1, "jni_xt9input"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nuance/xt9/input/Input;->mNativeLibLoaded:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 33
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 34
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "AlphaInput"

    const-string v2, "Could not load native library jni_xt9input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllKeys()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public clearKey()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public create()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyPositions(ILjava/util/ArrayList;)Z
    .locals 1
    .parameter "kdbId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/xt9/input/Int;Z)Ljava/util/List;
    .locals 1
    .parameter "defaultWord"
    .parameter "defaultWordIndex"
    .parameter "isUDBSubstitutionField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Lcom/nuance/xt9/input/Int;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public initTrace(III)V
    .locals 0
    .parameter "kdbId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    return-void
.end method

.method public isAutoSpaceBeforeTrace(ILjava/util/ArrayList;)I
    .locals 1
    .parameter "kdbId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public processKey(III)Z
    .locals 1
    .parameter "kdbId"
    .parameter "key"
    .parameter "shiftState"

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public processTrace(ILjava/util/ArrayList;I)Z
    .locals 1
    .parameter "kdbId"
    .parameter
    .parameter "shiftState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, trace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setAttribute(II)Z
    .locals 1
    .parameter "id"
    .parameter "value"

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public setLanguage(I)Z
    .locals 1
    .parameter "languageID"

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
