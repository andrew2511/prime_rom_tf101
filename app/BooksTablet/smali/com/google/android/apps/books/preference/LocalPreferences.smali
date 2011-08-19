.class public Lcom/google/android/apps/books/preference/LocalPreferences;
.super Ljava/lang/Object;
.source "LocalPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/preference/LocalPreferences$VolumeSortOrder;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Justification;,
        Lcom/google/android/apps/books/preference/LocalPreferences$LineHeight;,
        Lcom/google/android/apps/books/preference/LocalPreferences$TextSize;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Themes;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Typeface;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Brightness;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Keys;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalPreferences"


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mResources:Landroid/content/res/Resources;

    .line 117
    return-void
.end method

.method public static isAccountKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    const-string v0, "account"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public applyMissingDefaults()V
    .locals 8

    .prologue
    const-string v7, "textSize"

    const-string v6, "lineHeight"

    const-string v5, "justification"

    const-string v4, "brightness"

    const-string v3, "0"

    .line 151
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "brightness"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const-string v1, "brightness"

    const/4 v1, -0x1

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "themes"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    const-string v1, "themes"

    const-string v2, "0"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "typeface"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    const-string v1, "typeface"

    const-string v2, "serif"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "textSize"

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 163
    const-string v1, "textSize"

    const-string v1, "0"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "lineHeight"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 166
    const-string v1, "lineHeight"

    const-string v1, "1"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "justification"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 169
    const-string v1, "justification"

    const-string v1, "left"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 121
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBrightness()I
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "brightness"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFontSize()Ljava/lang/String;
    .locals 7

    .prologue
    const v5, 0x7f0b0004

    const-string v6, "0"

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mResources:Landroid/content/res/Resources;

    .line 190
    .local v0, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "textSize"

    const-string v4, "0"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, textSize:Ljava/lang/String;
    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const v2, 0x7f0b0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    :goto_0
    return-object v2

    .line 193
    :cond_0
    const-string v2, "0"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 195
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    const v2, 0x7f0b0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 197
    :cond_2
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 200
    :cond_3
    const-string v2, "LocalPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown textSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getFrontend()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "db_frontend"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineHeight()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0b0001

    .line 206
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mResources:Landroid/content/res/Resources;

    .line 207
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "lineHeight"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, lineHeight:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    :goto_0
    return-object v2

    .line 210
    :cond_0
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 212
    :cond_1
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 215
    :cond_2
    const-string v2, "LocalPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown lineHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getTextAlign()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "justification"

    const-string v2, "left"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "typeface"

    const-string v2, "serif"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeSortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "volumeSortOrder"

    const-string v2, "date"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isThemeNight()Z
    .locals 4

    .prologue
    .line 181
    const-string v0, "1"

    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "themes"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    const-string v2, "account"

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 132
    const-string v1, "account"

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void

    .line 134
    :cond_0
    const-string v1, "account"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setFrontend(Ljava/lang/String;)V
    .locals 2
    .parameter "frontend"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_frontend"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public setVolumeSortOrder(Ljava/lang/String;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "volumeSortOrder"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    return-void
.end method
