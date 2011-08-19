.class public final Lcom/zinio/mobile/android/view/dialogs/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 148
    invoke-static {}, Lcom/zinio/mobile/android/view/dialogs/s;->values()[Lcom/zinio/mobile/android/view/dialogs/s;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 149
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.zinio.mobile.android.tooltips"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v3}, Lcom/zinio/mobile/android/view/dialogs/o;->b(Lcom/zinio/mobile/android/view/dialogs/s;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 134
    invoke-static {}, Lcom/zinio/mobile/android/view/dialogs/s;->values()[Lcom/zinio/mobile/android/view/dialogs/s;

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 135
    invoke-static {v3}, Lcom/zinio/mobile/android/view/dialogs/o;->a(Lcom/zinio/mobile/android/view/dialogs/s;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 140
    :goto_1
    return v0

    .line 134
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 140
    goto :goto_1
.end method

.method public static a(Lcom/zinio/mobile/android/view/dialogs/s;)Z
    .locals 3
    .parameter

    .prologue
    .line 116
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 117
    const-string v1, "com.zinio.mobile.android.tooltips"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/o;->b(Lcom/zinio/mobile/android/view/dialogs/s;)Ljava/lang/String;

    move-result-object v1

    .line 122
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/zinio/mobile/android/view/dialogs/s;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v1

    .line 84
    iget-boolean v2, p0, Lcom/zinio/mobile/android/view/dialogs/s;->e:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method
